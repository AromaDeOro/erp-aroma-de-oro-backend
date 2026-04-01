import {
  Venta,
  Producto,
  Persona,
  Usuario,
  Caja,
  Movimiento,
  CuentasPorCobrar,
  sq,
} from '../../libs/db.js'

/**
 * FUNCIÓN DE CONVERSIÓN UNIVERSAL (Aroma de Oro Edition)
 * Utiliza libras como unidad base para el cálculo intermedio.
 */
const convertirUnidades = (cantidad, unidadOrigen, unidadDestino) => {
  const valor = parseFloat(cantidad) || 0
  if (unidadOrigen === unidadDestino) return valor

  let libras = 0
  // PASO 1: Convertir la entrada a Libras
  switch (unidadOrigen) {
    case 'Libras':
      libras = valor
      break
    case 'Quintales':
      libras = valor * 100
      break
    case 'Kilogramos':
      libras = valor * 2.2 // Factor solicitado
      break
    case 'Arroba':
      libras = valor * 25
      break
    case 'Tacho':
      libras = valor * 53 // Factor solicitado (1 tacho = 53 lbs)
      break
    default:
      libras = valor
  }

  // PASO 2: Convertir de Libras a la unidad de destino (ej. Stock en Bodega)
  switch (unidadDestino) {
    case 'Libras':
      return libras
    case 'Quintales':
      return libras / 100
    case 'Kilogramos':
      return libras / 2.2
    case 'Arroba':
      return libras / 25
    case 'Tacho':
      return libras / 53
    default:
      return libras
  }
}

const registrarVenta = async (data) => {
  const t = await sq.transaction()

  try {
    const { venta, CajaId } = data

    // Desestructuración de campos según tu JSON de entrada
    const {
      PersonaId,
      UsuarioId,
      ProductoId,
      cantidadNeta,
      cantidadBruta,
      unidad,
      totalFactura,
      totalRetencion = 0,
      montoAbonado = 0,
      montoAnticipo = 0,
      tipoVenta,
    } = venta

    // 1. Validaciones de existencia y estado de caja
    const [comprador, producto, caja] = await Promise.all([
      Persona.findByPk(PersonaId),
      Producto.findByPk(ProductoId),
      Caja.findOne({ where: { id: CajaId, estado: 'Abierta' } }),
    ])

    if (!comprador) throw new Error('El cliente no existe.')
    if (!producto) throw new Error('El producto no existe.')
    if (!caja) throw new Error('No hay una caja abierta para procesar el ingreso.')

    // 2. Validación y Conversión de Stock
    // Convertimos la cantidad vendida a la unidad que maneja el producto en la BD
    console.log(cantidadBruta, unidad, producto.unidadMedida)
    const stockARetirar = convertirUnidades(cantidadBruta, unidad, producto.unidadMedida)

    if (parseFloat(producto.stock) < stockARetirar) {
      throw new Error(
        `Stock insuficiente. Disponible: ${producto.stock} ${producto.unidadMedida}. Requerido: ${stockARetirar.toFixed(2)}`
      )
    }

    // 3. Generar Código Correlativo
    const ultimaVenta = await Venta.count()
    const codigoVenta = `VNT-${(ultimaVenta + 1).toString().padStart(7, '0')}`

    // 4. Lógica Financiera (Cálculos con precisión de 2 decimales)
    const totalF = parseFloat(totalFactura || 0)
    const vRetenido = parseFloat(totalRetencion || 0)
    const anticipo = parseFloat(montoAnticipo || 0)
    const abonadoHoy = parseFloat(montoAbonado || 0)

    // totalALiquidar: El valor neto real después de retenciones y anticipos previos
    const totalALiquidar = Number((totalF - vRetenido - anticipo).toFixed(2))

    // pendiente: Lo que queda debiendo el cliente (Cuentas por Cobrar)
    const pendiente = Number((totalALiquidar - abonadoHoy).toFixed(2))

    // 5. CREAR EL REGISTRO DE VENTA
    const nuevaVenta = await Venta.create(
      {
        ...venta,
        codigoVenta,
        valorRetenido: vRetenido,
        totalALiquidar: totalALiquidar,
        montoPendiente: pendiente > 0 ? pendiente : 0,
        CajaId: caja.id,
      },
      { transaction: t }
    )

    // 6. ACTUALIZAR STOCK EN BODEGA
    await producto.decrement('stock', { by: stockARetirar, transaction: t })

    // 7. FLUJO DE DINERO EN CAJA (Solo lo que entra físicamente en efectivo/transferencia hoy)
    if (abonadoHoy > 0) {
      await Movimiento.create(
        {
          tipoMovimiento: 'Ingreso',
          categoria: 'Venta',
          monto: abonadoHoy,
          descripcion: `VENTA ${codigoVenta} | UNIDAD: ${unidad} | LIQUIDO: $${totalALiquidar}`,
          idReferencia: nuevaVenta.id,
          CajaId: caja.id,
        },
        { transaction: t }
      )

      await caja.increment('saldoActual', { by: abonadoHoy, transaction: t })
    }

    // 8. CUENTA POR COBRAR (Si hay saldo o es venta a crédito)
    if (pendiente > 0 || tipoVenta === 'Crédito') {
      await CuentasPorCobrar.create(
        {
          PersonaId: comprador.id,
          montoTotal: totalALiquidar,
          montoPagado: abonadoHoy,
          montoPorCobrar: pendiente > 0 ? pendiente : 0,
          estado: pendiente <= 0 ? 'Pagado' : 'Pendiente',
          origen: 'Venta',
          referenciaId: nuevaVenta.id,
          fecha: new Date(),
        },
        { transaction: t }
      )
    }

    await t.commit()

    return {
      code: 201,
      message: 'Venta registrada con éxito.',
      data: nuevaVenta,
    }
  } catch (error) {
    if (t) await t.rollback()
    console.error('ERROR_VENTA_SISTEMA:', error.message)
    return { code: 400, message: error.message }
  }
}

export { registrarVenta }

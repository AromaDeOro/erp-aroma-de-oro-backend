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
 */
const convertirUnidades = (cantidad, unidadOrigen, unidadDestino) => {
  const valor = parseFloat(cantidad) || 0
  if (unidadOrigen === unidadDestino) return valor

  let libras = 0
  switch (unidadOrigen) {
    case 'Libras':
      libras = valor
      break
    case 'Quintales':
      libras = valor * 100
      break
    case 'Kilogramos':
      libras = valor * 2.2
      break
    case 'Arroba':
      libras = valor * 25
      break
    case 'Tacho':
      libras = valor * 53
      break // Factor 53 regional
    default:
      libras = valor
  }

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

    const {
      PersonaId,
      UsuarioId,
      ProductoId,
      cantidadBruta,
      unidad,
      totalFactura,
      totalRetencion = 0,
      montoAnticipo = 0,
      tipoVenta,
      // Desglose de pagos que viene del frontend
      pagoEfectivo = 0,
      pagoCheque = 0,
      pagoTransferencia = 0,
    } = venta

    // 1. Validaciones
    const [comprador, producto, caja] = await Promise.all([
      Persona.findByPk(PersonaId),
      Producto.findByPk(ProductoId),
      Caja.findOne({ where: { id: CajaId, estado: 'Abierta' } }),
    ])

    if (!comprador) throw new Error('El cliente no existe.')
    if (!producto) throw new Error('El producto no existe.')
    if (!caja) throw new Error('No hay una caja abierta para procesar el ingreso.')

    // 2. Validación y Conversión de Stock
    const stockARetirar = convertirUnidades(cantidadBruta, unidad, producto.unidadMedida)
    if (parseFloat(producto.stock) < stockARetirar) {
      throw new Error(`Stock insuficiente. Disponible: ${producto.stock} ${producto.unidadMedida}.`)
    }

    // 3. Código Correlativo
    const ultimaVenta = await Venta.count()
    const codigoVenta = `VNT-${(ultimaVenta + 1).toString().padStart(7, '0')}`

    // 4. Lógica Financiera Corregida
    const totalF = parseFloat(totalFactura || 0)
    const vRetenido = parseFloat(totalRetencion || 0)
    const anticipo = parseFloat(montoAnticipo || 0)

    // Calculamos el abono total sumando los medios de pago recibidos
    const efectivoReal = parseFloat(pagoEfectivo || 0)
    const transferenciaReal = parseFloat(pagoTransferencia || 0)
    const chequeReal = parseFloat(pagoCheque || 0)
    const abonoTotalHoy = efectivoReal + transferenciaReal + chequeReal

    const totalALiquidar = Number((totalF - vRetenido - anticipo).toFixed(2))
    const pendiente = Number((totalALiquidar - abonoTotalHoy).toFixed(2))

    // 5. CREAR REGISTRO DE VENTA (Con las nuevas columnas)
    const nuevaVenta = await Venta.create(
      {
        ...venta,
        codigoVenta,
        valorRetenido: vRetenido,
        totalALiquidar: totalALiquidar,
        montoAbonado: abonoTotalHoy,
        montoPendiente: pendiente > 0 ? pendiente : 0,
        // Guardamos explícitamente para el comprobante
        pagoEfectivo: efectivoReal,
        pagoTransferencia: transferenciaReal,
        pagoCheque: chequeReal,
        CajaId: caja.id,
      },
      { transaction: t }
    )

    // 6. ACTUALIZAR STOCK
    await producto.decrement('stock', { by: stockARetirar, transaction: t })

    // 7. FLUJO DE DINERO EN CAJA (SOLO EFECTIVO REAL)
    if (efectivoReal > 0) {
      await Movimiento.create(
        {
          tipoMovimiento: 'Ingreso',
          categoria: 'Venta',
          monto: efectivoReal,
          descripcion: `VENTA ${codigoVenta} | EFECTIVO RECIBIDO | PRODUCTO: ${producto.nombre}`,
          idReferencia: nuevaVenta.id,
          CajaId: caja.id,
        },
        { transaction: t }
      )

      await caja.increment('saldoActual', { by: efectivoReal, transaction: t })
    }

    // 8. CUENTA POR COBRAR
    if (pendiente > 0 || tipoVenta === 'Crédito') {
      await CuentasPorCobrar.create(
        {
          PersonaId: comprador.id,
          montoTotal: totalALiquidar,
          montoPagado: abonoTotalHoy,
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

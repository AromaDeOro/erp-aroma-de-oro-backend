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
 * FUNCIÓN DE CONVERSIÓN UNIVERSAL (Se mantiene igual)
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
      libras = valor * 2.20462
      break
    case 'Arroba':
      libras = valor * 25
      break
    default:
      libras = valor
  }

  switch (unidadDestino) {
    case 'Libras':
      return libras
    case 'Quintales':
      return libras / 100
    case 'Kilogramos':
      return libras / 2.20462
    case 'Arroba':
      return libras / 25
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
      montoAbonado, // Dinero físico que entra HOY a caja
      montoAnticipo, // Dinero que ya se tenía (Préstamo previo)
      totalFactura, // Valor total de la mercadería (Neto * Precio)
      tipoVenta,
    } = venta

    // 1. Validaciones de existencia
    const [comprador, usuario, producto, caja] = await Promise.all([
      Persona.findByPk(PersonaId),
      Usuario.findByPk(UsuarioId),
      Producto.findByPk(ProductoId),
      Caja.findOne({ where: { id: CajaId, estado: 'Abierta' } }),
    ])

    if (!comprador) throw new Error('El cliente no existe.')
    if (!producto) throw new Error('El producto no existe.')
    if (!caja) throw new Error('No hay una caja abierta para procesar el ingreso.')

    // 2. Validación de Stock
    const stockARetirar = convertirUnidades(cantidadBruta, unidad, producto.unidadMedida)

    if (parseFloat(producto.stock) < stockARetirar) {
      throw new Error(
        `Stock insuficiente. Disponible: ${producto.stock} ${producto.unidadMedida}. Requiere: ${stockARetirar.toFixed(2)}`
      )
    }

    // 3. Generar Código Correlativo
    const ultimaVenta = await Venta.count()
    const codigoVenta = `VNT-${(ultimaVenta + 1).toString().padStart(7, '0')}`

    // --- LÓGICA FINANCIERA CORREGIDA ---
    const total = parseFloat(totalFactura)
    const anticipo = parseFloat(montoAnticipo || 0)
    const abonadoHoy = parseFloat(montoAbonado || 0)

    // Lo pendiente es el Total menos lo que ya dio (Anticipo) menos lo que da hoy (Abono)
    const pendiente = total - anticipo - abonadoHoy

    // 4. CREAR EL REGISTRO DE VENTA
    const nuevaVenta = await Venta.create(
      {
        ...venta,
        codigoVenta,
        montoAnticipo: anticipo,
        montoAbonado: abonadoHoy,
        montoPendiente: pendiente,
        CajaId: caja.id,
      },
      { transaction: t }
    )

    // 5. ACTUALIZAR STOCK
    await producto.decrement('stock', { by: stockARetirar, transaction: t })

    // 6. FLUJO DE DINERO EN CAJA (Solo lo que entra HOY)
    // El anticipo NO genera movimiento de caja porque el dinero ya entró antes o fue un préstamo.
    if (abonadoHoy > 0) {
      await Movimiento.create(
        {
          tipoMovimiento: 'Ingreso',
          categoria: 'Venta',
          monto: abonadoHoy,
          descripcion: `ABONO HOY VENTA ${codigoVenta} | ANTICIPO PREVIO: $${anticipo}`,
          idReferencia: nuevaVenta.id,
          CajaId: caja.id,
        },
        { transaction: t }
      )

      await caja.increment('saldoActual', { by: abonadoHoy, transaction: t })
    }

    // 7. CUENTA POR COBRAR (Refleja la deuda real)
    if (pendiente > 0 || tipoVenta === 'Crédito') {
      await CuentasPorCobrar.create(
        {
          PersonaId: comprador.id,
          montoTotal: total,
          montoEfectivo: abonadoHoy + anticipo, // El cliente "cubrió" esta parte del total
          montoPorCobrar: pendiente,
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
    console.error('ERROR_VENTA_AROMA_ORO:', error.message)
    if (t) await t.rollback()
    return { code: 400, message: error.message }
  }
}

export { registrarVenta }

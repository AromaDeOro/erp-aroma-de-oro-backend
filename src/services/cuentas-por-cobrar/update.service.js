import {
  CuentasPorCobrar,
  AbonosCuentasPorCobrar,
  Caja,
  Movimiento,
  Prestamo,
  Anticipo,
  Venta,
  sq,
} from '../../libs/db.js'

const registrarCobro = async (data) => {
  const t = await sq.transaction()
  try {
    const { CuentaPorCobrarId, monto, metodoCobro, CajaId, origen, afectaCaja } = data
    const montoAbono = parseFloat(monto)
    const cuenta = await CuentasPorCobrar.findByPk(CuentaPorCobrarId)

    // Actualización del origen (Venta)
    if (origen === 'Venta') {
      const venta = await Venta.findByPk(cuenta.referenciaId)
      if (venta) {
        const updateVenta = {
          montoAbonado: parseFloat(venta.montoAbonado) + montoAbono,
          montoPendiente: parseFloat(venta.montoPendiente) - montoAbono,
        }
        if (metodoCobro === 'Efectivo')
          updateVenta.pagoEfectivo = (parseFloat(venta.pagoEfectivo) || 0) + montoAbono
        if (metodoCobro === 'Transferencia')
          updateVenta.pagoTransferencia = (parseFloat(venta.pagoTransferencia) || 0) + montoAbono

        await venta.update(updateVenta, { transaction: t })
      }
    }

    // Registro de Abono y Movimiento de Caja
    const nuevoAbono = await AbonosCuentasPorCobrar.create(
      {
        monto: montoAbono,
        metodoCobro,
        CuentaPorCobrarId,
        fechaCobro: new Date(),
      },
      { transaction: t }
    )

    if (afectaCaja && metodoCobro === 'Efectivo') {
      await Movimiento.create(
        {
          tipoMovimiento: 'Ingreso',
          categoria: 'Cuentas por Cobrar',
          monto: montoAbono,
          CajaId,
          idReferencia: nuevoAbono.id,
        },
        { transaction: t }
      )
      await Caja.increment('saldoActual', { by: montoAbono, where: { id: CajaId }, transaction: t })
    }

    await t.commit()
    return { code: 200, message: 'Cobro procesado.' }
  } catch (error) {
    if (t) await t.rollback()
    return { code: 500, message: error.message }
  }
}

export { registrarCobro }

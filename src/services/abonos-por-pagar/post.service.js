import {
  sq,
  Caja,
  Movimiento,
  CuentasPorPagar,
  AbonosCuentasPorPagar,
  Liquidacion,
} from '../../libs/db.js'

const registrarAbono = async (data) => {
  const { CuentaPorPagarId, monto, metodoPago, notas, CajaId, UsuarioId } = data
  const t = await sq.transaction()

  try {
    // 1. BUSCAR CUENTA Y LIQUIDACIÓN
    const cuenta = await CuentasPorPagar.findByPk(CuentaPorPagarId, { transaction: t })
    if (!cuenta) {
      await t.rollback()
      return { code: 404, message: 'La cuenta por pagar no existe' }
    }

    const liquidacion = await Liquidacion.findByPk(cuenta.LiquidacionId, { transaction: t })
    if (!liquidacion) {
      await t.rollback()
      return { code: 404, message: 'Liquidación de origen no encontrada' }
    }

    const montoAbono = parseFloat(monto)
    const saldoPendienteActual = parseFloat(cuenta.saldoPendiente)

    // 2. VALIDACIÓN DE SALDO
    if (montoAbono > saldoPendienteActual) {
      await t.rollback()
      return { code: 400, message: 'El abono supera el saldo pendiente' }
    }

    // 3. MANEJO DE CAJA Y VALIDACIÓN DE ESTADO
    const cajaActiva = await Caja.findByPk(CajaId, { transaction: t })
    if (!cajaActiva || cajaActiva.estado !== 'Abierta') {
      await t.rollback()
      return { code: 400, message: 'La caja no existe o está cerrada' }
    }

    // Si es efectivo, validar que haya dinero para pagar
    if (metodoPago === 'Efectivo') {
      if (montoAbono > parseFloat(cajaActiva.saldoActual)) {
        await t.rollback()
        return { code: 400, message: 'Saldo insuficiente en caja física para este egreso' }
      }

      // Restar del saldo físico de la caja
      await cajaActiva.update(
        {
          saldoActual: parseFloat(cajaActiva.saldoActual) - montoAbono,
        },
        { transaction: t }
      )
    }

    // 4. REGISTRAR EL ABONO (Historial de pagos)
    const nuevoAbono = await AbonosCuentasPorPagar.create(
      {
        monto: montoAbono,
        metodoPago,
        notas: notas || `Abono a Liquidación ${liquidacion.codigo}`,
        CuentaPorPagarId,
        UsuarioId,
        fechaPago: new Date(),
      },
      { transaction: t }
    )

    // 5. REGISTRAR MOVIMIENTO (Egreso para auditoría)
    await Movimiento.create(
      {
        monto: montoAbono,
        tipoMovimiento: 'Egreso',
        categoria: 'Cuentas por Pagar',
        CajaId,
        idReferencia: nuevoAbono.id,
        descripcion: `Pago a Productor - Liq: ${liquidacion.codigo} (${metodoPago})`,
        fecha: new Date(),
      },
      { transaction: t }
    )

    // 6. ACTUALIZAR CUENTA POR PAGAR (CX P)
    const nuevoSaldo = saldoPendienteActual - montoAbono
    await cuenta.update(
      {
        montoAbonado: parseFloat(cuenta.montoAbonado) + montoAbono,
        saldoPendiente: nuevoSaldo <= 0 ? 0 : nuevoSaldo,
        estado: nuevoSaldo <= 0 ? 'Pagado' : 'Pendiente',
      },
      { transaction: t }
    )

    // 7. ACTUALIZAR LIQUIDACIÓN (Modelo de Origen)
    const camposUpdateLiq = {
      montoAbonado: parseFloat(liquidacion.montoAbonado) + montoAbono,
      montoPorPagar: nuevoSaldo <= 0 ? 0 : nuevoSaldo,
      estado: nuevoSaldo <= 0 ? 'Pagada' : 'Pendiente',
    }

    // Actualizar el acumulador específico del método en la liquidación
    if (metodoPago === 'Efectivo') {
      camposUpdateLiq.pagoEfectivo = parseFloat(liquidacion.pagoEfectivo) + montoAbono
    } else if (metodoPago === 'Transferencia') {
      camposUpdateLiq.pagoTransferencia = parseFloat(liquidacion.pagoTransferencia) + montoAbono
    } else if (metodoPago === 'Depósito' || metodoPago === 'Cheque') {
      camposUpdateLiq.pagoCheque = parseFloat(liquidacion.pagoCheque) + montoAbono
    }

    await liquidacion.update(camposUpdateLiq, { transaction: t })

    // FINALIZAR OPERACIÓN
    await t.commit()

    return {
      code: 200,
      message: 'Egreso procesado y liquidación actualizada correctamente',
      data: {
        saldoRestante: nuevoSaldo.toFixed(2),
        cajaActualizada: cajaActiva,
      },
    }
  } catch (error) {
    if (t) await t.rollback()
    console.error('ERROR_PAGO_LIQUIDACION:', error)
    return { code: 500, message: 'Error interno al procesar el abono' }
  }
}

export { registrarAbono }

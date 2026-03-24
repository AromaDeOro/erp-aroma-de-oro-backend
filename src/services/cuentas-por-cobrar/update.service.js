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
    const {
      CuentaPorCobrarId,
      monto,
      metodoCobro,
      UsuarioId,
      CajaId,
      descripcion,
      origen, // 'Venta', 'Anticipo' o 'Préstamo'
    } = data

    const montoAbono = parseFloat(monto)

    // 1. VALIDAR CAJA
    const cajaActiva = await Caja.findByPk(CajaId)
    if (!cajaActiva || cajaActiva.estado !== 'Abierta') {
      return { code: 400, message: 'La caja no existe o está cerrada.' }
    }

    // 2. BUSCAR CUENTA POR COBRAR Y SU REFERENCIA
    const cuenta = await CuentasPorCobrar.findByPk(CuentaPorCobrarId)
    if (!cuenta) throw new Error('Cuenta por cobrar no encontrada.')

    const idRef = cuenta.referenciaId // El ID del modelo original (Venta/Prestamo/Anticipo)

    // 3. ACTUALIZAR EL MODELO DE ORIGEN (La lógica que faltaba)
    switch (origen) {
      case 'Préstamo':
        const prestamo = await Prestamo.findByPk(idRef)
        if (prestamo) {
          const saldoAnterior = parseFloat(prestamo.saldoPendiente)
          const nuevoSaldoP = saldoAnterior - montoAbono

          // VALIDACIÓN DE CUOTAS
          let cuotasActualizadas = prestamo.cuotasPagadas + 1

          // Si el saldo llega a cero (o es menor por algún ajuste),
          // forzamos a que las cuotas pagadas sean iguales a las pactadas
          if (nuevoSaldoP <= 0) {
            cuotasActualizadas = prestamo.cuotasPactadas
          }

          await prestamo.update(
            {
              saldoPendiente: nuevoSaldoP <= 0 ? 0 : nuevoSaldoP,
              cuotasPagadas: cuotasActualizadas,
              estado: nuevoSaldoP <= 0 ? 'Pagado' : 'Pendiente',
            },
            { transaction: t }
          )
        }
        break

      case 'Anticipo':
        const anticipo = await Anticipo.findByPk(idRef)
        if (anticipo) {
          const nuevoSaldoA = parseFloat(anticipo.saldoPendiente) - montoAbono
          await anticipo.update(
            {
              saldoPendiente: nuevoSaldoA <= 0 ? 0 : nuevoSaldoA,
              estado: nuevoSaldoA <= 0 ? 'Aplicado' : 'Pendiente',
            },
            { transaction: t }
          )
        }
        break

      case 'Venta':
        const venta = await Venta.findByPk(idRef)
        if (venta) {
          const nuevoMontoP = parseFloat(venta.montoPendiente) - montoAbono
          await venta.update(
            {
              montoAbonado: parseFloat(venta.montoAbonado) + montoAbono,
              montoPendiente: nuevoMontoP <= 0 ? 0 : nuevoMontoP,
            },
            { transaction: t }
          )
        }
        break
    }

    // 4. REGISTRAR ABONO (Auditoría de cobros)
    const nuevoAbono = await AbonosCuentasPorCobrar.create(
      {
        monto: montoAbono,
        metodoCobro,
        CuentaPorCobrarId,
        UsuarioId,
        fechaCobro: new Date(),
      },
      { transaction: t }
    )

    // 5. ACTUALIZAR CUENTA POR COBRAR (Saldos globales)
    const saldoRestante = parseFloat(cuenta.montoPorCobrar) - montoAbono
    const camposUpdate = {
      montoPorCobrar: saldoRestante,
      estado: saldoRestante <= 0 ? 'Cobrado' : 'Pendiente',
    }

    if (metodoCobro === 'Efectivo')
      camposUpdate.montoEfectivo = parseFloat(cuenta.montoEfectivo) + montoAbono
    if (metodoCobro === 'Transferencia')
      camposUpdate.montoTransferencia = parseFloat(cuenta.montoTransferencia) + montoAbono
    if (metodoCobro === 'Depósito')
      camposUpdate.montoCheque = parseFloat(cuenta.montoCheque) + montoAbono

    await cuenta.update(camposUpdate, { transaction: t })

    // 6. REGISTRAR MOVIMIENTO DE CAJA
    await Movimiento.create(
      {
        tipoMovimiento: 'Ingreso',
        categoria: 'Cuentas por Cobrar',
        monto: montoAbono,
        idReferencia: nuevoAbono.id,
        descripcion: descripcion || `Cobro ${origen} - Ref: ${idRef}`,
        CajaId: cajaActiva.id,
        fecha: new Date(),
      },
      { transaction: t }
    )

    // 7. ACTUALIZAR SALDO ACTUAL DE CAJA
    await cajaActiva.update(
      {
        saldoActual: parseFloat(cajaActiva.saldoActual) + montoAbono,
      },
      { transaction: t }
    )

    await t.commit()

    return {
      code: 200,
      message: `Cobro de ${origen} procesado correctamente.`,
      cajaActualizada: cajaActiva,
    }
  } catch (error) {
    await t.rollback()
    console.error('Error Crítico Aroma de Oro:', error)
    return { code: 500, message: error.message }
  }
}

export { registrarCobro }

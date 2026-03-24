import { Op } from 'sequelize'
import {
  Caja,
  Movimiento,
  Nomina,
  Persona,
  Prestamo,
  CuentasPorCobrar,
  AbonosCuentasPorCobrar,
  sq,
} from '../../libs/db.js'

const procesarPagoNomina = async (data) => {
  const {
    UsuarioId,
    unidadesTrabajadas,
    sueldoBase,
    bono,
    descuentoGeneral,
    descuentoPrestamo,
    CajaId,
    PersonaId,
    PrestamoId,
    tipoPeriodo,
  } = data

  const t = await sq.transaction()

  try {
    // 1. VALIDACIÓN DE EXISTENCIA (TRABAJADOR Y CAJA)
    const persona = await Persona.findByPk(PersonaId, { transaction: t })
    if (!persona) throw new Error('404:Empleado no encontrado')

    const caja = await Caja.findOne({
      where: { id: CajaId, estado: 'Abierta' },
      transaction: t,
    })
    if (!caja) throw new Error('400:La caja no está abierta')

    // --- 2. VALIDACIÓN DE FRECUENCIA DE PAGO (ANTIDUPLICADOS) ---
    const ultimoPago = await Nomina.findOne({
      where: { PersonaId },
      order: [['fechaPago', 'DESC']],
      transaction: t,
    })

    if (ultimoPago) {
      const hoy = new Date()
      const fechaUltimo = new Date(ultimoPago.fechaPago)

      // Calculamos diferencia en días
      const diffTime = Math.abs(hoy - fechaUltimo)
      const diffDays = Math.floor(diffTime / (1000 * 60 * 60 * 24))

      // A. Bloqueo mismo día (Evita errores de doble clic o humanos)
      if (diffDays < 1 && hoy.toDateString() === fechaUltimo.toDateString()) {
        throw new Error('400:Este trabajador ya recibió un pago el día de hoy.')
      }

      // B. Bloqueo por periodo (Margen de maniobra para Aroma de Oro)
      if (tipoPeriodo === 'Semanal' && diffDays < 6) {
        throw new Error(`400:Periodo semanal incompleto. Último pago hace ${diffDays} días.`)
      }
      if (tipoPeriodo === 'Quincenal' && diffDays < 13) {
        throw new Error(`400:Periodo quincenal incompleto. Faltan días para el siguiente pago.`)
      }
      if (tipoPeriodo === 'Mensual' && diffDays < 27) {
        throw new Error(`400:Periodo mensual incompleto.`)
      }
    }

    // 3. CÁLCULOS DE VALORES
    const mBono = parseFloat(bono || 0)
    const dGen = parseFloat(descuentoGeneral || 0)
    const sBase = parseFloat(sueldoBase || 0)
    const uTrab = parseFloat(unidadesTrabajadas || 0)
    const dPres = parseFloat(descuentoPrestamo || 0)

    // Subtotal: Jornal multiplica por unidades, el resto usa sueldo base directo
    const subTotal = (tipoPeriodo === 'Jornal' ? uTrab * sBase : sBase) + mBono
    const totalPagar = subTotal - dGen - dPres

    // 4. VALIDACIÓN DE SALDO EN CAJA
    if (totalPagar > parseFloat(caja.saldoActual)) {
      throw new Error(`400:Saldo insuficiente en caja Aroma de Oro ($${caja.saldoActual})`)
    }

    // 5. LÓGICA DE PRÉSTAMOS Y ABONOS A CUENTAS POR COBRAR (CxC)
    if (PrestamoId && dPres > 0) {
      const prestamoValidado = await Prestamo.findByPk(PrestamoId, { transaction: t })

      if (!prestamoValidado || prestamoValidado.PersonaId !== PersonaId) {
        throw new Error('400:Préstamo no válido para este trabajador')
      }

      // A. Actualizar el saldo del Préstamo
      const nuevoSaldoPrestamo = parseFloat(prestamoValidado.saldoPendiente) - dPres
      await prestamoValidado.update(
        {
          saldoPendiente: nuevoSaldoPrestamo,
          cuotasPagadas: (prestamoValidado.cuotasPagadas || 0) + 1,
          estado: nuevoSaldoPrestamo <= 0 ? 'Pagado' : 'Pendiente',
        },
        { transaction: t }
      )

      // B. Sincronizar con Cuentas por Cobrar (CxC)
      const cxc = await CuentasPorCobrar.findOne({
        where: { referenciaId: prestamoValidado.id, origen: 'Préstamo' },
        transaction: t,
      })

      if (cxc) {
        // Crear el abono contable
        await AbonosCuentasPorCobrar.create(
          {
            monto: dPres,
            fechaCobro: new Date(),
            metodoCobro: 'Efectivo',
            CuentaPorCobrarId: cxc.id,
            UsuarioId: UsuarioId,
          },
          { transaction: t }
        )

        // Actualizar saldo de la CxC
        const nuevoMontoCXC = parseFloat(cxc.montoPorCobrar) - dPres
        await cxc.update(
          {
            montoPorCobrar: nuevoMontoCXC,
            estado: nuevoMontoCXC <= 0 ? 'Cobrado' : 'Pendiente',
          },
          { transaction: t }
        )
      }
    }

    // 6. GENERACIÓN DEL CÓDIGO SECUENCIAL (NOM-XXXXXXX)
    const ultimaNomina = await Nomina.findOne({
      order: [['createdAt', 'DESC']],
      transaction: t,
    })
    let nuevoNumero = ultimaNomina?.codigo ? parseInt(ultimaNomina.codigo.split('-')[1]) + 1 : 1
    const nuevoCodigo = `NOM-${nuevoNumero.toString().padStart(7, '0')}`

    // 7. REGISTROS FINALES (Nómina, Movimiento de Caja y Actualización de Saldo)
    const pagoRealizado = await Nomina.create(
      {
        codigo: nuevoCodigo,
        tipoPeriodo: tipoPeriodo || 'Jornal',
        sueldoBase: sBase,
        unidadesTrabajadas: uTrab,
        subTotal,
        bono: mBono,
        descuentoGeneral: dGen,
        descuentoPrestamo: dPres,
        totalPagar,
        PersonaId,
        UsuarioId,
        PrestamoId: PrestamoId || null,
        fechaPago: new Date(),
      },
      { transaction: t }
    )

    await Movimiento.create(
      {
        monto: totalPagar,
        tipoMovimiento: 'Egreso',
        categoria: 'Nomina',
        CajaId,
        idReferencia: pagoRealizado.id,
      },
      { transaction: t }
    )

    // Decrementar saldo de la caja Aroma de Oro
    await caja.decrement('saldoActual', { by: totalPagar, transaction: t })

    await t.commit()

    return {
      code: 201,
      message: `Pago ${nuevoCodigo} procesado. Abono a CxC registrado.`,
      pago: pagoRealizado,
    }
  } catch (error) {
    if (t) await t.rollback()
    const [code, message] = error.message.includes(':')
      ? error.message.split(':')
      : [500, error.message]

    return { code: parseInt(code), message }
  }
}

export { procesarPagoNomina }

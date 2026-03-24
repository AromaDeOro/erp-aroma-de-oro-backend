import { sq, Anticipo, Caja, Movimiento, CuentasPorCobrar } from '../../libs/db.js'

const crearAnticipo = async (data) => {
  const { PersonaId, CajaId, monto, UsuarioId, comentario } = data
  const t = await sq.transaction()

  try {
    // 1. Validaciones de Caja
    const caja = await Caja.findByPk(CajaId, { transaction: t })
    if (!caja || caja.estado !== 'Abierta' || parseFloat(caja.saldoActual) < parseFloat(monto)) {
      await t.rollback()
      return { code: 400, message: 'Caja no disponible o saldo insuficiente' }
    }

    const anticpoExistente = await Anticipo.findOne({
      where: {
        PersonaId: PersonaId,
        estado: 'Pendiente',
      },
      transaction: t, // Añadido a la transacción por seguridad
    })

    if (anticpoExistente) {
      await t.rollback()
      return {
        code: 400,
        message: 'BLOQUEADO: El productor ya tiene un anticipo pendiente de pago.',
      }
    }

    // 2. REGISTRO FÍSICO: El Anticipo
    const nuevoAnticipo = await Anticipo.create(
      {
        monto,
        saldoPendiente: monto,
        PersonaId,
        CajaId,
        UsuarioId,
        estado: 'Pendiente',
        comentario,
      },
      { transaction: t }
    )

    // 3. MOVIMIENTO DE CAJA: La salida real de dinero
    await Movimiento.create(
      {
        tipoMovimiento: 'Egreso',
        categoria: 'Anticipo',
        monto: monto,
        idReferencia: nuevoAnticipo.id,
        descripcion: `Anticipo entregado. Ref: ${nuevoAnticipo.id.substring(0, 8)}`,
        CajaId: CajaId,
      },
      { transaction: t }
    )

    // 4. CONTROL DE DEUDA: La Cuenta por Cobrar
    await CuentasPorCobrar.create(
      {
        montoTotal: monto,
        montoPorCobrar: monto,
        estado: 'Pendiente',
        origen: 'Anticipo',
        referenciaId: nuevoAnticipo.id,
        fecha: new Date(),
      },
      { transaction: t }
    )

    // 5. ACTUALIZAR SALDO DE CAJA Y RECARGAR
    await caja.decrement('saldoActual', { by: monto, transaction: t })

    // Recargamos la instancia para obtener el nuevo saldoActualizado
    await caja.reload({ transaction: t })

    await t.commit()

    return {
      code: 201,
      message: 'Anticipo y Cuenta por Cobrar creados',
      caja: caja, // Devolvemos la caja actualizada
    }
  } catch (error) {
    if (t) await t.rollback()
    console.error(error)
    return { code: 500, message: 'Error en el servidor' }
  }
}

export { crearAnticipo }

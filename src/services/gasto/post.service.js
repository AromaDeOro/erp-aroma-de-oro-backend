import { Caja, Movimiento, Gasto, sq } from '../../libs/db.js'

/**
 * REGISTRAR GASTO GENERAL - AROMA DE ORO
 * Registra egresos como repuestos, almuerzos, etc., con justificación obligatoria.
 */
const registrarGasto = async (data) => {
  const { monto, descripcion, categoria, CajaId, UsuarioId } = data

  const t = await sq.transaction()

  try {
    // 1. VALIDACIÓN DE CAJA ABIERTA
    const caja = await Caja.findOne({
      where: { id: CajaId, estado: 'Abierta' },
      transaction: t,
    })

    if (!caja) {
      await t.rollback()
      return { code: 400, message: 'No se puede registrar el gasto: La caja no está abierta.' }
    }

    const valorGasto = parseFloat(monto || 0)

    // 2. VALIDACIÓN DE SALDO
    if (valorGasto > parseFloat(caja.saldoActual)) {
      await t.rollback()
      return {
        code: 400,
        message: `Saldo insuficiente. Disponible: $${caja.saldoActual} | Gasto: $${valorGasto.toFixed(2)}`,
      }
    }

    // 3. GENERAR CÓDIGO SECUENCIAL (GAS-0000001)
    const ultimoGasto = await Gasto.findOne({
      order: [['createdAt', 'DESC']],
      transaction: t,
    })

    let nuevoNumero = 1
    if (ultimoGasto && ultimoGasto.codigo) {
      const ultimoCodigoStr = ultimoGasto.codigo.split('-')[1]
      nuevoNumero = parseInt(ultimoCodigoStr) + 1
    }

    const nuevoCodigo = `GAS-${nuevoNumero.toString().padStart(7, '0')}`

    // 4. CREAR EL REGISTRO DEL GASTO
    const gastoRealizado = await Gasto.create(
      {
        codigo: nuevoCodigo,
        monto: valorGasto,
        descripcion: descripcion.toUpperCase(), // Forzamos mayúsculas
        categoria: categoria || 'Varios',
        CajaId,
        UsuarioId,
      },
      { transaction: t }
    )

    // 5. REGISTRAR EL MOVIMIENTO DE CAJA (Para el historial general)
    await Movimiento.create(
      {
        monto: valorGasto,
        tipoMovimiento: 'Egreso',
        categoria: 'Gasto General',
        CajaId,
        idReferencia: gastoRealizado.id,
      },
      { transaction: t }
    )

    // 6. DESCONTAR EL SALDO DE LA CAJA
    await caja.decrement('saldoActual', {
      by: valorGasto,
      transaction: t,
    })

    await t.commit()

    // Retornamos la caja actualizada para refrescar el estado en el frontend
    const cajaFinal = await Caja.findByPk(CajaId)

    return {
      code: 201,
      message: `Gasto ${nuevoCodigo} registrado con éxito.`,
      gasto: gastoRealizado,
      caja: cajaFinal,
    }
  } catch (error) {
    if (t) await t.rollback()
    console.error('ERROR AL REGISTRAR GASTO:', error)
    return { code: 500, message: 'Error interno al procesar el gasto' }
  }
}

export { registrarGasto }

import { Anticipo, Caja, CuentasPorCobrar, Movimiento } from '../../libs/db.js'

const actualizarAnticipo = async (data) => {
  const { CajaId, AnticipoId, monto, comentario } = data

  const caja = await Caja.findByPk(CajaId)
  if (!caja || caja.estado === 'Cerrada') {
    return { code: 400, message: 'La caja no existe o está cerrada' }
  }

  const anticipo = await Anticipo.findByPk(AnticipoId)
  if (!anticipo) return { code: 404, message: 'No se encontró el anticipo' }

  if (anticipo.monto !== anticipo.saldoPendiente)
    return { code: 400, message: 'No se puede editar: ya se ha cobrado para del anticipo' }

  const montoAnterior = parseFloat(anticipo.monto)
  const nuevoMonto = parseFloat(monto)
  const diferencia = nuevoMonto - montoAnterior

  if (diferencia > 0 && caja.saldoActual < diferencia) {
    return { code: 400, message: 'Saldo insuficiente en caja para cubrir la diferencia' }
  }

  await anticipo.update({
    monto: nuevoMonto,
    saldoPendiente: nuevoMonto,
    comentario: comentario,
  })

  await caja.update({
    saldoActual: caja.saldoActual - diferencia,
  })

  const movimiento = await Movimiento.findOne({
    where: {
      categoria: 'Anticipo',
      idReferencia: AnticipoId,
    },
  })
  if (movimiento) {
    await movimiento.update({
      monto: nuevoMonto,
      descripcion: `EDICIÓN: ${comentario?.toUpperCase()}`,
    })
  }

  const cxc = await CuentasPorCobrar.findOne({
    where: {
      referenciaId: AnticipoId,
      origen: 'Anticipo',
    },
  })

  if (cxc) {
    await cxc.update({
      monto: nuevoMonto,
      montoPorCobrar: nuevoMonto,
    })
  }

  const cajaActual = await Caja.findByPk(CajaId)

  return { code: 200, message: 'Préstamos y saldos actualizados correctamente', caja: cajaActual }
}

export { actualizarAnticipo }

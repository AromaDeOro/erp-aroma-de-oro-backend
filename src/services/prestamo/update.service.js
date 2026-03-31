import { Caja, CuentasPorCobrar, Movimiento, Prestamo } from '../../libs/db.js'

const actualizarPrestamo = async (data) => {
  const { CajaId, PrestamoId, montoTotal, cuotasPactadas, comentario } = data

  // 1. Validaciones de existencia
  const caja = await Caja.findByPk(CajaId)
  if (!caja || caja.estado === 'Cerrada') {
    return { code: 400, message: 'La caja no existe o está cerrada' }
  }

  const prestamo = await Prestamo.findByPk(PrestamoId)
  if (!prestamo) return { code: 404, message: 'No se encontró el préstamo' }

  // 2. REGLA DE ORO: Si ya pagó algo, no se edita, se anula.
  if (prestamo.cuotasPagadas > 0) {
    return { code: 400, message: 'No se puede editar: ya existen cuotas pagadas' }
  }

  const montoAnterior = parseFloat(prestamo.montoTotal)
  const nuevoMonto = parseFloat(montoTotal)
  const diferencia = nuevoMonto - montoAnterior // Positivo: sale más plata. Negativo: entra plata.

  // 3. Validar si la caja tiene fondos si el monto sube
  if (diferencia > 0 && caja.saldoActual < diferencia) {
    return { code: 400, message: 'Saldo insuficiente en caja para cubrir la diferencia' }
  }

  // --- INICIO DE ACTUALIZACIÓN ---

  // 4. Actualizar el Préstamo
  await prestamo.update({
    montoTotal: nuevoMonto,
    saldoPendiente: nuevoMonto, // Al no haber abonos, el saldo es el total
    cuotasPactadas,
    comentario: comentario?.toUpperCase(),
  })

  // 5. Actualizar la Caja (El saldo de Aroma de Oro debe cuadrar)
  await caja.update({
    saldoActual: caja.saldoActual - diferencia, // Si dif es negativa, suma (devuelve a caja)
  })

  // 6. Actualizar el Movimiento de Caja (Para el reporte de ingresos/egresos)
  const movimiento = await Movimiento.findOne({
    where: { categoria: 'Préstamo', idReferencia: PrestamoId },
  })
  if (movimiento) {
    await movimiento.update({
      monto: nuevoMonto,
      descripcion: `EDICIÓN: ${comentario?.toUpperCase()}`,
    })
  }

  // 7. Actualizar Cuentas por Cobrar (CxC)
  const cxc = await CuentasPorCobrar.findOne({
    where: { referenciaId: PrestamoId, origen: 'Préstamo' }, // Asegúrate de filtrar por tipo
  })
  if (cxc) {
    await cxc.update({
      montoTotal: nuevoMonto,
      saldoPendiente: nuevoMonto,
    })
  }

  return { code: 200, message: 'Préstamo y saldos actualizados correctamente', caja }
}

export { actualizarPrestamo }

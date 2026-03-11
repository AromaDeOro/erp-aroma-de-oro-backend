import { Ticket, Producto } from '../../libs/db.js'

const actualizarInformacion = async (data, id) => {
  const ticket = await Ticket.findByPk(id)

  if (!ticket)
    return {
      code: 404,
      message: 'Error al actualizar el ticket. Ticket no encontrado.',
    }

  // 1. Evitar que se editen tickets ya Liquidados (Regla de negocio ERP)
  if (ticket.estadoTicket === 'Liquidado') {
    return {
      code: 400,
      message: 'No se puede editar un ticket que ya ha sido liquidado.',
    }
  }

  // 2. Lógica de Recálculo Automático
  // Si en la 'data' vienen pesos, recalculamos el Neto antes de guardar
  if (data.pesoBruto !== undefined || data.taraVehiculo !== undefined) {
    const nuevoBruto = data.pesoBruto !== undefined ? parseFloat(data.pesoBruto) : ticket.pesoBruto
    const nuevaTara =
      data.taraVehiculo !== undefined ? parseFloat(data.taraVehiculo) : ticket.taraVehiculo

    data.pesoNeto = (nuevoBruto - nuevaTara).toFixed(2)
  }

  // 3. Actualizar
  await ticket.update(data)

  // 4. Retornar el ticket actualizado con su relación para refrescar la UI
  const ticketActualizado = await Ticket.findByPk(id, {
    include: [{ model: Producto, attributes: ['nombre'] }],
  })

  return {
    code: 200,
    message: 'Información del ticket actualizada con éxito',
    ticket: ticketActualizado,
  }
}

export { actualizarInformacion }

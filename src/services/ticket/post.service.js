import { Producto, Ticket } from '../../libs/db.js'

const crearTicket = async (data) => {
  const { ProductoId, pesoBruto, taraVehiculo } = data

  // 1. Validar producto (findByPk es más directo)
  const producto = await Producto.findByPk(ProductoId)

  if (!producto) {
    return {
      code: 400,
      message: 'Error al crear el ticket. Producto no encontrado',
    }
  }

  // 2. Generar correlativo optimizado con count()
  const totalTickets = await Ticket.count()
  const numeroTicket = 'TKT-' + String(totalTickets + 1).padStart(7, '0')

  // 3. Forzar cálculo del Peso Neto en el servidor (Integridad de datos)
  const bruto = parseFloat(pesoBruto) || 0
  const tara = parseFloat(taraVehiculo) || 0
  const netoCalculado = (bruto - tara).toFixed(2)

  // 4. Crear registro
  const nuevoTicket = await Ticket.create({
    ...data,
    numero: numeroTicket,
    pesoNeto: netoCalculado, // Aseguramos que se guarde el cálculo correcto
  })

  // 5. Retornar con el producto incluido para que el frontend actualice la tabla
  const ticketFinal = await Ticket.findByPk(nuevoTicket.id, {
    include: [{ model: Producto, attributes: ['nombre'] }],
  })

  return {
    code: 201,
    message: 'Ticket creado con éxito',
    ticket: ticketFinal,
  }
}

export { crearTicket }

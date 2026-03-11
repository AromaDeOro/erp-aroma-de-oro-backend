import { Ticket, Producto } from '../../libs/db.js'

const listarTodos = async () => {
  const tickets = await Ticket.findAll({
    // Traemos el nombre del producto relacionado
    include: [
      {
        model: Producto,
        attributes: ['nombre'],
      },
    ],
    // Ordenamos por fecha de ingreso, los más nuevos arriba
    order: [['fechaIngreso', 'DESC']],
  })

  return {
    code: 200,
    tickets,
  }
}

const listarInformacion = async (id) => {
  const ticket = await Ticket.findByPk(id, {
    include: [{ model: Producto, attributes: ['nombre'] }],
  })

  if (!ticket) return { code: 404, message: 'El ticket no existe.' }

  return { code: 200, ticket }
}

const listarPorClave = async (clave, valor) => {
  const tickets = await Ticket.findAll({
    where: {
      [clave]: valor,
    },
    include: [{ model: Producto, attributes: ['nombre'] }],
    order: [['fechaIngreso', 'DESC']],
  })

  return {
    code: 200,
    tickets,
  }
}

export { listarInformacion, listarPorClave, listarTodos }

import { Anticipo, Persona } from '../../libs/db.js'

const listarTodos = async () => {
  const anticipos = await Anticipo.findAll({
    include: [
      {
        model: Persona,
        attributes: ['nombreCompleto', 'numeroIdentificacion', 'telefono'],
      },
    ],
    order: [['fechaEmision', 'DESC']],
  })

  return { code: 200, anticipos }
}

const listarPendientesPorPersona = async (id) => {
  const anticipos = await Anticipo.findAll({
    where: {
      PersonaId: id,
      estado: 'Pendiente',
    },
    include: [
      {
        model: Persona,
        attributes: ['nombreCompleto', 'numeroIdentificacion', 'telefono'],
      },
    ],
    order: [['fechaEmision', 'DESC']],
  })

  return { code: 200, anticipos }
}

export { listarTodos, listarPendientesPorPersona }

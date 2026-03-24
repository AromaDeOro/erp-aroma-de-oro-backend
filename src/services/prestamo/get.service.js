import { Prestamo, Persona } from '../../libs/db.js'

const listarTodosPrestamos = async () => {
  try {
    const prestamos = await Prestamo.findAll({
      include: [
        {
          model: Persona,
          attributes: ['nombreCompleto', 'numeroIdentificacion', 'telefono'],
        },
      ],
      // Ordenamos por los más recientes primero
      order: [['createdAt', 'DESC']],
    })

    return { code: 200, prestamos }
  } catch (error) {
    console.error(error)
    return { code: 500, message: 'Error al obtener los préstamos' }
  }
}

const listarPrestamosPendientesPorPersona = async (id) => {
  try {
    const prestamos = await Prestamo.findAll({
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
      order: [['createdAt', 'DESC']],
    })

    return { code: 200, prestamos }
  } catch (error) {
    console.error(error)
    return { code: 500, message: 'Error al obtener préstamos de la persona' }
  }
}

export { listarTodosPrestamos, listarPrestamosPendientesPorPersona }

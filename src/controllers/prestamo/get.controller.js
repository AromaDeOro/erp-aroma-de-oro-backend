import { prestamoService } from '../../services/index.services.js'

const listarTodosPrestamos = async (req, res) => {
  try {
    const { code, message, prestamos } = await prestamoService.listarTodosPrestamos()
    res.status(code).json(prestamos ? { prestamos } : { message })
  } catch (error) {
    console.error(error)
    return res.status(500).json({
      code: 500,
      message: 'Error interno del servidor al listar préstamos',
    })
  }
}

const listarPrestamosPendientesPorPersona = async (req, res) => {
  try {
    const { id } = req.params // Obtenemos el ID de la persona de la URL

    if (!id) {
      return res.status(400).json({
        code: 400,
        message: 'El ID de la persona es obligatorio',
      })
    }

    const { code, message, prestamos } =
      await prestamoService.listarPrestamosPendientesPorPersona(id)
    res.status(code).json(prestamos ? { prestamos } : { message })
  } catch (error) {
    console.error(error)
    return res.status(500).json({
      code: 500,
      message: 'Error interno del servidor al buscar préstamos del empleado',
    })
  }
}

export { listarTodosPrestamos, listarPrestamosPendientesPorPersona }

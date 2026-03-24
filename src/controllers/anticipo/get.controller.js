import { anticipoService } from '../../services/index.services.js'

const listarTodos = async (req, res) => {
  try {
    const { code, anticipos } = await anticipoService.listarTodos()
    res.status(code).json({ anticipos })
  } catch (error) {
    console.log(error.message)
    res.status(500).json({ message: 'Error interno en el sevidor. Intente de nuevo.' })
  }
}
const listarPendientesPorPersona = async (req, res) => {
  try {
    const { id } = req.params
    const { code, anticipos, message } = await anticipoService.listarPendientesPorPersona(id)
    res.status(code).json(message ? { message } : { anticipos })
  } catch (error) {
    console.log(error.message)
    res.status(500).json({ message: 'Error interno en el sevidor. Intente de nuevo.' })
  }
}

export { listarTodos, listarPendientesPorPersona }

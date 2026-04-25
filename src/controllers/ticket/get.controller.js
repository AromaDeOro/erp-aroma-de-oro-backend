import { ticketService } from '../../services/index.services.js'

const listarInformacion = async (req, res) => {
  try {
    const { id } = req.params
    const { code, message, ticket } = await ticketService.listarInformacion(id)

    res.status(code).json(message ? { message } : { ticket })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

const listarPorClave = async (req, res) => {
  try {
    const { clave, valor } = req.query

    const { code, tickets } = await ticketService.listarPorClave(clave, valor)

    res.status(code).json({ tickets })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

const listarTodos = async (req, res) => {
  try {
    const { code, tickets } = await ticketService.listarTodos()
    res.status(code).json({ tickets })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

export { listarInformacion, listarPorClave, listarTodos }

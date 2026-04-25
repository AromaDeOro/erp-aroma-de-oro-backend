import { personaService } from '../../services/index.services.js'

const registrarPersona = async (req, res) => {
  try {
    const data = req.body
    const { code, message, persona } = await personaService.registrarPersona(data)
    res.status(code).json(persona ? { persona, message } : { message })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

export { registrarPersona }

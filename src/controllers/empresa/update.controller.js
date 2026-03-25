import { empresaService } from '../../services/index.services.js'

const actualizarInformacion = async (req, res) => {
  try {
    const { id } = req.params
    const data = req.body

    const { code, message } = await empresaService.actualizarInformacion(id, data)

    res.status(code).json({ message })
  } catch (error) {
    console.log(error.message)
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

export { actualizarInformacion }

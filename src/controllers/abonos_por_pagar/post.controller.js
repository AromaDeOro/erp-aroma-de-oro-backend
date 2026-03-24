import { abonoPorPagarService } from '../../services/index.services.js'

const registrarAbono = async (req, res) => {
  try {
    const data = req.body
    const { code, message } = await abonoPorPagarService.registrarAbono(data)
    res.status(code).json({ message })
  } catch (error) {
    console.log(error.message)
    res.status(500).json({
      message: 'Error crítico en el servidor. Intente de nuevo',
    })
  }
}

export { registrarAbono }

import { anticipoService } from '../../services/index.services.js'

const crearAnticipo = async (req, res) => {
  try {
    const data = req.body
    console.log(data)
    const { code, message, caja } = await anticipoService.crearAnticipo(data)
    res.status(code).json(caja ? { message, caja } : { message })
  } catch (error) {
    console.log(error.message)
    res.status(500).json({
      message: 'Error crítico en el servidor. Intente de nuevo',
    })
  }
}

export { crearAnticipo }

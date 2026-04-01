import { anticipoService } from '../../services/index.services.js'

const actualizarAnticipo = async (req, res) => {
  try {
    const data = req.body
    const { code, message, caja } = await anticipoService.actualizarAnticipo(data)
    res.status(code).json(caja ? { caja, message } : { message })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo.',
    })
  }
}
export { actualizarAnticipo }

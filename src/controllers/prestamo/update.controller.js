import { prestamoService } from '../../services/index.services.js'

const actualizarPrestamo = async (req, res) => {
  try {
    const data = req.body
    const { code, message, caja } = await prestamoService.actualizarPrestamo(data)
    res.status(code).json(caja ? { caja, message } : { message })
  } catch (error) {
    res.status(500).json({
      message: error.message,
    })
  }
}

export { actualizarPrestamo }

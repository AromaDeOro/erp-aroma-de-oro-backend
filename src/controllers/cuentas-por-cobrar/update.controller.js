import { cuentasPorCobrarService } from '../../services/index.services.js'

const registrarCobro = async (req, res) => {
  try {
    const { code, message, cajaActualizada } = await cuentasPorCobrarService.registrarCobro(
      req.body
    )

    res.status(code).json(cajaActualizada ? { caja: cajaActualizada, message } : { message })
  } catch (error) {
    console.log(error.message)
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

export { registrarCobro }

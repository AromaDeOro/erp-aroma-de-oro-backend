import { gastoService } from '../../services/index.services.js'

const listarGastos = async (req, res) => {
  try {
    const { code, gastos } = await gastoService.listarGastos()
    res.status(code).json({ gastos })
  } catch (error) {
    console.log(error.message)
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

export { listarGastos }

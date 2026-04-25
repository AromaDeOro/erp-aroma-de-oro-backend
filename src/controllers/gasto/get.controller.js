import { gastoService } from '../../services/index.services.js'

const listarGastos = async (req, res) => {
  try {
    const { code, gastos } = await gastoService.listarGastos()
    res.status(code).json({ gastos })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

export { listarGastos }

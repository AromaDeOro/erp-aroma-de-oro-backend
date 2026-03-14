import { ventaService } from '../../services/index.services.js'

const listarVentas = async (req, res) => {
  try {
    const { code, ventas } = await ventaService.listarVentas()
    res.status(code).json({ ventas })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente más tarde.',
    })
  }
}

export { listarVentas }

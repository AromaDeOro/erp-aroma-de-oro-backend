import { productoService } from "../../services/index.services.js";

const listarProductos = async (req, res) => {
  try {
    const { code, productos } = await productoService.listarProductos();
    res.status(code).json({ productos });
  } catch (error) {
    res.status(500).json({
      message: "Error interno en el servidor. Intente de nuevo",
    });
  }
};

export { listarProductos };

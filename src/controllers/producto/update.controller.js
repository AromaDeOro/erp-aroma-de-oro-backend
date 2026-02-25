import { productoService } from "../../services/index.services.js";

const actualizarProducto = async (req, res) => {
  try {
    const { id } = req.params;
    const data = req.body;
    const { code, message } = await productoService.actualizarProducto(
      id,
      data,
    );
    res.status(code).json({ message });
  } catch (error) {
    res.status(500).json({
      message: "Error interno en el servidor. Intent de nuevo.",
    });
  }
};

export { actualizarProducto };

import { movimientoService } from "../../services/index.services.js";

const crearMovimiento = async (req, res) => {
  try {
    const data = req.body;
    const { code, message, movimiento } =
      await movimientoService.crearMovimiento(data);

    res.status(code).json(movimiento ? { movimiento, message } : { message });
  } catch (error) {
    res.status(code).json({
      message: "Error interno en el servidor. Intente de nuevo.",
    });
  }
};

export { crearMovimiento };

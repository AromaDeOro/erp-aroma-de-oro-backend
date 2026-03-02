import { cajaService } from "../../services/index.services.js";

const cerrarCaja = async (req, res) => {
  try {
    const { id } = req.params;
    const data = req.body;

    const { code, message, resumen } = await cajaService.cerrarCaja(id, data);

    res.status(code).json(resumen ? { message, resumen } : { message });
  } catch (error) {
    res.status(500).json({
      message: "Error interno en el servidor. Intente de nuevo.",
    });
  }
};

export { cerrarCaja };

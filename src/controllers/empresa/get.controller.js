import { empresaService } from "../../services/index.services.js";

const listarInformacion = async (req, res) => {
  try {
    const { code, empresa } = await empresaService.listarInformacion();
    res.status(code).json({ empresa });
  } catch (error) {
    res.status(500).json({
      messahe: "Error interno en el servidor. Intente más tarde",
    });
  }
};

export { listarInformacion };

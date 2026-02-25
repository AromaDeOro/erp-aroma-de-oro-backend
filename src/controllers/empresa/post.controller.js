import { empresaService } from "../../services/index.services.js";

const crearEmpresa = async (req, res) => {
  try {
    const data = req.body;
    const { code, empresa } = await empresaService.crearEmpresa(data);
    res.status(code).json({
      empresa,
    });
  } catch (error) {
    res.status(500).json({
      message: "Error interno en el servidor. Intente más tarde.",
    });
  }
};

export { crearEmpresa };

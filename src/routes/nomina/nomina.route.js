import { Router } from "express";
import { nominaControllers } from "../../controllers/index.controllers.js";

const nominaRouter = Router();

nominaRouter.get("/listar-todos", nominaControllers.listarPagos);

nominaRouter.get(
  "/listar/empleado/:persona_id",
  nominaControllers.listarPagosPorEmpleado,
);
nominaRouter.post("/pagar-jornal", nominaControllers.pagarJornal);
export default nominaRouter;

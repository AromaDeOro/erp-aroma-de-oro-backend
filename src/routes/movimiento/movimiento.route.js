import { Router } from "express";
import { movimientoControllers } from "../../controllers/index.controllers.js";

const movimientoRouter = Router();

movimientoRouter.post("/agregar", movimientoControllers.crearMovimiento);

movimientoRouter.get(
  "/listar/caja/:caja_id",
  movimientoControllers.listarPorCaja,
);

movimientoRouter.get("/listar/clave", movimientoControllers.listarPorClave);

movimientoRouter.get("/listar/rango", movimientoControllers.listarPorRango);

export default movimientoRouter;

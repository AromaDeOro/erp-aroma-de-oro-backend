import { Router } from "express";
import { cajaControllers } from "../../controllers/index.controllers.js";

const cajaRouter = Router();

cajaRouter.post("/abrir-caja", cajaControllers.abrirCaja);
cajaRouter.patch("/cerrar-caja/:id", cajaControllers.cerrarCaja);

cajaRouter.get("/listar/todas", cajaControllers.listarTodas);
cajaRouter.get("/listar/abiertas", cajaControllers.listarAbiertas);
cajaRouter.get("/listar/cerradas", cajaControllers.listarCerradas);
cajaRouter.get("/listar/rango", cajaControllers.listarPorRango);

export default cajaRouter;

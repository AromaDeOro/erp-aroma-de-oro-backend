import { Router } from "express";
import { personaControllers } from "../../controllers/index.controllers.js";

const personaRouter = Router();

personaRouter.get("/listar/todos", personaControllers.listarPersonas);

personaRouter.get("/buscar-persona", personaControllers.listarPersonaPorClave);

personaRouter.post("/agregar", personaControllers.registrarPersona);

personaRouter.put(
  "/actualizar-informacion/:id",
  personaControllers.actualizarPersona,
);

personaRouter.delete("/borrar-persona/:id", personaControllers.borrarPersona);

export default personaRouter;

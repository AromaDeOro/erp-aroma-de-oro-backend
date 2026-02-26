import { Router } from "express";
import { personaControllers } from "../../controllers/index.controllers.js";
import {
  jwtMiddlewares,
  validatorMiddlewares,
} from "../../middlewares/index.middlewares.js";
import { validatorPersona } from "../../validations/index.validations.js";

const personaRouter = Router();

personaRouter.get(
  "/listar/todos",
  jwtMiddlewares.verificarToken,
  personaControllers.listarPersonas,
);

personaRouter.get(
  "/buscar-persona",
  jwtMiddlewares.verificarToken,
  personaControllers.listarPersonaPorClave,
);

personaRouter.post(
  "/agregar",
  jwtMiddlewares.verificarToken,
  validatorPersona.validacionCrearPersona,
  validatorMiddlewares.validarDatos,
  personaControllers.registrarPersona,
);

personaRouter.put(
  "/actualizar-informacion/:id",
  jwtMiddlewares.verificarToken,
  personaControllers.actualizarPersona,
);

personaRouter.delete(
  "/borrar-persona/:id",
  jwtMiddlewares.verificarToken,
  personaControllers.borrarPersona,
);

export default personaRouter;

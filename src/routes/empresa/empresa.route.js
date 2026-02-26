import { Router } from "express";
import { empresaControllers } from "../../controllers/index.controllers.js";
import {
  jwtMiddlewares,
  validatorMiddlewares,
} from "../../middlewares/index.middlewares.js";
import { validatorEmpresa } from "../../validations/index.validations.js";
empresaControllers;

const empresaRouter = Router();

empresaRouter.get(
  "/info",
  jwtMiddlewares.verificarToken,
  empresaControllers.listarInformacion,
);
empresaRouter.post(
  "/create",
  jwtMiddlewares.verificarToken,
  validatorEmpresa.validacionCrearEmpresa,
  validatorMiddlewares.validarDatos,
  empresaControllers.crearEmpresa,
);
empresaRouter.put(
  "/update/:id",
  jwtMiddlewares.verificarToken,
  empresaControllers.actualizarInformacion,
);

export default empresaRouter;

import { Router } from "express";
import { usuarioControllers } from "../../controllers/index.controllers.js";

const usuarioRouter = Router();

usuarioRouter.get("/todos", usuarioControllers.listarUsuarios);
usuarioRouter.get("/buscar-usuario", usuarioControllers.listarUsuarioPorClave);

usuarioRouter.post("/agregar", usuarioControllers.agregarUsuario);

usuarioRouter.delete("/borrar-usuario/:id", usuarioControllers.borrarUsuario);

usuarioRouter.put(
  "/actualizar-informacion/:id",
  usuarioControllers.actualizarInformacion,
);

usuarioRouter.put(
  "/actualizar-contraseña/:id",
  usuarioControllers.actualizarClave,
);

export default usuarioRouter;

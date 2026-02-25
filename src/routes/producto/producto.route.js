import { Router } from "express";
import { productoControllers } from "../../controllers/index.controllers.js";

const productoRouter = Router();

productoRouter.get("/todos", productoControllers.listarProductos);
productoRouter.post("/agregar", productoControllers.crearProducto);
productoRouter.put(
  "/actualizar-informacion/:id",
  productoControllers.actualizarProducto,
);

export default productoRouter;

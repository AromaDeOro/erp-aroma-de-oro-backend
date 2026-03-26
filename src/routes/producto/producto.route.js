import { Router } from 'express'
import { productoControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares, validatorMiddlewares } from '../../middlewares/index.middlewares.js'
import { validatorProducto } from '../../validations/index.validations.js'

const productoRouter = Router()

productoRouter.get('/todos', productoControllers.listarProductos)
productoRouter.post(
  '/agregar',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  validatorMiddlewares.validarDatos,
  validatorProducto.validacionCrearProducto,
  productoControllers.crearProducto
)
productoRouter.patch(
  '/actualizar-informacion/:id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  productoControllers.actualizarProducto
)

productoRouter.patch(
  '/eliminar-producto/:id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  productoControllers.eliminarProducto
)

productoRouter.patch(
  '/recuperar-producto/:id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  productoControllers.recuperarProducto
)

export default productoRouter

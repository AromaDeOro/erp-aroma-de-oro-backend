import { Router } from 'express'
import { movimientoControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const movimientoRouter = Router()

movimientoRouter.post(
  '/agregar',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  movimientoControllers.crearMovimiento
)

movimientoRouter.get(
  '/listar/caja/:caja_id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  movimientoControllers.listarPorCaja
)

movimientoRouter.get(
  '/listar/clave',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  movimientoControllers.listarPorClave
)

movimientoRouter.get(
  '/listar/rango',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  movimientoControllers.listarPorRango
)
movimientoRouter.get(
  '/listar/todos',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  movimientoControllers.listarTodos
)

export default movimientoRouter

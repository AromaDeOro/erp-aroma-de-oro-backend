import { Router } from 'express'
import { nominaControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const nominaRouter = Router()

nominaRouter.get(
  '/listar-todos',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  nominaControllers.listarPagos
)

nominaRouter.get(
  '/listar/empleado/:persona_id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  nominaControllers.listarPagosPorEmpleado
)
nominaRouter.post(
  '/pagar-jornal',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  nominaControllers.procesarPagoNomina
)
export default nominaRouter

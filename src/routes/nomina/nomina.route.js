import { Router } from 'express'
import { nominaControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const nominaRouter = Router()

nominaRouter.get('/listar-todos', jwtMiddlewares.verificarToken, nominaControllers.listarPagos)

nominaRouter.get('/listar/empleado/:persona_id', nominaControllers.listarPagosPorEmpleado)
nominaRouter.post(
  '/pagar-jornal',
  jwtMiddlewares.verificarToken,
  nominaControllers.procesarPagoNomina
)
export default nominaRouter

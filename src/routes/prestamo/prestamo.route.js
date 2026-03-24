import { Router } from 'express'
import { prestamoControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const prestamoRouter = Router()

prestamoRouter.post(
  '/crear-prestamo',
  jwtMiddlewares.verificarToken,
  prestamoControllers.crearPrestamo
)

prestamoRouter.get(
  '/listar-todos',
  jwtMiddlewares.verificarToken,
  prestamoControllers.listarTodosPrestamos
)
prestamoRouter.get(
  '/listar-pendientes/:id',
  jwtMiddlewares.verificarToken,
  prestamoControllers.listarPrestamosPendientesPorPersona
)

export default prestamoRouter

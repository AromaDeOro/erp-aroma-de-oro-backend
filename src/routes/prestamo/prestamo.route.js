import { Router } from 'express'
import { prestamoControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const prestamoRouter = Router()

prestamoRouter.post(
  '/crear-prestamo',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  prestamoControllers.crearPrestamo
)

prestamoRouter.get(
  '/listar-todos',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  prestamoControllers.listarTodosPrestamos
)
prestamoRouter.get(
  '/listar-pendientes/:id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  prestamoControllers.listarPrestamosPendientesPorPersona
)

export default prestamoRouter

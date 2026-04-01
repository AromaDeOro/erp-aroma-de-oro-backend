import { Router } from 'express'
import { anticipoControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const anticipoRouter = Router()

anticipoRouter.post(
  '/crear-anticipo',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  anticipoControllers.crearAnticipo
)
anticipoRouter.get(
  '/listar-todos',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  anticipoControllers.listarTodos
)
anticipoRouter.get(
  '/obtener-pendientes/:id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  anticipoControllers.listarPendientesPorPersona
)

anticipoRouter.patch(
  '/actualizar-anticipo',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  anticipoControllers.actualizarAnticipo
)

export default anticipoRouter

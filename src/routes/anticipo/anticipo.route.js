import { Router } from 'express'
import { anticipoControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const anticipoRouter = Router()

anticipoRouter.post(
  '/crear-anticipo',
  jwtMiddlewares.verificarToken,
  anticipoControllers.crearAnticipo
)
anticipoRouter.get('/listar-todos', jwtMiddlewares.verificarToken, anticipoControllers.listarTodos)
anticipoRouter.get(
  '/obtener-pendientes/:id',
  jwtMiddlewares.verificarToken,
  anticipoControllers.listarPendientesPorPersona
)

export default anticipoRouter

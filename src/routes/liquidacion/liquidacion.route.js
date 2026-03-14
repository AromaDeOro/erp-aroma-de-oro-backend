import { liquidacionControllers } from '../../controllers/index.controllers.js'
import { Router } from 'express'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const liquidacionRouter = Router()

liquidacionRouter.post(
  '/crear-liquidacion',
  jwtMiddlewares.verificarToken,
  liquidacionControllers.registrarLiquidacion
)

liquidacionRouter.get(
  '/listar/todas',
  jwtMiddlewares.verificarToken,
  liquidacionControllers.listarTodas
)

liquidacionRouter.get(
  '/listar/productor/:id',
  jwtMiddlewares.verificarToken,
  liquidacionControllers.listarPorProductor
)

liquidacionRouter.get(
  '/listar/usuario/:id',
  jwtMiddlewares.verificarToken,
  liquidacionControllers.listarPorUsuario
)

export default liquidacionRouter

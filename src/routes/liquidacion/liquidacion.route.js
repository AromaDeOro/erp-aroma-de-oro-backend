import { liquidacionControllers } from '../../controllers/index.controllers.js'
import { Router } from 'express'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const liquidacionRouter = Router()

liquidacionRouter.post(
  '/crear-liquidacion',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  liquidacionControllers.registrarLiquidacion
)

liquidacionRouter.get(
  '/listar/todas',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  liquidacionControllers.listarTodas
)

liquidacionRouter.get(
  '/listar/productor/:id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  liquidacionControllers.listarPorProductor
)

liquidacionRouter.get(
  '/listar/usuario/:id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  liquidacionControllers.listarPorUsuario
)

export default liquidacionRouter

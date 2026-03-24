import { Router } from 'express'
import { cuentasPorCobrarControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const cuentasPorCobrarRouter = Router()

cuentasPorCobrarRouter.get(
  '/todas',
  jwtMiddlewares.verificarToken,
  cuentasPorCobrarControllers.listarTodas
)
cuentasPorCobrarRouter.get(
  '/listar/pendientes',
  jwtMiddlewares.verificarToken,
  cuentasPorCobrarControllers.listarPendientes
)
cuentasPorCobrarRouter.get(
  '/listar/cobradas',
  jwtMiddlewares.verificarToken,
  cuentasPorCobrarControllers.listarCobradas
)

cuentasPorCobrarRouter.get(
  '/informacion/:id',
  jwtMiddlewares.verificarToken,
  cuentasPorCobrarControllers.obtenerInformacion
)

cuentasPorCobrarRouter.patch(
  '/registrar-cobro',
  jwtMiddlewares.verificarToken,
  cuentasPorCobrarControllers.registrarCobro
)

export default cuentasPorCobrarRouter

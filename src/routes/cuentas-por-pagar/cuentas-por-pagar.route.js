import { Router } from 'express'
import { cuentasPorPagarControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const cuentasPorPagarRouter = Router()

cuentasPorPagarRouter.get(
  '/todas',
  jwtMiddlewares.verificarToken,
  cuentasPorPagarControllers.listarTodas
)
cuentasPorPagarRouter.get(
  '/listar/pendientes',
  jwtMiddlewares.verificarToken,
  cuentasPorPagarControllers.listarPendientes
)
cuentasPorPagarRouter.get(
  '/listar/pagadas',
  jwtMiddlewares.verificarToken,
  cuentasPorPagarControllers.listarPagadas
)

cuentasPorPagarRouter.get(
  '/informacion/:id',
  jwtMiddlewares.verificarToken,
  cuentasPorPagarControllers.obtenerInformacion
)

export default cuentasPorPagarRouter

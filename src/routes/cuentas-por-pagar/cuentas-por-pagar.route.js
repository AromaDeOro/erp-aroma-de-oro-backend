import { Router } from 'express'
import { cuentasPorPagarControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const cuentasPorPagarRouter = Router()

cuentasPorPagarRouter.get(
  '/todas',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  cuentasPorPagarControllers.listarTodas
)
cuentasPorPagarRouter.get(
  '/listar/pendientes',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  cuentasPorPagarControllers.listarPendientes
)
cuentasPorPagarRouter.get(
  '/listar/pagadas',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  cuentasPorPagarControllers.listarPagadas
)

cuentasPorPagarRouter.get(
  '/informacion/:id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  cuentasPorPagarControllers.obtenerInformacion
)

export default cuentasPorPagarRouter

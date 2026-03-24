import { Router } from 'express'
import { abonosPorCobrarControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const abonosPorCobrarRouter = Router()

abonosPorCobrarRouter.get(
  '/historial/:id',
  jwtMiddlewares.verificarToken,
  abonosPorCobrarControllers.listarPorCxc
)

export default abonosPorCobrarRouter

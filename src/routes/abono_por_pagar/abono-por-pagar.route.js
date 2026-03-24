import { Router } from 'express'
import { abonoPorPagarControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const abonoPorPagarRouter = Router()

abonoPorPagarRouter.post(
  '/abonar',
  jwtMiddlewares.verificarToken,
  abonoPorPagarControllers.registrarAbono
)

export default abonoPorPagarRouter

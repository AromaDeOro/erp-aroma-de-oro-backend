import { Router } from 'express'
import { ventaControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const ventaRouter = Router()

ventaRouter.get('/listar/todas', jwtMiddlewares.verificarToken, ventaControllers.listarVentas)

export default ventaRouter

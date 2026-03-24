import { Router } from 'express'
import { gastoControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares } from '../../middlewares/index.middlewares.js'

const gastoRouter = Router()

gastoRouter.post('/crear-gasto', jwtMiddlewares.verificarToken, gastoControllers.crearGasto)
gastoRouter.get('/listar-gastos', jwtMiddlewares.verificarToken, gastoControllers.listarGastos)

export default gastoRouter

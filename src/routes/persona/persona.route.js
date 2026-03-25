import { Router } from 'express'
import { personaControllers } from '../../controllers/index.controllers.js'
import { jwtMiddlewares, validatorMiddlewares } from '../../middlewares/index.middlewares.js'
import { validatorPersona } from '../../validations/index.validations.js'

const personaRouter = Router()

personaRouter.get(
  '/listar/todos',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  personaControllers.listarPersonas
)

personaRouter.get(
  '/listar/productores',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  personaControllers.listarProductores
)

personaRouter.get(
  '/listar/trabajadores',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  personaControllers.listarTrabajadores
)

personaRouter.get(
  '/listar/compradores',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  personaControllers.listarCompradores
)

personaRouter.get(
  '/buscar-persona',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  personaControllers.listarPersonaPorClave
)

personaRouter.post(
  '/agregar',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  validatorMiddlewares.validarDatos,
  personaControllers.registrarPersona
)

personaRouter.patch(
  '/actualizar-informacion/:id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  personaControllers.actualizarPersona
)

personaRouter.delete(
  '/borrar-persona/:id',
  jwtMiddlewares.verificarToken,
  jwtMiddlewares.rolesAdmitidos('Administrador', 'Contador'),
  personaControllers.borrarPersona
)

export default personaRouter

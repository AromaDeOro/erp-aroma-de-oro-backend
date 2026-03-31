import { borrarPersona } from './delete.controller.js'
import {
  listarPersonas,
  listarPersonaPorClave,
  listarTrabajadores,
  listarCompradores,
  listarProductores,
  listarProximosCumples,
} from './get.controller.js'
import { registrarPersona } from './post.controller.js'
import {
  actualizarPersona,
  recuperarComprador,
  recuperarProductor,
  recuperarTrabajador,
} from './update.controller.js'

export default {
  listarPersonas,
  listarPersonaPorClave,
  registrarPersona,
  borrarPersona,
  actualizarPersona,
  listarTrabajadores,
  listarCompradores,
  listarProductores,
  recuperarComprador,
  recuperarTrabajador,
  recuperarProductor,
  listarProximosCumples,
}

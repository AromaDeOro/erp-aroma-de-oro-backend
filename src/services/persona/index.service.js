import { borrarPersona } from './delete.service.js'
import {
  listarCompradores,
  listarPersonaPorClave,
  listarPersonas,
  listarProductores,
  listarProximosCumples,
  listarTrabajadores,
} from './get.service.js'
import { registrarPersona } from './post.service.js'
import {
  actualizarPersona,
  recuperarComprador,
  recuperarProductor,
  recuperarTrabajador,
} from './update.service.js'

export default {
  registrarPersona,
  listarPersonas,
  listarPersonaPorClave,
  listarCompradores,
  listarTrabajadores,
  listarProductores,
  borrarPersona,
  actualizarPersona,
  recuperarComprador,
  recuperarProductor,
  recuperarTrabajador,
  listarProximosCumples,
}

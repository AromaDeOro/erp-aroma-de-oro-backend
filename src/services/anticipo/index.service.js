import { listarPendientesPorPersona, listarTodos } from './get.service.js'
import { crearAnticipo } from './post.service.js'
import { actualizarAnticipo } from './update.service.js'

export default {
  crearAnticipo,
  listarTodos,
  listarPendientesPorPersona,
  actualizarAnticipo,
}

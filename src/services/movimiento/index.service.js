import { listarPorCaja, listarPorClave, listarPorRango, listarTodos } from './get.service.js'
import { crearMovimiento } from './post.service.js'

export default {
  crearMovimiento,
  listarPorCaja,
  listarPorClave,
  listarPorRango,
  listarTodos,
}

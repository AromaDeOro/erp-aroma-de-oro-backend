import { listarProductos } from './get.controller.js'
import { crearProducto } from './post.controller.js'
import { actualizarProducto, eliminarProducto, recuperarProducto } from './update.controller.js'

export default {
  actualizarProducto,
  crearProducto,
  listarProductos,
  eliminarProducto,
  recuperarProducto,
}

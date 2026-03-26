import { listarProductos } from './get.service.js'
import { crearProducto } from './post.service.js'
import { actualizarProducto, eliminarProducto, recuperarProducto } from './update.service.js'

export default {
  listarProductos,
  crearProducto,
  actualizarProducto,
  eliminarProducto,
  recuperarProducto,
}

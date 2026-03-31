import { listarPrestamosPendientesPorPersona, listarTodosPrestamos } from './get.controller.js'
import { crearPrestamo } from './post.controller.js'
import { actualizarPrestamo } from './update.controller.js'

export default {
  crearPrestamo,
  listarTodosPrestamos,
  listarPrestamosPendientesPorPersona,
  actualizarPrestamo,
}

import { listarPrestamosPendientesPorPersona, listarTodosPrestamos } from './get.service.js'
import { crearPrestamo } from './post.service.js'

export default {
  crearPrestamo,
  listarTodosPrestamos,
  listarPrestamosPendientesPorPersona,
}

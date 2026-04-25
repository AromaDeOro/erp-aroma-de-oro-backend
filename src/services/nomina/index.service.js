import { eliminarTrabajador } from './delete.service.js'
import { listarPagos, listarPagosPorEmpleado } from './get.service.js'
import { procesarPagoNomina } from './post.service.js'

export default {
  listarPagos,
  listarPagosPorEmpleado,
  procesarPagoNomina,
  eliminarTrabajador,
}

import { eliminarTrabajador } from './delete.controller.js'
import { listarPagos, listarPagosPorEmpleado } from './get.controller.js'
import { procesarPagoNomina } from './post.controller.js'

export default {
  listarPagos,
  listarPagosPorEmpleado,
  procesarPagoNomina,
  eliminarTrabajador,
}

import {
  listarCerradas,
  listarPorRango,
  listarTodas,
  obtenerCajaAbierta,
} from './get.controller.js'
import { abrirCaja } from './post.controller.js'
import {
  cerrarCaja,
  corregirDescuadre,
  postInyeccionBanco,
  reAperturarCaja,
  registrarVentaRapida,
  updateDataCaja,
} from './update.controller.js'

export default {
  abrirCaja,
  obtenerCajaAbierta,
  listarCerradas,
  listarTodas,
  listarPorRango,
  cerrarCaja,
  postInyeccionBanco,
  registrarVentaRapida,
  reAperturarCaja,
  updateDataCaja,
  corregirDescuadre,
}

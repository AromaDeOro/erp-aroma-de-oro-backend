import { obtenerCajaAbierta, listarCerradas, listarPorRango, listarTodas } from './get.service.js'
import { abrirCaja } from './post.service.js'
import {
  cerrarCaja,
  reAperturarCaja,
  registrarInyeccionBanco,
  registrarVentaRapida,
} from './update.service.js'

export default {
  abrirCaja,
  cerrarCaja,
  obtenerCajaAbierta,
  listarCerradas,
  listarPorRango,
  listarTodas,
  registrarInyeccionBanco,
  registrarVentaRapida,
  reAperturarCaja,
}

import {
  listarAbiertas,
  listarCerradas,
  listarPorRango,
  listarTodas,
} from "./get.controller.js";
import { abrirCaja } from "./post.controller.js";
import { cerrarCaja } from "./update.controller.js";

export default {
  abrirCaja,
  listarAbiertas,
  listarCerradas,
  listarTodas,
  listarPorRango,
  cerrarCaja,
};

import {
  listarPorCaja,
  listarPorClave,
  listarPorRango,
} from "./get.controller.js";
import { crearMovimiento } from "./post.controller.js";

export default {
  crearMovimiento,
  listarPorCaja,
  listarPorRango,
  listarPorClave,
};

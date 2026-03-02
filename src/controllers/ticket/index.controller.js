import {
  listarInformacion,
  listarPorClave,
  listarTodos,
} from "./get.controller.js";
import { crearTicket } from "./post.controller.js";
import { actualizarInformacion } from "./update.controller.js";

export default {
  listarInformacion,
  listarPorClave,
  listarTodos,
  crearTicket,
  actualizarInformacion,
};

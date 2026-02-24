import { borrarPersona } from "./delete.service.js";
import { listarPersonaPorClave, listarPersonas } from "./get.service.js";
import { registrarPersona } from "./post.service.js";
import { actualizarPersona } from "./update.service.js";



export default {
    registrarPersona,
    listarPersonas,
    listarPersonaPorClave,
    borrarPersona,
    actualizarPersona
}
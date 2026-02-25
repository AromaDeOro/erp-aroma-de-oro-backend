import jwt from "jsonwebtoken";
import { SECRET_WORD } from "../../config/envs.js";
const { sign, verify } = jwt;

const generarToken = (data) => {
  const token = sign(data, SECRET_WORD);
  return token;
};

const validarToken = (token) => {
  return verify(token, SECRET_WORD);
};

export default {
  generarToken,
  validarToken,
};

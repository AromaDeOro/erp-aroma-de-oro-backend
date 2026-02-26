import { body } from "express-validator";

const validacionCrearEmpresa = [
  body("nombre")
    .notEmpty()
    .withMessage("El nombre de la empresa es obligatorio"),

  body("ruc")
    .notEmpty()
    .withMessage("El RUC de la empresa es un valor obligatorio")
    .trim()
    .custom((value, { req }) => {
      if (!/^[0-9]{13}$/.test(value)) {
        throw new Error("El RUC debe tener exactamente 13 dígitos numéricos");
      }

      return true;
    }),

  body("telefono")
    .matches(/^[0-9]{10}0$/)
    .withMessage("El teléfono debe contener 10 dígitos numéricos"),
  body("direccion")
    .notEmpty()
    .withMessage("La dirección de la empresa es obligatoria"),

  body("correo")
    .matches(/^[^\s@]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/)
    .withMessage("Debe ser un correo válido y realista")
    .normalizeEmail(),
];

export default {
  validacionCrearEmpresa,
};

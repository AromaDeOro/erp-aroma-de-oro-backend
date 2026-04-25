import { body } from 'express-validator'

const validacionCrearUsuario = [
  body('cedula')
    .notEmpty()
    .withMessage('La cédula es obligatoria')
    .matches(/^[0-9]{10}$/)
    .withMessage('La cédula debe tener exactamente 10 dígitos numéricos'),

  body('telefono')
    .notEmpty()
    .withMessage('El teléfono es obligatorio')
    .matches(/^[0-9]{10}$/)
    .withMessage('El teléfono debe tener exactamente 10 dígitos numéricos'),
]

export default {
  validacionCrearUsuario,
}

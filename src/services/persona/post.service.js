import { Persona } from '../../libs/db.js'

const registrarPersona = async (data) => {
  const { numeroIdentificacion, telefono, correo, fechaNacimiento } = data

  const fechaAjustada = fechaNacimiento ? `${fechaNacimiento}T12:00:00` : null

  const existeIdentificacion = await Persona.findOne({
    where: {
      numeroIdentificacion,
    },
  })

  if (existeIdentificacion) {
    return {
      code: 400,
      message: 'Ya existe una persona registrada con este número de identificación',
    }
  }

  if (existeIdentificacion) {
    return {
      code: 400,
      message: 'Ya existe una persona registrada con este número de teléfono',
    }
  }

  if (correo) {
    const existeEmail = await Persona.findOne({
      where: {
        correo,
      },
    })

    if (existeEmail) {
      return {
        code: 400,
        message: 'Ya existe una persona registrada con este correo electrónico',
      }
    }
  }

  const persona = await Persona.create({ ...data, fechaNacimiento: fechaAjustada })
  return persona
    ? {
        code: 201,
        message: 'Persona registrada exitosamente',
        persona,
      }
    : {
        code: 400,
        message: 'Persona no registrada. Intente de nuevo',
      }
}

export { registrarPersona }

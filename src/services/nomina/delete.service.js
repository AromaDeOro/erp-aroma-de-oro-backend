import { Persona } from '../../libs/db.js'

const eliminarTrabajador = async (id) => {
  try {
    const trabajador = await Persona.findOne({
      where: {
        id,
        tipo: 'Trabajador',
      },
    })

    if (!trabajador) return { code: 400, messsage: 'No se encontró al trabajador' }

    await trabajador.destroy()
    return { code: 200, messsage: 'Trabajador eliminado con éxito' }
  } catch (error) {
    throw new Error(error.messsage)
  }
}

export { eliminarTrabajador }

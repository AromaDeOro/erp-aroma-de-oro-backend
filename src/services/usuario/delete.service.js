import { Persona, Usuario } from '../../libs/db.js'

const borrarUsuario = async (id) => {
  const usuario = await Usuario.findOne({
    where: {
      id,
    },
  })

  if (!usuario) return { code: 404, message: 'Usuario no encontrado' }

  if (usuario.rol === 'Administrador') {
    const administradores = await Usuario.findAll({
      where: {
        esAdministrador: true,
      },
    })

    if (administradores.length === 1) {
      return {
        code: 400,
        message:
          'Error al eliminar. Solo existe 1 usuario administrador. Agrega otro administrador antes de eliminar a este usuario.',
      }
    }
  }

  await usuario.update({
    estaActivo: false,
  })

  const persona = await Persona.findOne({
    where: {
      numeroIdentificacion: usuario.cedula,
    },
  })

  if (persona) {
    await persona.update({
      estaActivo: false,
    })
  }

  return {
    code: 200,
    message: 'Usuario eliminado con éxito',
  }
}

export { borrarUsuario }

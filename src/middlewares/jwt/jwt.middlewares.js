import { request, response } from 'express'
import { Usuario } from '../../libs/db.js'
import { jwtUtils } from '../../utils/index.utils.js'

const verificarToken = async (req = request, res = response, next) => {
  try {
    const token = req.header('x-token')

    if (!token) return res.status(401).json({ message: 'No existe token en la petición' })

    const { id } = jwtUtils.validarToken(token)

    // Buscamos al usuario que está haciendo la petición (quien emitió el token)
    const usuarioAuth = await Usuario.findOne({ where: { id } })

    if (!usuarioAuth || !usuarioAuth.estaActivo) {
      return res.status(401).json({ message: 'Usuario no válido o inactivo' })
    }

    // Guardamos el usuario completo en la request para usarlo luego
    req.usuario = usuarioAuth

    next()
  } catch (error) {
    res.status(401).json({ message: 'Token no válido.' })
  }
}

export { verificarToken }

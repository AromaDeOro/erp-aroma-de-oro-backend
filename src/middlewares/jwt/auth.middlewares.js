const rolesAdmitidos = (...rolesPermitidos) => {
  return (req, res, next) => {
    const usuarioLogueado = req.usuario
    if (!usuarioLogueado) {
      return res.status(401).json({
        message: 'No autorizado',
      })
    }

    if (!rolesPermitidos.includes(usuarioLogueado.rol)) {
      return res.status(403).json({
        message: `Permisos insuficientes. Se requiere ser ${rolesPermitidos.join(' o ')}`,
      })
    }

    next()
  }
}

export { rolesAdmitidos }

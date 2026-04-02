import { Caja, Gasto, Usuario } from '../../libs/db.js'

const listarGastos = async () => {
  const gastos = await Gasto.findAll({
    // --- ORDENAMIENTO ---
    // 'DESC' hace que el registro con la fecha más reciente aparezca primero
    order: [['createdAt', 'DESC']],

    include: [
      {
        model: Caja,
      },
      {
        model: Usuario,
        // Si no quieres mandar la contraseña al frontend,
        // puedes excluir atributos aquí por seguridad:
        attributes: { exclude: ['clave'] },
      },
    ],
  })

  return {
    code: 200,
    gastos,
  }
}

export { listarGastos }

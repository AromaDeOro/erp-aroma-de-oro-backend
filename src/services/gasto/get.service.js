import { Caja, Gasto, Usuario } from '../../libs/db.js'

const listarGastos = async () => {
  const gastos = await Gasto.findAll({
    include: [
      {
        model: Caja,
      },
      {
        model: Usuario,
      },
    ],
  })

  return {
    code: 200,
    gastos,
  }
}

export { listarGastos }

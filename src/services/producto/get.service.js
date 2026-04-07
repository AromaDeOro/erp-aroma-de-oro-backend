import { DetalleLiquidacion, Producto, Venta } from '../../libs/db.js'

const listarProductos = async () => {
  const productos = await Producto.findAll({
    include: [{ model: DetalleLiquidacion }, { model: Venta }],
    order: [['fechaCreacion', 'DESC']],
  })

  return {
    code: 200,
    productos,
  }
}

export { listarProductos }

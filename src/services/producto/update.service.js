import { Producto } from '../../libs/db.js'

const actualizarProducto = async (id, data) => {
  const producto = await Producto.findOne({
    where: {
      id,
    },
  })

  if (!producto) {
    return { code: 404, message: 'Producto no encontrado' }
  }

  await producto.update(data)

  return {
    code: 200,
    message: 'Información del producto actualizada con éxito',
  }
}

const eliminarProducto = async (id) => {
  const producto = await Producto.findByPk(id)
  if (!producto) return { code: 404, message: 'Producto no encontrado' }

  if (!producto.estaActivo) return { code: 400, message: 'El producto ya se encuentra archivado' }

  await producto.update({
    estaActivo: false,
  })

  return { code: 200, message: 'Producto archivado con éxito' }
}

const recuperarProducto = async (id) => {
  const producto = await Producto.findByPk(id)
  if (!producto) return { code: 404, message: 'Producto no encontrado' }

  if (producto.estaActivo) return { code: 400, message: 'El producto se encuentra activo' }

  await producto.update({
    estaActivo: true,
  })

  return { code: 200, message: 'Producto recuperado con éxito' }
}

export { actualizarProducto, eliminarProducto, recuperarProducto }

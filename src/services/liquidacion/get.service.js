import {
  AbonosCuentasPorPagar,
  Anticipo,
  CuentasPorPagar,
  DetalleLiquidacion,
  Liquidacion,
  Persona,
  Producto,
  Retencion,
  Usuario,
} from '../../libs/db.js'

const listarTodas = async () => {
  const liquidaciones = await Liquidacion.findAll({
    include: [
      {
        model: Persona,
        attributes: ['id', 'nombreCompleto', 'numeroIdentificacion', 'telefono', 'direccion'],
      },
      {
        model: DetalleLiquidacion,
        include: [{ model: Producto, attributes: ['nombre'] }],
      },
      {
        model: Retencion,
      },
      {
        // AQUÍ ESTÁ EL TRUCO: Incluimos la tabla intermedia y el modelo Anticipo
        model: Anticipo,
        through: {
          attributes: ['montoAplicado'], // Traemos cuánto se usó de ese anticipo específico
        },
        include: [
          {
            model: Usuario,
          },
        ],
      },
      {
        model: CuentasPorPagar,
        include: [AbonosCuentasPorPagar],
      },
    ],
    order: [['createdAt', 'DESC']],
  })

  return { code: 200, liquidaciones }
}

const listarPorProductor = async (id) => {
  const productor = await Persona.findOne({
    where: {
      id,
      tipo: 'Productor',
    },
  })

  if (!productor) return { code: 400, message: 'Productor no encontrado' }

  const liquidaciones = await Liquidacion.findAll({
    where: {
      ProductorId: id,
    },
    include: [Ticket],
  })

  return { code: 200, liquidaciones }
}

const listarPorUsuario = async (id) => {
  const usuario = await Usuario.findOne({
    where: {
      id,
    },
  })

  if (!usuario) return { code: 400, message: 'Usuario no encontrado' }

  const liquidaciones = await Liquidacion.findAll({
    where: {
      UsuarioId: id,
    },
    include: [Persona, Ticket],
  })

  return { code: 200, liquidaciones }
}

export { listarTodas, listarPorProductor, listarPorUsuario }

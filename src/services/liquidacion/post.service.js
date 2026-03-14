import {
  Liquidacion,
  Persona,
  Ticket,
  Usuario,
  Caja,
  Movimiento,
  CuentasPorPagar,
  sq,
  DetalleLiquidacion,
  Producto,
  Retencion,
} from '../../libs/db.js'

const registrarLiquidacion = async (data) => {
  const { liquidacion, detalle, retencion, CajaId } = data
  const { TicketId, UsuarioId, ProductorId } = liquidacion

  const [usuario, productor, ticket, caja] = await Promise.all([
    Usuario.findOne({ where: { id: UsuarioId } }),
    Persona.findOne({ where: { id: ProductorId, tipo: 'Productor' } }),
    Ticket.findOne({
      where: {
        id: TicketId,
      },
    }),
    CajaId
      ? Caja.findOne({
          where: {
            id: CajaId,
          },
        })
      : null,
  ])

  if (!usuario) return { code: 400, message: 'Usuario no encontrado.' }
  if (!productor) return { code: 400, message: 'El productor no existe.' }
  if (!ticket) return { code: 400, message: 'El ticket no existe.' }

  if (ticket.estadoTicket === 'Liquidado')
    return { code: 400, message: 'Operación cancelada. El ticket ya fue liquidado.' }

  if (!caja)
    return {
      code: 400,
      message: 'Debe existir una caja para esta operación',
    }

  if (caja.estado !== 'Abierta')
    return {
      code: 400,
      message: 'La caja se encuentra cerrada. Debe abrir una caja nueva para registrar.',
    }

  const t = await sq.transaction()

  try {
    const totalLiquidaciones = await Liquidacion.count({ transaction: t })
    const codigoLiq = 'LIQ-' + String(totalLiquidaciones + 1).padStart(7, '0')

    // Crear nueva liquidacion
    const nuevaLiquidacion = await Liquidacion.create(
      {
        ...liquidacion,
        codigo: codigoLiq,
      },
      {
        transaction: t,
      }
    )

    // Crear detalle de liquidacion
    await DetalleLiquidacion.create(
      { ...detalle, LiquidacionId: nuevaLiquidacion.id },
      { transaction: t }
    )

    // Actualizar Stocok en inventario

    const producto = await Producto.findOne({
      where: {
        id: detalle.ProductoId,
      },
    })

    await producto.update(
      {
        stock: parseFloat(producto.stock) + parseFloat(detalle.cantidad),
      },
      {
        transaction: t,
      }
    )

    if (retencion) {
      await Retencion.create(
        {
          ...retencion,
          LiquidacionId: nuevaLiquidacion.id,
        },
        {
          transaction: t,
        }
      )
    }

    // Cuentas por pagar
    const saldoPendiente = parseFloat(liquidacion.montoPorPagar)
    if (saldoPendiente > 0) {
      await CuentasPorPagar.create(
        {
          montoTotal: liquidacion.totalAPagar,
          montoAbonado: liquidacion.montoAbonado,
          saldoPendiente: saldoPendiente,
          estado: saldoPendiente > 0 ? 'Pendiente' : 'Pagado',
          LiquidacionId: nuevaLiquidacion.id,
        },
        {
          transaction: t,
        }
      )
    }

    if (parseFloat(liquidacion.montoAbonado) > 0) {
      await Movimiento.create(
        {
          tipoMovimiento: 'Egreso',
          categoria: 'Compra',
          monto: Liquidacion.montoAbonado,
          idReferencia: nuevaLiquidacion.id,
          CajaId: CajaId,
        },
        {
          transaction: t,
        }
      )
    }

    // Finalizar ticket
    await ticket.update(
      {
        estadoTicket: 'Liquidado',
      },
      {
        transaction: t,
      }
    )

    await t.commit()

    return {
      code: 201,
      message: 'Liquidacion creada con existo',
      id: nuevaLiquidacion.id,
    }
  } catch (error) {
    await t.rollback()
    console.log('Fallo en registrarLiquidacion', error)
    return {
      code: 500,
      message: 'Error crítico: No se pudo completar la liquidacion',
      error: error.message,
    }
  }
}

export { registrarLiquidacion }

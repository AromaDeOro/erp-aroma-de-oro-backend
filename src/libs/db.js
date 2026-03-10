import { DATABASE_CONFIG } from '../config/config.js'
import { Sequelize } from 'sequelize'
import { models } from '../models/index.models.js'

const sq = new Sequelize(DATABASE_CONFIG.URI, DATABASE_CONFIG.OPTIONS)

models.forEach((model) => model(sq))

const {
  Empresa,
  Persona,
  Usuario,
  Producto,
  Nomina,
  Ticket,
  Liquidacion,
  CuentasPorPagar,
  CuentasPorCobrar,
  DetalleLiquidacion,
  Retencion,
  Movimiento,
  Venta,
  Caja,
} = sq.models

Persona.hasMany(Nomina, { foreignKey: 'PersonaId' })
Nomina.belongsTo(Persona, { foreignKey: 'PersonaId' })

Caja.hasMany(Movimiento, { foreignKey: 'CajaId' })
Movimiento.belongsTo(Caja, { foreignKey: 'CajaId' })

Persona.hasMany(Venta, { foreignKey: 'CompradorId' })
Venta.belongsTo(Persona, { foreignKey: 'CompradorId' })

Producto.hasMany(Venta, { foreignKey: 'ProductoId' })
Venta.belongsTo(Producto, { foreignKey: 'ProductoId' })

Usuario.hasMany(Venta, { foreignKey: 'UsuarioId' })
Venta.belongsTo(Usuario, { foreignKey: 'UsuarioId' })

Venta.hasMany(CuentasPorCobrar, { foreignKey: 'VentaId' })
CuentasPorCobrar.belongsTo(Venta, { foreignKey: 'VentaId' })

Usuario.hasMany(Liquidacion, { foreignKey: 'UsuarioId' })
Liquidacion.belongsTo(Usuario, { foreignKey: 'UsuarioId' })

Persona.hasMany(Liquidacion, { foreignKey: 'ProductorId' })
Liquidacion.belongsTo(Persona, { foreignKey: 'ProductorId' })

Ticket.hasMany(Liquidacion, { foreignKey: 'TicketId' })
Liquidacion.belongsTo(Ticket, { foreignKey: 'TicketId' })

Liquidacion.hasMany(DetalleLiquidacion, { foreignKey: 'LiquidacionId' })
DetalleLiquidacion.belongsTo(Liquidacion, { foreignKey: 'LiquidacionId' })

Producto.hasMany(DetalleLiquidacion, { foreignKey: 'ProductoId' })
DetalleLiquidacion.belongsTo(Producto, { foreignKey: 'ProductoId' })

Caja.hasMany(Movimiento, { foreignKey: 'CajaId' })
Movimiento.belongsTo(Caja, { foreignKey: 'CajaId' })

Persona.hasMany(Nomina, { foreignKey: 'PersonaId' })
Nomina.belongsTo(Persona, { foreignKey: 'PersonaId' })

Liquidacion.hasMany(Retencion, { foreignKey: 'LiquidacionId' })
Retencion.belongsTo(Liquidacion, { foreignKey: 'LiquidacionId' })

export {
  sq,
  Empresa,
  Persona,
  Usuario,
  Producto,
  Nomina,
  Ticket,
  Liquidacion,
  CuentasPorPagar,
  CuentasPorCobrar,
  DetalleLiquidacion,
  Retencion,
  Movimiento,
  Venta,
  Caja,
}

import { DataTypes } from 'sequelize'

const NominaModel = (sq) => {
  sq.define(
    'Nomina',
    {
      id: {
        type: DataTypes.UUID,
        primaryKey: true,
        defaultValue: DataTypes.UUIDV4,
      },
      // NUEVO: Código secuencial o único para contabilidad (Ej: NOM-0001)
      codigo: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
      },
      fechaPago: {
        type: DataTypes.DATE,
        defaultValue: DataTypes.NOW,
      },
      tipoPeriodo: {
        type: DataTypes.ENUM('Jornal', 'Semanal', 'Quincenal', 'Mensual'),
        allowNull: false,
        defaultValue: 'Jornal',
      },
      sueldoBase: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
      },
      unidadesTrabajadas: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
        defaultValue: 1,
      },
      subTotal: { type: DataTypes.DECIMAL(10, 2), allowNull: false },
      bono: { type: DataTypes.DECIMAL(10, 2), defaultValue: 0.0 },
      descuentoGeneral: { type: DataTypes.DECIMAL(10, 2), defaultValue: 0.0 },
      descuentoPrestamo: {
        type: DataTypes.DECIMAL(10, 2),
        defaultValue: 0.0,
      },
      totalPagar: { type: DataTypes.DECIMAL(10, 2), allowNull: false },
      PersonaId: { type: DataTypes.UUID, allowNull: false },
      UsuarioId: { type: DataTypes.UUID, allowNull: false },
      PrestamoId: {
        type: DataTypes.UUID,
        allowNull: true,
        references: { model: 'Prestamos', key: 'id' },
      },
    },
    {
      timestamps: true,
      tableName: 'Nominas',
    }
  )
}

export default NominaModel

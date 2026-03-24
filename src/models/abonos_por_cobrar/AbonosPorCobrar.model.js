import { DataTypes } from 'sequelize'

const AbonosCuentasPorCobrar = (sq) => {
  sq.define(
    'AbonosCuentasPorCobrar',
    {
      id: {
        type: DataTypes.UUID,
        primaryKey: true,
        defaultValue: DataTypes.UUIDV4,
      },
      monto: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
      },
      fechaCobro: {
        type: DataTypes.DATE,
        defaultValue: DataTypes.NOW,
      },
      metodoCobro: {
        type: DataTypes.ENUM('Efectivo', 'Transferencia', 'Depósito'),
        allowNull: false,
      },

      // Relación con la cuenta del cliente (CX C)
      CuentaPorCobrarId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: {
          model: 'CuentasPorCobrar',
          key: 'id',
        },
      },
      // Auditoría: ¿Qué cajero recibió el dinero?
      UsuarioId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: {
          model: 'Usuarios',
          key: 'id',
        },
      },
    },
    {
      timestamps: true,
      tableName: 'AbonosCuentasPorCobrar',
    }
  )
}

export default AbonosCuentasPorCobrar

import { DataTypes } from 'sequelize'

const AbonosCuentasPorPagar = (sq) => {
  sq.define(
    'AbonosCuentasPorPagar',
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
      fechaPago: {
        type: DataTypes.DATE,
        defaultValue: DataTypes.NOW,
      },
      metodoPago: {
        type: DataTypes.ENUM('Efectivo', 'Transferencia', 'Cheque', 'Banco'),
        allowNull: false,
      },
      notas: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
      // Relación con la cuenta de deuda (CX P)
      CuentaPorPagarId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: {
          model: 'CuentasPorPagar',
          key: 'id',
        },
      },
      // Auditoría: ¿Quién autorizó el pago?
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
      tableName: 'AbonosCuentasPorPagar',
    }
  )
}

export default AbonosCuentasPorPagar

import { DataTypes, Sequelize } from 'sequelize'

const AnticipoModel = (sq) => {
  sq.define(
    'Anticipo',
    {
      id: {
        type: DataTypes.UUID,
        primaryKey: true,
        defaultValue: DataTypes.UUIDV4,
      },

      monto: { type: DataTypes.DECIMAL(10, 2), allowNull: false },
      saldoPendiente: { type: DataTypes.DECIMAL(10, 2), allowNull: false },
      fechaEmision: { type: DataTypes.DATE, defaultValue: DataTypes.NOW },
      estado: { type: DataTypes.ENUM('Pendiente', 'Aplicado'), defaultValue: 'Pendiente' },
      PersonaId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: { model: 'Personas', key: 'id' },
      },
      comentario: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      CajaId: { type: DataTypes.UUID, allowNull: false, references: { model: 'Cajas', key: 'id' } },
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
      tableName: 'Anticipos',
    }
  )
}

export default AnticipoModel

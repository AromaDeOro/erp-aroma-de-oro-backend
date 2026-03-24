import { DataTypes, Sequelize } from 'sequelize'

const LiquidacionAnticipoModel = (sq) => {
  sq.define(
    'LiquidacionAnticipo',
    {
      id: {
        type: DataTypes.UUID,
        primaryKey: true,
        defaultValue: DataTypes.UUIDV4,
      },
      montoAplicado: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
        comment: 'La porción del anticipo usada en esta liquidación',
      },
      AnticipoId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: { model: 'Anticipos', key: 'id' },
      },
      LiquidacionId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: { model: 'Liquidaciones', key: 'id' },
      },
    },
    {
      timestamps: true,
      tableName: 'LiquidacionAnticipos',
    }
  )
}

export default LiquidacionAnticipoModel

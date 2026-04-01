import { DataTypes } from 'sequelize'

const DetalleLiquidacionModel = (sq) => {
  sq.define(
    'DetalleLiquidacion',
    {
      id: {
        type: DataTypes.UUID,
        primaryKey: true,
        defaultValue: DataTypes.UUIDV4,
      },

      descripcionProducto: {
        type: DataTypes.STRING,
        allowNull: false,
      },

      // Ahora 'calificacion' sustituye a la lógica de humedad/calidad
      calificacion: {
        type: DataTypes.FLOAT,
        defaultValue: 0.0,
        comment: 'Porcentaje o grado de calidad que afecta el peso (antes humedad)',
      },

      unidad: {
        type: DataTypes.ENUM,
        allowNull: false,
        values: ['Quintales', 'Kilogramos', 'Libras', 'Unidades', 'Tacho'],
      },

      // Peso Bruto (Báscula)
      cantidad: {
        type: DataTypes.FLOAT,
        allowNull: false,
      },

      impurezas: {
        type: DataTypes.FLOAT,
        defaultValue: 0.0,
      },

      // Cuántas unidades se restan del peso bruto
      descuentoMerma: {
        type: DataTypes.FLOAT,
        defaultValue: 0.0,
      },

      // Peso Neto (Cantidad Final para el cálculo)
      cantidadNeta: {
        type: DataTypes.FLOAT,
        allowNull: false,
      },

      precio: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
      },

      // El resultado de cantidadNeta * precio
      parcial: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
      },

      ProductoId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: { model: 'Productos', key: 'id' },
      },

      LiquidacionId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: { model: 'Liquidaciones', key: 'id' },
      },
    },
    {
      timestamps: true,
      tableName: 'DetalleLiquidaciones',
    }
  )
}

export default DetalleLiquidacionModel

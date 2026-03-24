import { DataTypes } from 'sequelize'

const LiquidacionModel = (sq) => {
  sq.define(
    'Liquidacion',
    {
      id: {
        type: DataTypes.UUID,
        primaryKey: true,
        defaultValue: DataTypes.UUIDV4,
      },
      codigo: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
      },
      fecha: {
        type: DataTypes.DATE,
        allowNull: false,
        defaultValue: DataTypes.NOW,
      },

      // --- VALORES DE LA FRUTA ---
      totalLiquidacion: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
        comment: 'Valor bruto de la fruta entregada',
      },
      totalRetencion: {
        type: DataTypes.DECIMAL(10, 2),
        defaultValue: 0.0,
        comment: 'Retenciones de ley aplicadas',
      },
      totalAPagar: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
        comment: 'Neto después de retenciones (Lo que le pertenece al productor)',
      },

      // --- CRUCE CON DEUDAS ANTERIORES ---
      abonoAnticipo: {
        type: DataTypes.DECIMAL(10, 2),
        defaultValue: 0.0,
        comment: 'Monto descontado de anticipos previos',
      },

      // --- FORMAS DE PAGO (Dinero que sale hoy) ---
      pagoEfectivo: { type: DataTypes.DECIMAL(10, 2), defaultValue: 0.0 },
      pagoCheque: { type: DataTypes.DECIMAL(10, 2), defaultValue: 0.0 },
      pagoTransferencia: { type: DataTypes.DECIMAL(10, 2), defaultValue: 0.0 },

      // --- SALDOS FINALES ---
      montoAbonado: {
        type: DataTypes.DECIMAL(10, 2),
        defaultValue: 0.0,
        comment: 'Suma de (abonoAnticipo + pagos del día)',
      },
      montoPorPagar: {
        type: DataTypes.DECIMAL(10, 2),
        defaultValue: 0.0,
        comment: 'Saldo que queda pendiente como Cuenta por Pagar',
      },

      estado: {
        type: DataTypes.ENUM('Pendiente', 'Pagada', 'Anulada'),
        defaultValue: 'Pendiente',
      },

      // --- RELACIONES ---
      UsuarioId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: { model: 'Usuarios', key: 'id' },
      },
      ProductorId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: { model: 'Personas', key: 'id' },
      },
    },
    {
      timestamps: true,
      tableName: 'Liquidaciones',
    }
  )
}

export default LiquidacionModel

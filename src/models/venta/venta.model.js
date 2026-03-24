import { DataTypes } from 'sequelize'

const VentasModel = (sq) => {
  sq.define(
    'Venta',
    {
      id: {
        type: DataTypes.UUID,
        primaryKey: true,
        defaultValue: DataTypes.UUIDV4,
      },
      codigoVenta: {
        type: DataTypes.STRING,
        unique: true,
        allowNull: false,
      },
      // --- BLOQUE DE PESAJE AGRÍCOLA ---
      unidad: {
        type: DataTypes.ENUM,
        allowNull: false,
        values: ['Quintales', 'Kilogramos', 'Libras', 'Unidades', 'Arroba'],
        defaultValue: 'Quintales',
      },
      cantidadBruta: {
        type: DataTypes.FLOAT,
        allowNull: false,
        comment: 'Peso tal cual sale de báscula',
      },
      calificacion: {
        type: DataTypes.FLOAT,
        defaultValue: 0.0,
        comment: 'Porcentaje de humedad o calidad (castigo al peso)',
      },
      impurezas: {
        type: DataTypes.FLOAT,
        defaultValue: 0.0,
        comment: 'Porcentaje de impurezas (castigo al peso)',
      },
      descuentoMerma: {
        type: DataTypes.FLOAT,
        defaultValue: 0.0,
        comment: 'Peso fijo restado (ej: sacos)',
      },
      cantidadNeta: {
        type: DataTypes.FLOAT,
        allowNull: false,
        comment: 'Cantidad real facturada después de castigos',
      },
      // --- BLOQUE FINANCIERO ---
      precioUnitario: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
      },
      montoAnticipo: {
        type: DataTypes.DECIMAL(10, 2),
        defaultValue: 0.0,
        comment: 'Dinero que el comprador ya entregó previamente (préstamo/adelanto)',
      },
      totalFactura: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
        comment: 'Valor total de la mercadería (Peso Neto * Precio)',
      },
      montoAbonado: {
        type: DataTypes.DECIMAL(10, 2),
        defaultValue: 0.0,
        comment: 'Dinero efectivo que entra a caja EN ESTE MOMENTO',
      },
      montoPendiente: {
        type: DataTypes.DECIMAL(10, 2),
        defaultValue: 0.0,
        comment: 'Saldo restante por cobrar (Total - Anticipo - Abono Hoy)',
      },
      tipoVenta: {
        type: DataTypes.ENUM,
        values: ['Contado', 'Crédito'],
        defaultValue: 'Contado',
      },
      // --- RELACIONES ---
      PersonaId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: { model: 'Personas', key: 'id' },
      },
      ProductoId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: { model: 'Productos', key: 'id' },
      },
      UsuarioId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: { model: 'Usuarios', key: 'id' },
      },
      CajaId: {
        type: DataTypes.UUID,
        allowNull: false,
        references: { model: 'Cajas', key: 'id' },
      },
    },
    {
      timestamps: true,
      tableName: 'Ventas',
    }
  )
}

export default VentasModel

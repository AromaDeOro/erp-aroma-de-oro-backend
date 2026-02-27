import { DataTypes } from "sequelize";

const TicketModel = (sq) => {
  sq.define("Ticket", {
    id: {
      type: DataTypes.UUID,
      primaryKey: true,
      defaultValue: DataTypes.UUIDV4,
    },

    numero: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },

    identificacionTemporal: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    placaVehiculo: {
      type: DataTypes.STRING,
      allowNull: true,
    },

    pesoBruto: {
      type: DataTypes.FLOAT,
      allowNull: false,
    },

    taraVehiculo: {
      type: DataTypes.FLOAT,
      allowNull: true,
    },

    pesoNeto: {
      type: DataTypes.FLOAT,
      allowNull: false,
    },

    fechaIngreso: {
      type: DataTypes.DATE,
      defaultValue: DataTypes.NOW,
    },

    estadoTicket: {
      type: DataTypes.ENUM,
      values: ["Pendiente", "Liquidado"],
      defaultValue: "Pendiente",
    },

    ProductoId: {
      type: DataTypes.UUID,
      allowNull: false,
      references: {
        model: "Productos",
        key: "id",
      },
    },
  });
};

export default TicketModel;

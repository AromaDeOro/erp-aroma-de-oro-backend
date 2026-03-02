import { Op } from "sequelize";
import { Caja } from "../../libs/db.js";

// Función genérica para evitar repetir código
const responder = (cajas) => ({ code: 200, cajas });

const listarTodas = async () => {
  const cajas = await Caja.findAll({ order: [["fechaApertura", "DESC"]] });
  return responder(cajas);
};

const listarAbiertas = async () => {
  const cajas = await Caja.findAll({ where: { estado: "Abierta" } });
  return responder(cajas);
};

const listarCerradas = async () => {
  const cajas = await Caja.findAll({ where: { estado: "Cerrada" } });
  return responder(cajas);
};

const listarPorRango = async (fechaInicio, fechaFin) => {
  // Validamos que existan las fechas para evitar que Sequelize explote
  if (!fechaInicio || !fechaFin) {
    return { code: 400, message: "Fechas requeridas" };
  }

  const cajas = await Caja.findAll({
    where: {
      fechaApertura: {
        [Op.between]: [fechaInicio, fechaFin],
      },
    },
    order: [["fechaApertura", "DESC"]],
  });

  return responder(cajas);
};

export { listarAbiertas, listarCerradas, listarPorRango, listarTodas };

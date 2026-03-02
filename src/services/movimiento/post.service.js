import { Movimiento, Venta, Nomina, Liquidacion, Caja } from "../../libs/db.js";

const crearMovimiento = async (data) => {
  const { categoria, idReferencia, CajaId } = data;

  switch (categoria) {
    case "Compra":
      const liquidacion = await Liquidacion.findOne({
        where: {
          id: idReferencia,
        },
      });

      if (!liquidacion)
        return {
          code: 404,
          message:
            "Error al crear el registro de movimiento. Registro no encontrado.",
        };

      break;

    case "Venta":
      const venta = await Venta.findOne({
        where: {
          id: idReferencia,
        },
      });

      if (!venta)
        return {
          code: 404,
          message:
            "Error al crear el registro de movimiento. Registro de referencia no encontrado",
        };
      break;

    case "Nomina":
      const nomina = await Nomina.findOne({
        where: {
          id: idReferencia,
        },
      });
      if (!nomina)
        return {
          code: 404,
          message:
            "Error al encontrar el registro de movimiento. Registro de referencia no encontrado.",
        };
      break;
  }

  const caja = await Caja.findOne({
    where: {
      id: CajaId,
    },
  });

  if (!caja)
    return {
      code: 400,
      message: "Error al registrar el movimiento. La caja no existe",
    };

  if (caja.estado === "Cerrada")
    return {
      code: 400,
      message:
        "Error al registrar el movimiento. La caja ya se encuentra cerrada",
    };

  const movimiento = await Movimiento.create(data);
  return { code: 201, message: "Movimiento creado", movimiento };
};

export { crearMovimiento };

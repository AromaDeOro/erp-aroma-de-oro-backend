import { ticketService } from "../../services/index.services.js";

const crearTicket = async (req, res) => {
  try {
    const data = req.body;
    const { code, message, ticket } = await ticketService.crearTicket(data);

    res.status(code).json(ticket ? { message, ticket } : { message });
  } catch (error) {
    res.status(500).json({
      message: "Error interno en el servidor. Intente de nuevo.",
    });
  }
};

export { crearTicket };

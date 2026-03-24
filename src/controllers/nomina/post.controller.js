import { nominaService } from '../../services/index.services.js'
/**
 * CONTROLADOR DE NÓMINA
 * Maneja la comunicación entre la ruta y el servicio de procesamiento.
 */
const procesarPagoNomina = async (req, res) => {
  try {
    // Extraemos los datos del cuerpo de la petición
    // El frontend ya envía estos nombres: PersonaId, CajaId, UsuarioId, etc.
    const data = req.body

    // Llamamos al servicio que contiene toda la lógica transaccional
    const resultado = await nominaService.procesarPagoNomina(data)

    // Respondemos usando el código (code) que retorna el servicio (201, 400, 404, etc.)
    return res.status(resultado.code).json({
      message: resultado.message,
      caja: resultado.caja || null,
    })
  } catch (error) {
    console.error('Error en el controlador de Nómina:', error)
    return res.status(500).json({
      message: 'Error inesperado al procesar el pago de nómina',
    })
  }
}

export { procesarPagoNomina }

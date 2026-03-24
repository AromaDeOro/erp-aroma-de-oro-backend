import { ventaService } from '../../services/index.services.js'

const registrarVenta = async (req, res) => {
  try {
    const { venta, CajaId } = req.body
    console.log(venta)

    // 1. Validación de estructura básica
    if (!venta || !CajaId) {
      return res.status(400).json({
        message: 'Faltan datos críticos: Se requiere información de la venta y una Caja activa.',
      })
    }

    // 2. Validación de campos obligatorios para el pesaje y cobro
    // IMPORTANTE: Cambié CompradorId por PersonaId para que coincida con tu modelo y servicio
    const camposRequeridos = [
      'PersonaId',
      'ProductoId',
      'totalFactura',
      'cantidadBruta',
      'precioUnitario',
    ]
    const faltantes = camposRequeridos.filter((campo) => !venta[campo])

    if (faltantes.length > 0) {
      return res.status(400).json({
        message: `La información de la venta está incompleta. Faltan: ${faltantes.join(', ')}`,
      })
    }

    // Aseguramos que los valores numéricos lleguen como tales (opcional pero recomendado)
    const ventaNormalizada = {
      ...venta,
      cantidadBruta: parseFloat(venta.cantidadBruta),
      totalFactura: parseFloat(venta.totalFactura),
      montoAbonado: parseFloat(venta.montoAbonado || 0),
      montoAnticipo: parseFloat(venta.montoAnticipo || 0), // Nuevo campo de anticipo
      montoPendiente: parseFloat(venta.montoPendiente || 0),
    }

    // 3. Llamada al servicio que maneja la transacción
    const result = await ventaService.registrarVenta({
      venta: ventaNormalizada,
      CajaId,
    })

    // 4. Manejo de respuesta basado en el resultado del servicio
    if (result.code !== 201) {
      return res.status(result.code).json({
        message: result.message,
      })
    }

    // Respuesta exitosa: incluye el objeto creado (con su VNT-XXXX y ID)
    return res.status(201).json({
      message: result.message,
      data: result.data,
    })
  } catch (error) {
    console.error('CONTROLADOR_VENTA_ERROR:', error)
    res.status(500).json({
      message: 'Error interno en el servidor al procesar la venta agrícola.',
      error: error.message,
    })
  }
}

export { registrarVenta }

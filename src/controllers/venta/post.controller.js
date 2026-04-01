import { ventaService } from '../../services/index.services.js'

const registrarVenta = async (req, res) => {
  try {
    // 1. Extraemos las partes del body según el JSON que me mostraste
    const { venta, CajaId, detalle, retencion } = req.body

    // 2. Validación de estructura básica
    if (!venta || !CajaId || !detalle) {
      return res.status(400).json({
        message:
          'Faltan datos críticos: Se requiere información de la venta, el detalle del producto y una Caja activa.',
      })
    }

    /**
     * 3. NORMALIZACIÓN Y FUSIÓN
     * El servicio espera que 'venta' contenga todo (ProductoId, cantidades, etc.)
     * Fusionamos lo que viene en 'detalle' y 'retencion' dentro de un solo objeto de venta.
     */
    const ventaNormalizada = {
      ...venta,
      ...detalle, // Aquí viene ProductoId, cantidadNeta, unidad, etc.
      totalRetencion: retencion ? parseFloat(retencion.valorRetenido || 0) : 0,
      porcentajeRetencion: retencion ? parseFloat(retencion.porcentajeRetencion || 0) : 0,
      // Aseguramos tipos numéricos para evitar fallos en el servicio
      totalFactura: parseFloat(venta.totalFactura || 0),
      montoAbonado: parseFloat(venta.montoAbonado || 0),
      montoAnticipo: parseFloat(venta.montoAnticipo || 0),
      cantidadNeta: parseFloat(detalle.cantidadNeta || 0),
      precioUnitario: parseFloat(detalle.precioUnitario || 0),
    }

    // 4. Validación de campos obligatorios (ahora en el objeto fusionado)
    const camposRequeridos = ['PersonaId', 'ProductoId', 'totalFactura', 'cantidadNeta', 'unidad']

    const faltantes = camposRequeridos.filter((campo) => !ventaNormalizada[campo])

    if (faltantes.length > 0) {
      return res.status(400).json({
        message: `La información está incompleta. Faltan: ${faltantes.join(', ')}`,
      })
    }

    // 5. Llamada al servicio
    const result = await ventaService.registrarVenta({
      venta: ventaNormalizada,
      CajaId,
    })

    // 6. Manejo de respuesta basado en el resultado del servicio
    if (result.code !== 201) {
      return res.status(result.code).json({
        message: result.message,
      })
    }

    return res.status(201).json({
      message: result.message,
      data: result.data,
    })
  } catch (error) {
    console.error('CONTROLADOR_VENTA_ERROR:', error)
    res.status(500).json({
      message: 'Error interno en el servidor al procesar la venta.',
      error: error.message,
    })
  }
}

export { registrarVenta }

import { gastoService } from '../../services/index.services.js'

/**
 * CONTROLADOR PARA CREAR UN NUEVO GASTO
 * POST /api/gastos
 */
const crearGasto = async (req, res) => {
  try {
    const { monto, descripcion, categoria, CajaId, UsuarioId } = req.body

    // 1. VALIDACIONES PREVIAS DE CAMPOS OBLIGATORIOS
    if (!monto || parseFloat(monto) <= 0) {
      return res.status(400).json({
        message: 'El monto debe ser un valor mayor a cero.',
      })
    }

    if (!descripcion || descripcion.trim().length < 5) {
      return res.status(400).json({
        message: 'La descripción es obligatoria y debe ser detallada (mín. 5 caracteres).',
      })
    }

    if (!CajaId) {
      return res.status(400).json({
        message: 'No se especificó una caja activa para este gasto.',
      })
    }

    // 2. LLAMADA AL SERVICIO
    const { code, message, caja, gasto } = await gastoService.registrarGasto({
      monto,
      descripcion,
      categoria,
      CajaId,
      UsuarioId,
    })

    // 3. RESPUESTA SEGÚN EL RESULTADO DEL SERVICIO
    // Usamos el 'code' que retorna el servicio para el status de la respuesta
    res.status(code).json({
      message: message,
      gasto: gasto,
      caja: caja,
    })
  } catch (error) {
    console.error('ERROR EN CONTROLADOR GASTO:', error)
    res.status(500).json({
      message: 'Ocurrió un error inesperado en el servidor.',
    })
  }
}

export { crearGasto }

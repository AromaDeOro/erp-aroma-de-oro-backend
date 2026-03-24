import {
  Liquidacion,
  Persona,
  Usuario,
  Caja,
  Movimiento,
  CuentasPorPagar,
  sq,
  DetalleLiquidacion,
  Producto,
  Retencion,
  Anticipo,
  LiquidacionAnticipo,
  CuentasPorCobrar,
} from '../../libs/db.js'

/**
 * Función de utilidad para normalizar unidades a Quintales
 */
const convertirAQuintales = (cantidad, unidadOrigen) => {
  const cant = parseFloat(cantidad)
  switch (unidadOrigen) {
    case 'Kilogramos':
      return cant / 45.36
    case 'Libras':
      return cant / 100
    case 'Quintales':
      return cant
    default:
      return cant
  }
}

const registrarLiquidacion = async (data) => {
  const { liquidacion, detalle, retencion, anticipo, CajaId } = data
  const { UsuarioId, ProductorId } = liquidacion

  // 1. Validaciones previas
  const [usuario, productor, caja] = await Promise.all([
    Usuario.findOne({ where: { id: UsuarioId } }),
    Persona.findOne({ where: { id: ProductorId, tipo: 'Productor' } }),
    CajaId ? Caja.findOne({ where: { id: CajaId } }) : null,
  ])

  if (!usuario) return { code: 400, message: 'Usuario no encontrado.' }
  if (!productor) return { code: 400, message: 'El productor no existe.' }
  if (!caja) return { code: 400, message: 'Debe existir una caja activa.' }
  if (caja.estado !== 'Abierta') return { code: 400, message: 'La caja está cerrada.' }

  const t = await sq.transaction()

  try {
    // 2. Generar código correlativo
    const totalLiquidaciones = await Liquidacion.count({ transaction: t })
    const codigoLiq = 'LIQ-' + String(totalLiquidaciones + 1).padStart(7, '0')

    // 3. Crear cabecera de Liquidación
    const nuevaLiquidacion = await Liquidacion.create(
      { ...liquidacion, codigo: codigoLiq },
      { transaction: t }
    )

    // 4. PROCESAR CRUCE DE ANTICIPOS (MOVIMIENTO CONTABLE)
    if (anticipo && parseFloat(anticipo.montoAplicado) > 0) {
      const montoAplicar = parseFloat(anticipo.montoAplicado)
      const anticipoOriginal = await Anticipo.findByPk(anticipo.id, { transaction: t })

      if (anticipoOriginal) {
        await LiquidacionAnticipo.create(
          {
            montoAplicado: montoAplicar,
            AnticipoId: anticipoOriginal.id,
            LiquidacionId: nuevaLiquidacion.id,
          },
          { transaction: t }
        )

        const nuevoSaldoAnticipo = parseFloat(anticipoOriginal.saldoPendiente) - montoAplicar
        await anticipoOriginal.update(
          {
            saldoPendiente: nuevoSaldoAnticipo,
            estado: nuevoSaldoAnticipo <= 0 ? 'Aplicado' : 'Pendiente',
          },
          { transaction: t }
        )

        const cxc = await CuentasPorCobrar.findOne({
          where: { referenciaId: anticipoOriginal.id, origen: 'Anticipo' },
          transaction: t,
        })
        if (cxc) {
          const nuevoSaldoCxC = parseFloat(cxc.montoPorCobrar) - montoAplicar
          await cxc.update(
            {
              montoPorCobrar: nuevoSaldoCxC,
              estado: nuevoSaldoCxC <= 0 ? 'Cobrado' : 'Pendiente',
            },
            { transaction: t }
          )
        }

        // REGISTRO DE MOVIMIENTO CONTABLE (AQUÍ ESTÁ LA CLAVE)
        // Usamos CajaId: null para que NO sume al saldo físico en la auditoría
        await Movimiento.create(
          {
            tipoMovimiento: 'Ingreso',
            categoria: 'Cobro Anticipo',
            monto: montoAplicar,
            idReferencia: nuevaLiquidacion.id,
            CajaId: null,
            descripcion: `CRUCE CONTABLE: Anticipo aplicado en ${codigoLiq}. No afecta saldo físico.`,
          },
          { transaction: t }
        )
      }
    }

    // 5. Crear detalle
    await DetalleLiquidacion.create(
      { ...detalle, LiquidacionId: nuevaLiquidacion.id },
      { transaction: t }
    )

    // 6. Actualizar Stock
    const producto = await Producto.findByPk(detalle.ProductoId, { transaction: t })
    const cantidadConvertida = convertirAQuintales(detalle.cantidad, detalle.unidad)
    await producto.update(
      { stock: parseFloat(producto.stock) + cantidadConvertida },
      { transaction: t }
    )

    // 7. Registro de Retención
    if (retencion) {
      await Retencion.create(
        { ...retencion, LiquidacionId: nuevaLiquidacion.id },
        { transaction: t }
      )
    }

    // 8. Gestión de Cuentas por Pagar (CXB)
    const saldoPendienteAPagar = parseFloat(liquidacion.montoPorPagar)
    if (saldoPendienteAPagar > 0) {
      await CuentasPorPagar.create(
        {
          montoTotal: parseFloat(liquidacion.totalAPagar),
          montoAbonado: parseFloat(liquidacion.montoAbonado),
          saldoPendiente: saldoPendienteAPagar,
          estado: 'Pendiente',
          LiquidacionId: nuevaLiquidacion.id,
        },
        { transaction: t }
      )
    }

    // 9. LÓGICA DE MOVIMIENTOS SEPARADA POR MÉTODO
    const pEfectivo = parseFloat(liquidacion.pagoEfectivo || 0)
    const pTransf = parseFloat(liquidacion.pagoTransferencia || 0)
    const pCheque = parseFloat(liquidacion.pagoCheque || 0)

    // A. MOVIMIENTO DE EFECTIVO (SÍ RESTA DE CAJA FÍSICA)
    if (pEfectivo > 0) {
      await Movimiento.create(
        {
          tipoMovimiento: 'Egreso',
          categoria: 'Compra',
          monto: pEfectivo,
          idReferencia: nuevaLiquidacion.id,
          CajaId: CajaId,
          descripcion: `EGRESO EFECTIVO: Pago Liq ${codigoLiq}`,
        },
        { transaction: t }
      )
      await caja.decrement({ saldoActual: pEfectivo }, { transaction: t })
    }

    // B. MOVIMIENTO BANCARIO/CHEQUE (REGISTRA PERO NO RESTA DE CAJA FÍSICA)
    const montoNoEfectivo = pTransf + pCheque
    if (montoNoEfectivo > 0) {
      let descBanco = []
      if (pTransf > 0) descBanco.push(`TRANSFERENCIA: $${pTransf.toFixed(2)}`)
      if (pCheque > 0) descBanco.push(`CHEQUE: $${pCheque.toFixed(2)}`)

      await Movimiento.create(
        {
          tipoMovimiento: 'Egreso',
          categoria: 'Compra',
          monto: montoNoEfectivo,
          idReferencia: nuevaLiquidacion.id,
          CajaId: CajaId,
          descripcion: `EGRESO BANCO: Pago Liq ${codigoLiq} | ${descBanco.join(' - ')}`,
        },
        { transaction: t }
      )
      // AQUÍ NO HAY DECREMENT: El dinero sale de la cuenta bancaria, no de la oficina.
    }

    await t.commit()
    const cajaActualizada = await Caja.findByPk(CajaId)

    return {
      code: 201,
      caja: cajaActualizada,
      message: 'Liquidación registrada exitosamente.',
      id: nuevaLiquidacion.id,
    }
  } catch (error) {
    if (t) await t.rollback()
    console.error('Error Aroma de Oro:', error)
    return {
      code: 500,
      message: 'Error en servidor',
      error: error.message,
    }
  }
}

export { registrarLiquidacion }

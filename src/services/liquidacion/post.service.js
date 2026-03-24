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
 * CONVERSOR DINÁMICO DE UNIDADES
 * Triangula cualquier unidad usando Libras como base para precisión agrícola.
 * @param {number} cantidad - Cantidad neta recibida.
 * @param {string} unidadOrigen - Unidad en la que se compró (ej. Quintales).
 * @param {string} unidadDestino - Unidad en la que el producto vive en Bodega (ej. Libras).
 */
const convertirUnidadesBodega = (cantidad, unidadOrigen, unidadDestino) => {
  const cant = parseFloat(cantidad) || 0
  if (unidadOrigen === unidadDestino) return cant

  // Factores de conversión basados en 1 Libra (Ecuador/Agrícola)
  const factores = {
    Quintales: 100, // 1 QQ = 100 Lbs
    Kilogramos: 2.20462, // 1 Kg = 2.20462 Lbs
    Libras: 1,
    Unidades: 1, // Las unidades no se convierten
  }

  // 1. Convertimos lo que entra a la base (Libras)
  const enLibras = cant * (factores[unidadOrigen] || 1)

  // 2. Convertimos de la base a lo que el inventario necesita
  const resultado = enLibras / (factores[unidadDestino] || 1)

  return resultado
}

const registrarLiquidacion = async (data) => {
  const { liquidacion, detalle, retencion, anticipo, CajaId } = data
  const { UsuarioId, ProductorId } = liquidacion

  // 1. Validaciones de Integridad
  const [usuario, productor, caja] = await Promise.all([
    Usuario.findOne({ where: { id: UsuarioId } }),
    Persona.findOne({ where: { id: ProductorId, tipo: 'Productor' } }),
    CajaId ? Caja.findOne({ where: { id: CajaId } }) : null,
  ])

  if (!usuario) return { code: 400, message: 'Usuario no encontrado.' }
  if (!productor) return { code: 400, message: 'El productor no existe.' }
  if (!caja || caja.estado !== 'Abierta') {
    return { code: 400, message: 'Se requiere una caja abierta para esta operación.' }
  }

  const t = await sq.transaction()

  try {
    // 2. Correlativo de Liquidación
    const totalLiquidaciones = await Liquidacion.count({ transaction: t })
    const codigoLiq = 'LIQ-' + String(totalLiquidaciones + 1).padStart(7, '0')

    // 3. Cabecera
    const nuevaLiquidacion = await Liquidacion.create(
      { ...liquidacion, codigo: codigoLiq },
      { transaction: t }
    )

    // 4. CRUCE DE ANTICIPOS (Contable)
    if (anticipo && parseFloat(anticipo.montoAplicado) > 0) {
      const montoAplicar = parseFloat(anticipo.montoAplicado)
      const antOriginal = await Anticipo.findByPk(anticipo.id, { transaction: t })

      if (antOriginal) {
        await LiquidacionAnticipo.create(
          {
            montoAplicado: montoAplicar,
            AnticipoId: antOriginal.id,
            LiquidacionId: nuevaLiquidacion.id,
          },
          { transaction: t }
        )

        const nuevoSaldo = parseFloat(antOriginal.saldoPendiente) - montoAplicar
        await antOriginal.update(
          {
            saldoPendiente: nuevoSaldo,
            estado: nuevoSaldo <= 0 ? 'Aplicado' : 'Pendiente',
          },
          { transaction: t }
        )

        // Actualizar Cuenta por Cobrar relacionada
        const cxc = await CuentasPorCobrar.findOne({
          where: { referenciaId: antOriginal.id, origen: 'Anticipo' },
          transaction: t,
        })
        if (cxc) {
          const saldoCxC = parseFloat(cxc.montoPorCobrar) - montoAplicar
          await cxc.update(
            { montoPorCobrar: saldoCxC, estado: saldoCxC <= 0 ? 'Cobrado' : 'Pendiente' },
            { transaction: t }
          )
        }

        // Movimiento informativo (CajaId: null porque no es efectivo físico)
        await Movimiento.create(
          {
            tipoMovimiento: 'Ingreso',
            categoria: 'Cobro Anticipo',
            monto: montoAplicar,
            idReferencia: nuevaLiquidacion.id,
            CajaId: null,
            descripcion: `CRUCE: Anticipo aplicado en ${codigoLiq}.`,
          },
          { transaction: t }
        )
      }
    }

    // 5. Detalle de Compra
    await DetalleLiquidacion.create(
      { ...detalle, LiquidacionId: nuevaLiquidacion.id },
      { transaction: t }
    )

    // 6. ACTUALIZACIÓN DE STOCK CON CONVERSIÓN SEGÚN BODEGA
    const productoBodega = await Producto.findByPk(detalle.ProductoId, { transaction: t })

    // Obtenemos la unidad en la que se configuró el producto originalmente
    const unidadEnBodega = productoBodega.unidadMedida || 'Quintales'

    const cantidadFinalStock = convertirUnidadesBodega(
      detalle.cantidadNeta, // Sumamos lo que realmente queda tras mermas
      detalle.unidad, // Unidad de la compra (ej. Quintales)
      unidadEnBodega // Unidad de bodega (ej. Libras)
    )

    await productoBodega.update(
      { stock: parseFloat(productoBodega.stock) + cantidadFinalStock },
      { transaction: t }
    )

    // 7. Retenciones
    if (retencion) {
      await Retencion.create(
        { ...retencion, LiquidacionId: nuevaLiquidacion.id },
        { transaction: t }
      )
    }

    // 8. Cuentas por Pagar (Si queda saldo)
    const saldoDeuda = parseFloat(liquidacion.montoPorPagar)
    if (saldoDeuda > 0) {
      await CuentasPorPagar.create(
        {
          montoTotal: parseFloat(liquidacion.totalAPagar),
          montoAbonado: parseFloat(liquidacion.montoAbonado),
          saldoPendiente: saldoDeuda,
          estado: 'Pendiente',
          LiquidacionId: nuevaLiquidacion.id,
        },
        { transaction: t }
      )
    }

    // 9. FLUJO DE CAJA (Efectivo vs Bancos)
    const pEfec = parseFloat(liquidacion.pagoEfectivo || 0)
    const pTran = parseFloat(liquidacion.pagoTransferencia || 0)
    const pCheq = parseFloat(liquidacion.pagoCheque || 0)

    // EFECTIVO: Resta del saldo físico de la caja
    if (pEfec > 0) {
      await Movimiento.create(
        {
          tipoMovimiento: 'Egreso',
          categoria: 'Compra',
          monto: pEfec,
          idReferencia: nuevaLiquidacion.id,
          CajaId: CajaId,
          descripcion: `PAGO EFECTIVO: Liq ${codigoLiq}`,
        },
        { transaction: t }
      )
      await caja.decrement({ saldoActual: pEfec }, { transaction: t })
    }

    // BANCOS: Registro contable sin afectar saldo físico de oficina
    const totalBanco = pTran + pCheq
    if (totalBanco > 0) {
      await Movimiento.create(
        {
          tipoMovimiento: 'Egreso',
          categoria: 'Compra',
          monto: totalBanco,
          idReferencia: nuevaLiquidacion.id,
          CajaId: CajaId,
          descripcion: `PAGO BANCARIO: Liq ${codigoLiq} (Transf/Cheq)`,
        },
        { transaction: t }
      )
    }

    await t.commit()

    // Devolvemos la caja actualizada para refrescar el frontend
    const cajaRefrescada = await Caja.findByPk(CajaId)

    return {
      code: 201,
      caja: cajaRefrescada,
      message: 'Liquidación procesada con éxito.',
      id: nuevaLiquidacion.id,
    }
  } catch (error) {
    if (t) await t.rollback()
    console.error('CRITICAL ERROR:', error)
    return {
      code: 500,
      message: 'Error interno en el servidor.',
      error: error.message,
    }
  }
}

export { registrarLiquidacion }

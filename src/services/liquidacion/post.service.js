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
  AbonosCuentasPorPagar,
} from '../../libs/db.js'

/**
 * CONVERSOR DINÁMICO DE UNIDADES
 */
const convertirUnidadesBodega = (cantidad, unidadOrigen, unidadDestino) => {
  const cant = parseFloat(cantidad) || 0
  if (unidadOrigen === unidadDestino) return cant
  const factores = { Quintales: 100, Kilogramos: 2.20462, Libras: 1, Unidades: 1 }
  const enLibras = cant * (factores[unidadOrigen] || 1)
  return enLibras / (factores[unidadDestino] || 1)
}

const registrarLiquidacion = async (data) => {
  const { liquidacion, detalle, retencion, anticipo, CajaId } = data
  const { UsuarioId, ProductorId, cuentaPorPagarSaldadaId, montoDeudaAnterior } = liquidacion

  // 1. Carga de datos iniciales
  const [usuario, productor, caja] = await Promise.all([
    Usuario.findOne({ where: { id: UsuarioId } }),
    Persona.findOne({ where: { id: ProductorId, tipo: 'Productor' } }),
    CajaId ? Caja.findOne({ where: { id: CajaId } }) : null,
  ])

  // 2. Validaciones de Integridad
  if (!usuario || !productor || (CajaId && (!caja || caja.estado !== 'Abierta'))) {
    return { code: 400, message: 'Validación de integridad fallida (Usuario, Productor o Caja).' }
  }

  // 3. VALIDACIÓN DE SALDO FÍSICO (Para evitar los números rojos de tu imagen)
  const pEfec = parseFloat(liquidacion.pagoEfectivo || 0)
  if (pEfec > parseFloat(caja.saldoActual)) {
    return {
      code: 400,
      message: `Saldo insuficiente en caja. Intentas pagar $${pEfec.toFixed(2)} pero solo hay $${parseFloat(caja.saldoActual).toFixed(2)} disponible.`,
    }
  }

  const t = await sq.transaction()

  try {
    const totalLiquidaciones = await Liquidacion.count({ transaction: t })
    const codigoLiq = 'LIQ-' + String(totalLiquidaciones + 1).padStart(7, '0')

    const nuevaLiquidacion = await Liquidacion.create(
      { ...liquidacion, codigo: codigoLiq },
      { transaction: t }
    )

    // --- 4. SALDAR DEUDA Y ACTUALIZAR LIQUIDACIÓN ORIGEN ---
    if (cuentaPorPagarSaldadaId) {
      const cxpAnterior = await CuentasPorPagar.findByPk(cuentaPorPagarSaldadaId, {
        transaction: t,
      })

      if (cxpAnterior) {
        const montoASaldar = parseFloat(montoDeudaAnterior || 0)

        // Registro del abono formal
        await AbonosCuentasPorPagar.create(
          {
            monto: montoASaldar,
            metodoPago: 'Efectivo',
            CuentaPorPagarId: cxpAnterior.id,
            UsuarioId: UsuarioId,
            notas: `Saldado en Liq ${codigoLiq}`,
          },
          { transaction: t }
        )

        // Cerramos la Cuenta por Pagar vieja
        await cxpAnterior.update(
          {
            montoAbonado: parseFloat(cxpAnterior.montoTotal),
            saldoPendiente: 0,
            estado: 'Pagado',
          },
          { transaction: t }
        )

        // Sincronizamos la Liquidación que generó esa deuda
        const liqOrigen = await Liquidacion.findByPk(cxpAnterior.LiquidacionId, { transaction: t })
        if (liqOrigen) {
          await liqOrigen.update(
            {
              montoAbonado: parseFloat(liqOrigen.totalAPagar),
              montoPorPagar: 0,
              estado: 'Pagada',
            },
            { transaction: t }
          )
        }
      }
    }

    // --- 5. CRUCE DE ANTICIPOS ---
    let montoAnticipoAplicado = 0
    if (anticipo && parseFloat(anticipo.montoAplicado) > 0) {
      montoAnticipoAplicado = parseFloat(anticipo.montoAplicado)
      const antOriginal = await Anticipo.findByPk(anticipo.id, { transaction: t })
      if (antOriginal) {
        await LiquidacionAnticipo.create(
          {
            montoAplicado: montoAnticipoAplicado,
            AnticipoId: antOriginal.id,
            LiquidacionId: nuevaLiquidacion.id,
          },
          { transaction: t }
        )

        const nuevoSaldo = parseFloat(antOriginal.saldoPendiente) - montoAnticipoAplicado
        await antOriginal.update(
          {
            saldoPendiente: nuevoSaldo,
            estado: nuevoSaldo <= 0 ? 'Aplicado' : 'Pendiente',
          },
          { transaction: t }
        )

        const cxc = await CuentasPorCobrar.findOne({
          where: { referenciaId: antOriginal.id, origen: 'Anticipo' },
          transaction: t,
        })
        if (cxc) {
          const saldoCxC = parseFloat(cxc.montoPorCobrar) - montoAnticipoAplicado
          await cxc.update(
            { montoPorCobrar: saldoCxC, estado: saldoCxC <= 0 ? 'Cobrado' : 'Pendiente' },
            { transaction: t }
          )
        }

        await Movimiento.create(
          {
            tipoMovimiento: 'Ingreso',
            categoria: 'Cobro Anticipo',
            monto: montoAnticipoAplicado,
            idReferencia: nuevaLiquidacion.id,
            CajaId: null,
            descripcion: `CRUCE: Anticipo en ${codigoLiq}.`,
          },
          { transaction: t }
        )
      }
    }

    // --- 6. DETALLE Y STOCK ---
    await DetalleLiquidacion.create(
      { ...detalle, LiquidacionId: nuevaLiquidacion.id },
      { transaction: t }
    )
    const productoBodega = await Producto.findByPk(detalle.ProductoId, { transaction: t })
    const cantStock = convertirUnidadesBodega(
      detalle.cantidadNeta,
      detalle.unidad,
      productoBodega.unidadMedida || 'Quintales'
    )
    await productoBodega.update(
      { stock: parseFloat(productoBodega.stock) + cantStock },
      { transaction: t }
    )

    // --- 7. RETENCIÓN SRI ---
    if (retencion) {
      await Retencion.create(
        { ...retencion, LiquidacionId: nuevaLiquidacion.id },
        { transaction: t }
      )
    }

    // --- 8. CXP DE LA LIQUIDACIÓN ACTUAL (Lógica de saldos reales) ---
    const montoDeudaVieja = parseFloat(montoDeudaAnterior || 0)
    const netoHoy =
      parseFloat(liquidacion.totalLiquidacion) - montoAnticipoAplicado - liquidacion.totalRetencion
    const totalGlobalDeuda = netoHoy + montoDeudaVieja
    const abonadoHoy = parseFloat(liquidacion.montoAbonado || 0)
    const saldoFinalDeuda = totalGlobalDeuda - abonadoHoy

    // Solo creamos registro en CuentasPorPagar si queda deuda real
    if (saldoFinalDeuda > 0.01) {
      await CuentasPorPagar.create(
        {
          montoTotal: netoHoy,
          montoAbonado: Math.max(0, abonadoHoy - montoDeudaVieja),
          saldoPendiente: Math.max(0, saldoFinalDeuda),
          estado: 'Pendiente',
          LiquidacionId: nuevaLiquidacion.id,
        },
        { transaction: t }
      )
    }

    // Actualizamos cabecera de la liquidación actual
    await nuevaLiquidacion.update(
      {
        montoAbonado: abonadoHoy,
        montoPorPagar: Math.max(0, saldoFinalDeuda),
        estado: saldoFinalDeuda <= 0 ? 'Pagada' : 'Pendiente',
      },
      { transaction: t }
    )

    // --- 9. MOVIMIENTOS DE CAJA Y EGRESOS ---
    if (pEfec > 0) {
      await Movimiento.create(
        {
          tipoMovimiento: 'Egreso',
          categoria: 'Compra',
          monto: pEfec,
          idReferencia: nuevaLiquidacion.id,
          CajaId: CajaId,
          descripcion: `EGRESO: Liq ${codigoLiq} (Pago fruta + saldos ant.)`,
        },
        { transaction: t }
      )
      await caja.decrement({ saldoActual: pEfec }, { transaction: t })
    }

    const bancario =
      parseFloat(liquidacion.pagoTransferencia || 0) + parseFloat(liquidacion.pagoCheque || 0)
    if (bancario > 0) {
      await Movimiento.create(
        {
          tipoMovimiento: 'Egreso',
          categoria: 'Compra',
          monto: bancario,
          idReferencia: nuevaLiquidacion.id,
          CajaId: CajaId,
          descripcion: `BANCARIO: Liq ${codigoLiq}`,
        },
        { transaction: t }
      )
    }

    await t.commit()
    return {
      code: 201,
      message: 'Liquidación procesada correctamente.',
      id: nuevaLiquidacion.id,
      caja: await Caja.findByPk(CajaId),
    }
  } catch (error) {
    if (t) await t.rollback()
    console.error('SERVER ERROR:', error)
    return { code: 500, message: 'Error interno en el servidor.', error: error.message }
  }
}

export { registrarLiquidacion }

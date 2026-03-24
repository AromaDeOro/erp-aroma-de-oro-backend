import { Caja, Movimiento, sq } from '../../libs/db.js'

const cerrarCaja = async (id, data) => {
  const caja = await Caja.findByPk(id)

  if (!caja) return { code: 404, message: 'Caja no encontrada' }
  if (caja.estado === 'Cerrada') return { code: 400, message: 'La caja ya está cerrada' }

  try {
    const movimientos = await Movimiento.findAll({
      where: { CajaId: id },
    })

    let ingresosFisicos = 0
    let egresosFisicos = 0
    let sumaInyeccionesBancos = 0
    let movimientosVirtuales = 0 // Bancos/Cheques (No afectan el efectivo)

    movimientos.forEach((m) => {
      const valor = parseFloat(m.monto)
      const desc = m.descripcion?.toUpperCase() || ''

      // DETERMINAMOS SI ES UN MOVIMIENTO QUE AFECTA EL DINERO FÍSICO
      const esVirtual =
        desc.includes('BANCO') || desc.includes('CHEQUE') || desc.includes('TRANSFERENCIA')

      if (m.tipoMovimiento === 'Ingreso') {
        if (!esVirtual) {
          ingresosFisicos += valor
        } else {
          movimientosVirtuales += valor
          if (m.categoria === 'Bancos') {
            sumaInyeccionesBancos += valor
          }
        }
      } else if (m.tipoMovimiento === 'Egreso') {
        if (!esVirtual) {
          egresosFisicos += valor
        } else {
          // Si es un egreso por BANCO (como tus $2,000), no resta del físico
          movimientosVirtuales -= valor
        }
      }
    })

    // CÁLCULO REAL PARA EL ARQUEO DE AROMA DE ORO
    // Saldo Sistema = Apertura + Lo que entró en billetes - Lo que salió en billetes
    const saldoSistemaFisico = parseFloat(caja.montoApertura) + ingresosFisicos - egresosFisicos

    const montoContado = parseFloat(data.montoCierre)
    const diferenciaArqueo = montoContado - saldoSistemaFisico

    // ACTUALIZACIÓN DEL MODELO EN DB
    await caja.update({
      fechaCierre: new Date(),
      montoEsperado: saldoSistemaFisico, // Ahora guardará $4,700
      totalInyecciones: sumaInyeccionesBancos,
      montoCierre: montoContado,
      diferencia: diferenciaArqueo,
      estado: 'Cerrada',
      observaciones:
        data.observaciones || `Cierre Aroma de Oro. Diferencia: $${diferenciaArqueo.toFixed(2)}`,
    })

    return {
      code: 200,
      message: 'Caja cerrada y arqueada con éxito',
      resumen: {
        apertura: parseFloat(caja.montoApertura),
        totalIngresosEfectivo: ingresosFisicos,
        totalEgresosEfectivo: egresosFisicos,
        operacionesBancarias: movimientosVirtuales,
        esperado: saldoSistemaFisico,
        contado: montoContado,
        diferencia: diferenciaArqueo,
      },
    }
  } catch (error) {
    console.error('Error en servicio cerrarCaja:', error)
    return { code: 500, message: 'Error interno al procesar el cierre' }
  }
}
const registrarInyeccionBanco = async (data) => {
  const { monto, descripcion, CajaId } = data

  // Iniciamos transacción para que no haya errores de "plata fantasma"
  const t = await sq.transaction()

  try {
    // 1. Verificamos que la caja exista y esté abierta
    const caja = await Caja.findOne({
      where: { id: CajaId, estado: 'Abierta' },
      transaction: t,
    })

    if (!caja) {
      await t.rollback()
      return { code: 400, message: 'No existe una caja abierta para esta operación' }
    }

    // 2. Creamos el Movimiento de Ingreso (Categoría Bancos)
    const nuevoMovimiento = await Movimiento.create(
      {
        monto: parseFloat(monto),
        tipoMovimiento: 'Ingreso',
        categoria: 'Bancos',
        descripcion: descripcion || 'Inyección de capital desde Bancos',
        CajaId,
        idReferencia: null, // Es un ingreso manual
      },
      { transaction: t }
    )

    // 3. ACTUALIZAMOS EL SALDO ACTUAL (Aquí es donde la magia ocurre)
    // Sumamos el monto al saldoActual que ya tiene la caja en DB
    await caja.increment('saldoActual', {
      by: parseFloat(monto),
      transaction: t,
    })

    // Confirmamos los cambios
    await t.commit()

    // Traemos la caja actualizada para devolverla al frontend
    const cajaActualizada = await Caja.findByPk(CajaId)

    return {
      code: 201,
      message: 'Dinero de bancos ingresado a caja correctamente',
      movimiento: nuevoMovimiento,
      caja: cajaActualizada,
    }
  } catch (error) {
    if (t) await t.rollback()
    console.error('Error en registrarInyeccionBanco:', error.message)
    return { code: 500, message: 'Error interno al registrar el ingreso de banco' }
  }
}

export { cerrarCaja, registrarInyeccionBanco }

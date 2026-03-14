import { CuentasPorCobrar, Venta } from '../../libs/db.js'

const listarTodas = async () => {
  const cuentasPorCobrar = await CuentasPorCobrar.findAll({
    include: [Venta],
  })
  return {
    code: 200,
    cuentasPorCobrar,
  }
}

const listarPendientes = async () => {
  const cuentasPorCobrar = await CuentasPorCobrar.findAll({
    where: {
      estado: 'Pendiente',
    },
    include: [Venta],
  })
  return {
    code: 200,
    cuentasPorCobrar,
  }
}

const listarCobradas = async () => {
  const cuentasPorCobrar = await CuentasPorCobrar.findAll({
    where: {
      estado: 'Cobrado',
    },
    include: [Venta],
  })
  return {
    code: 200,
    cuentasPorCobrar,
  }
}

const obtenerInformacion = async (id) => {
  const cuenta = await CuentasPorCobrar.findOne({
    where: {
      id,
    },
  })

  if (!cuenta) return { code: 404, message: 'Cuenta no encontrada' }

  return {
    code: 200,
    cuenta,
  }
}

export { listarTodas, obtenerInformacion, listarPendientes, listarCobradas }

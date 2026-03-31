import { personaService } from '../../services/index.services.js'

const listarPersonas = async (req, res) => {
  try {
    const { code, personas } = await personaService.listarPersonas()
    res.status(code).json({
      personas,
    })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo.',
    })
  }
}

const listarProductores = async (req, res) => {
  try {
    const { code, productores } = await personaService.listarProductores()
    res.status(code).json({
      productores,
    })
  } catch (error) {
    console.log(error.message)
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo.',
    })
  }
}

const listarCompradores = async (req, res) => {
  try {
    const { code, compradores } = await personaService.listarCompradores()
    res.status(code).json({
      compradores,
    })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo.',
    })
  }
}

const listarTrabajadores = async (req, res) => {
  try {
    const { code, trabajadores } = await personaService.listarTrabajadores()
    res.status(code).json({
      trabajadores,
    })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo.',
    })
  }
}

const listarPersonaPorClave = async (req, res) => {
  try {
    const { key, value } = req.query
    const { code, message, persona } = await personaService.listarPersonaPorClave(key, value)

    res.status(code).json(message ? { message } : { persona })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo.',
    })
  }
}

const listarProximosCumples = async (req, res) => {
  try {
    const hoy = new Date()
    const manana = new Date()
    manana.setDate(hoy.getDate() + 1)

    const [respCumplesHoy, respCumpleasManana] = await Promise.all([
      personaService.listarProximosCumples(hoy),
      personaService.listarProximosCumples(manana),
    ])

    res.status(200).json({
      cumples: {
        alertasHoy: respCumplesHoy.trabajadores.map((p) => ({
          mensaje: `¡Hoy es el cumpleaños de ${p.nombreCompleto}!`,
          detalles: `Cumple ${p.getDataValue('edadCumplida')} años.`,
          id: p.id,
        })),
        alertasManana: respCumpleasManana.trabajadores.map((p) => ({
          mensaje: `¡Mañana cumple años ${p.nombreCompleto}!`,
          detalles: `Cumple ${p.getDataValue('edadCumplida')} años.`,
          id: p.id,
        })),
      },
    })
  } catch (error) {
    console.log(error)
    res.status(500).json({ message: error.message })
  }
}

export {
  listarPersonas,
  listarPersonaPorClave,
  listarCompradores,
  listarTrabajadores,
  listarProductores,
  listarProximosCumples,
}

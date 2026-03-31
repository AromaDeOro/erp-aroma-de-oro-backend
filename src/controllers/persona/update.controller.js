import { personaService } from '../../services/index.services.js'

const actualizarPersona = async (req, res) => {
  try {
    const { id } = req.params
    const { fechaNacimiento } = req.body
    const fechaAjustada = fechaNacimiento ? `${fechaNacimiento}T12:00:00` : null
    const data = fechaNacimiento ? { ...req.body, fechaNacimiento: fechaAjustada } : { ...req.body }
    const { code, message } = await personaService.actualizarPersona(id, data)
    res.status(code).json({
      message,
    })
  } catch (error) {
    console.log(error.message)
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

const recuperarProductor = async (req, res) => {
  try {
    const { id } = req.params
    if (!id) return { code: 400, message: 'El ID es obligatorio' }
    const data = req.body
    const { code, message } = await personaService.recuperarProductor(id, data)
    res.status(code).json({ message })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

const recuperarTrabajador = async (req, res) => {
  try {
    const { id } = req.params
    if (!id) return { code: 400, message: 'El ID es obligatorio' }
    const data = req.body
    const { code, message } = await personaService.recuperarTrabajador(id, data)
    res.status(code).json({ message })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

const recuperarComprador = async (req, res) => {
  try {
    const { id } = req.params
    if (!id) return { code: 400, message: 'El ID es obligatorio' }
    const data = req.body
    const { code, message } = await personaService.recuperarComprador(id, data)
    res.status(code).json({ message })
  } catch (error) {
    res.status(500).json({
      message: 'Error interno en el servidor. Intente de nuevo',
    })
  }
}

export { actualizarPersona, recuperarComprador, recuperarTrabajador, recuperarProductor }

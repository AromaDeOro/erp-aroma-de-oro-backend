import { nominaService } from '../../services/index.services.js'

const eliminarTrabajador = async (req, res) => {
  try {
    const { id } = req.params
    const { code, messsage } = await nominaService.eliminarTrabajador(id)
    res.status(code).json({ messsage })
  } catch (error) {
    const msg = error.messsage
    res.status(500).json({ message: msg })
  }
}

export { eliminarTrabajador }

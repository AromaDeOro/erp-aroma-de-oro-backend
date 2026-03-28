import fs from 'fs'
import path, { dirname } from 'path'
import { fileURLToPath } from 'url'
import nodemailer from 'nodemailer'
import { NODEMAILER_CONFIG } from '../../config/config.js'

const generatePathName = (filename) => {
  const __dirname = dirname(fileURLToPath(import.meta.url))
  const pathname = path.join(__dirname, `../../html/${filename}.html`)
  return pathname
}

const send = (to, file, subject) => {
  const transporter = nodemailer.createTransport(NODEMAILER_CONFIG)
  transporter.sendMail({
    from: 'rodrissolutions@gmail.com',
    to,
    subject,
    html: file,
  })
}

const recuperarContraseña = (to, user, nuevaClave, nombreEmpresa) => {
  try {
    const pathname = generatePathName('recuperar_clave')

    if (!fs.existsSync(pathname)) {
      throw new Error(`No se encontró el archivo HTML en: ${pathname}`)
    }

    const file = fs
      .readFileSync(pathname, { encoding: 'utf-8' })
      .toString()
      .replace('{{NOMBRE_USUARIO}}', user)
      .replace('{{NUEVA_CLAVE}}', nuevaClave)
      .replace('{{NOMBRE_EMPRESA}}', nombreEmpresa)

    send(to, file, 'Recuperación de clave - Aroma de Oro')
  } catch (error) {
    // Esto evita que el servidor se caiga (triggerUncaughtException)
    console.error('❌ ERROR EN HELPER DE CORREO:', error.message)
    return { code: 500, message: error.message }
  }
}

export default {
  recuperarContraseña,
}

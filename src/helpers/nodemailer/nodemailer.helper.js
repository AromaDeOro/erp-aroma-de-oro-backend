import fs from 'fs'
import path, { dirname } from 'path'
import { fileURLToPath } from 'url'
import nodemailer from 'nodemailer'
import { NODEMAILER_CONFIG } from '../../config/config.js'

const __dirname = dirname(fileURLToPath(import.meta.url))

/**
 * Envía el correo de recuperación.
 * Se usa async/await para atrapar errores de red (como el ENETUNREACH de Render).
 */
const recuperarContraseña = async (to, user, nuevaClave, nombreEmpresa) => {
  try {
    // Construcción de ruta absoluta al archivo HTML
    const pathname = path.resolve(__dirname, '../../html/recuperar_contraseña.html')

    if (!fs.existsSync(pathname)) {
      throw new Error(`No se encontró el archivo HTML en: ${pathname}`)
    }

    const content = fs.readFileSync(pathname, 'utf-8')

    // Reemplazo de variables en el template
    const htmlFinal = content
      .replace('{{NOMBRE_USUARIO}}', user)
      .replace('{{NUEVA_CLAVE}}', nuevaClave)
      .replace('{{NOMBRE_EMPRESA}}', nombreEmpresa)

    // Creamos el transporte con la config que tiene family: 4
    const transporter = nodemailer.createTransport(NODEMAILER_CONFIG)

    // El await aquí es VITAL para que el catch funcione si falla la conexión
    await transporter.sendMail({
      from: `"Aroma de Oro" <${NODEMAILER_CONFIG.auth.user}>`,
      to,
      subject: 'Recuperación de contraseña - Aroma de Oro',
      html: htmlFinal,
    })

    console.log(`✅ Correo enviado exitosamente a: ${to}`)
    return true
  } catch (error) {
    // Esto evita que el servidor se caiga (triggerUncaughtException)
    console.error('❌ ERROR EN HELPER DE CORREO:', error.message)
    return false
  }
}

export default {
  recuperarContraseña,
}

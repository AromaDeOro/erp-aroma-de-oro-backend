import { Router } from 'express'
import empresaRouter from './empresa/empresa.route.js'
import usuarioRouter from './usuario/usuario.route.js'
import productoRouter from './producto/producto.route.js'
import nominaRouter from './nomina/nomina.route.js'
import personaRouter from './persona/persona.route.js'
import authRouter from './auth/auth.route.js'
import ticketRouter from './ticket/ticket.route.js'
import cajaRouter from './caja/caja.route.js'
import movimientoRouter from './movimiento/movimiento.route.js'
import cuentasPorCobrarRouter from './cuentas-por-cobrar/cuentas-por-cobrar.route.js'
import cuentasPorPagarRouter from './cuentas-por-pagar/cuentas-por-pagar.route.js'
import liquidacionRouter from './liquidacion/liquidacion.route.js'
import ventaRouter from './venta/venta.route.js'
import reporteRouter from './reporte/reporte.route.js'
import abonoPorPagarRouter from './abono_por_pagar/abono-por-pagar.route.js'
import anticipoRouter from './anticipo/anticipo.route.js'
import prestamoRouter from './prestamo/prestamo.route.js'
import gastoRouter from './gasto/gasto.route.js'
import abonosPorCobrarRouter from './abonos_por_cobrar/abonos_por_cobrar.route.js'

const rootRouter = Router()

rootRouter.use('/empresa', empresaRouter)
rootRouter.use('/usuarios', usuarioRouter)
rootRouter.use('/productos', productoRouter)
rootRouter.use('/nominas', nominaRouter)
rootRouter.use('/personas', personaRouter)
rootRouter.use('/auth', authRouter)
rootRouter.use('/tickets', ticketRouter)
rootRouter.use('/cajas', cajaRouter)
rootRouter.use('/movimientos', movimientoRouter)
rootRouter.use('/cuentas-por-cobrar', cuentasPorCobrarRouter)
rootRouter.use('/cuentas-por-pagar', cuentasPorPagarRouter)
rootRouter.use('/liquidaciones', liquidacionRouter)
rootRouter.use('/ventas', ventaRouter)
rootRouter.use('/reportes', reporteRouter)
rootRouter.use('/abonos-por-pagar', abonoPorPagarRouter)
rootRouter.use('/anticipos', anticipoRouter)
rootRouter.use('/prestamos', prestamoRouter)
rootRouter.use('/gastos', gastoRouter)
rootRouter.use('/abonos-por-cobrar', abonosPorCobrarRouter)
export default rootRouter

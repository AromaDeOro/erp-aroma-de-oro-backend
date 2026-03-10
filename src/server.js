import express, { json } from 'express'
import cors from 'cors'
import logger from 'morgan'
import rootRouter from './routes/index.routes.js'
import cookieParser from 'cookie-parser'

const server = express()

// --- 🔥 CORS robusto y seguro (SOLUCIÓN REAL) ---
server.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', 'https://erp-aroma-de-oro-client.vercel.app')
  res.header('Access-Control-Allow-Credentials', 'true')
  res.header('Access-Control-Allow-Headers', 'Content-Type, Authorization')
  res.header('Access-Control-Allow-Methods', 'GET,POST,PUT,DELETE,OPTIONS')

  // Responder inmediatamente al preflight
  if (req.method === 'OPTIONS') {
    return res.sendStatus(200)
  }

  next()
})

// --- Middlewares normales ---
server.use(json({ limit: '5mb' }))
server.use(cookieParser())
server.use(logger('dev'))

// --- Rutas ---
server.use('/api/aroma-de-oro/', rootRouter)

export default server

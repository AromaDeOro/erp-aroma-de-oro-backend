--
-- PostgreSQL database dump
--

\restrict t4L9RncWhcnJSI79ML4UMFbprZJnuQck3K66BVEbT7AjAbWPEdgFn5rb61kge6m

-- Dumped from database version 18.3 (Debian 18.3-1.pgdg12+1)
-- Dumped by pg_dump version 18.3 (Ubuntu 18.3-1.pgdg24.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: aroma_de_oro_user
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO aroma_de_oro_user;

--
-- Name: enum_AbonosCuentasPorCobrar_metodoCobro; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_AbonosCuentasPorCobrar_metodoCobro" AS ENUM (
    'Efectivo',
    'Transferencia',
    'Depósito'
);


ALTER TYPE public."enum_AbonosCuentasPorCobrar_metodoCobro" OWNER TO aroma_de_oro_user;

--
-- Name: enum_AbonosCuentasPorPagar_metodoPago; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_AbonosCuentasPorPagar_metodoPago" AS ENUM (
    'Efectivo',
    'Transferencia',
    'Cheque',
    'Banco'
);


ALTER TYPE public."enum_AbonosCuentasPorPagar_metodoPago" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Anticipos_estado; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Anticipos_estado" AS ENUM (
    'Pendiente',
    'Aplicado'
);


ALTER TYPE public."enum_Anticipos_estado" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Cajas_estado; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Cajas_estado" AS ENUM (
    'Abierta',
    'Cerrada'
);


ALTER TYPE public."enum_Cajas_estado" OWNER TO aroma_de_oro_user;

--
-- Name: enum_CuentasPorCobrar_estado; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_CuentasPorCobrar_estado" AS ENUM (
    'Pendiente',
    'Cobrado'
);


ALTER TYPE public."enum_CuentasPorCobrar_estado" OWNER TO aroma_de_oro_user;

--
-- Name: enum_CuentasPorCobrar_origen; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_CuentasPorCobrar_origen" AS ENUM (
    'Venta',
    'Anticipo',
    'Préstamo'
);


ALTER TYPE public."enum_CuentasPorCobrar_origen" OWNER TO aroma_de_oro_user;

--
-- Name: enum_CuentasPorPagar_estado; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_CuentasPorPagar_estado" AS ENUM (
    'Pendiente',
    'Pagado'
);


ALTER TYPE public."enum_CuentasPorPagar_estado" OWNER TO aroma_de_oro_user;

--
-- Name: enum_DetalleLiquidaciones_unidad; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_DetalleLiquidaciones_unidad" AS ENUM (
    'Quintales',
    'Kilogramos',
    'Libras',
    'Unidades',
    'Tacho'
);


ALTER TYPE public."enum_DetalleLiquidaciones_unidad" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Gastos_categoria; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Gastos_categoria" AS ENUM (
    'Alimentación',
    'Repuestos',
    'Combustible',
    'Mantenimiento',
    'Suministros',
    'Cumpleaños',
    'Bonificaciones',
    'Varios'
);


ALTER TYPE public."enum_Gastos_categoria" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Liquidaciones_estado; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Liquidaciones_estado" AS ENUM (
    'Pendiente',
    'Pagada',
    'Anulada'
);


ALTER TYPE public."enum_Liquidaciones_estado" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Movimientos_categoria; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Movimientos_categoria" AS ENUM (
    'Compra',
    'Venta',
    'Gasto General',
    'Nomina',
    'Bancos',
    'Otros',
    'Cuentas por Pagar',
    'Cuentas por Cobrar',
    'Anticipo',
    'Préstamo',
    'Cobro Anticipo',
    'Cobro Préstamo'
);


ALTER TYPE public."enum_Movimientos_categoria" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Movimientos_tipoMovimiento; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Movimientos_tipoMovimiento" AS ENUM (
    'Ingreso',
    'Egreso'
);


ALTER TYPE public."enum_Movimientos_tipoMovimiento" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Nominas_tipoPeriodo; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Nominas_tipoPeriodo" AS ENUM (
    'Jornal',
    'Semanal',
    'Quincenal',
    'Mensual'
);


ALTER TYPE public."enum_Nominas_tipoPeriodo" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Personas_tipo; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Personas_tipo" AS ENUM (
    'Productor',
    'Comprador',
    'Trabajador'
);


ALTER TYPE public."enum_Personas_tipo" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Personas_tipoIdentificacion; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Personas_tipoIdentificacion" AS ENUM (
    'Cédula',
    'Pasaporte',
    'RUC'
);


ALTER TYPE public."enum_Personas_tipoIdentificacion" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Prestamos_estado; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Prestamos_estado" AS ENUM (
    'Pendiente',
    'Pagado',
    'Cancelado'
);


ALTER TYPE public."enum_Prestamos_estado" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Productos_unidadMedida; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Productos_unidadMedida" AS ENUM (
    'Quintales',
    'Kilogramos',
    'Libras',
    'Unidades',
    'Tacho'
);


ALTER TYPE public."enum_Productos_unidadMedida" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Reportes_formato; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Reportes_formato" AS ENUM (
    'PDF',
    'EXCEL'
);


ALTER TYPE public."enum_Reportes_formato" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Reportes_tipo; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Reportes_tipo" AS ENUM (
    'CAJA',
    'VENTAS',
    'COMPRAS',
    'INVENTARIO',
    'GENERAL',
    'NOMINA'
);


ALTER TYPE public."enum_Reportes_tipo" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Respaldos_estado; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Respaldos_estado" AS ENUM (
    'Exitoso',
    'Fallido'
);


ALTER TYPE public."enum_Respaldos_estado" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Tickets_estadoTicket; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Tickets_estadoTicket" AS ENUM (
    'Pendiente',
    'Liquidado'
);


ALTER TYPE public."enum_Tickets_estadoTicket" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Usuarios_rol; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Usuarios_rol" AS ENUM (
    'Administrador',
    'Contador',
    'Estándar'
);


ALTER TYPE public."enum_Usuarios_rol" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Ventas_tipoVenta; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Ventas_tipoVenta" AS ENUM (
    'Contado',
    'Crédito'
);


ALTER TYPE public."enum_Ventas_tipoVenta" OWNER TO aroma_de_oro_user;

--
-- Name: enum_Ventas_unidad; Type: TYPE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TYPE public."enum_Ventas_unidad" AS ENUM (
    'Quintales',
    'Kilogramos',
    'Libras',
    'Unidades',
    'Arroba',
    'Tacho'
);


ALTER TYPE public."enum_Ventas_unidad" OWNER TO aroma_de_oro_user;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: AbonosCuentasPorCobrar; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."AbonosCuentasPorCobrar" (
    id uuid NOT NULL,
    monto numeric(10,2) NOT NULL,
    "fechaCobro" timestamp with time zone,
    "metodoCobro" public."enum_AbonosCuentasPorCobrar_metodoCobro" NOT NULL,
    "CuentaPorCobrarId" uuid NOT NULL,
    "UsuarioId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CuentasPorCobrarId" uuid
);


ALTER TABLE public."AbonosCuentasPorCobrar" OWNER TO aroma_de_oro_user;

--
-- Name: AbonosCuentasPorPagar; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."AbonosCuentasPorPagar" (
    id uuid NOT NULL,
    monto numeric(10,2) NOT NULL,
    "fechaPago" timestamp with time zone,
    "metodoPago" public."enum_AbonosCuentasPorPagar_metodoPago" NOT NULL,
    notas text,
    "CuentaPorPagarId" uuid NOT NULL,
    "UsuarioId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."AbonosCuentasPorPagar" OWNER TO aroma_de_oro_user;

--
-- Name: Anticipos; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Anticipos" (
    id uuid NOT NULL,
    monto numeric(10,2) NOT NULL,
    "saldoPendiente" numeric(10,2) NOT NULL,
    "fechaEmision" timestamp with time zone,
    estado public."enum_Anticipos_estado" DEFAULT 'Pendiente'::public."enum_Anticipos_estado",
    "PersonaId" uuid NOT NULL,
    comentario character varying(255) NOT NULL,
    "CajaId" uuid NOT NULL,
    "UsuarioId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Anticipos" OWNER TO aroma_de_oro_user;

--
-- Name: Cajas; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Cajas" (
    id uuid NOT NULL,
    estado public."enum_Cajas_estado" DEFAULT 'Abierta'::public."enum_Cajas_estado",
    "fechaApertura" timestamp with time zone,
    "fechaCierre" timestamp with time zone,
    "montoApertura" numeric(12,2) DEFAULT 0 NOT NULL,
    "saldoActual" numeric(12,2) DEFAULT 0 NOT NULL,
    "totalInyecciones" numeric(12,2) DEFAULT 0,
    "montoEsperado" numeric(12,2) DEFAULT 0,
    "montoCierre" numeric(12,2),
    diferencia numeric(12,2),
    observaciones text,
    "UsuarioId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Cajas" OWNER TO aroma_de_oro_user;

--
-- Name: COLUMN "Cajas"."montoApertura"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Cajas"."montoApertura" IS 'Dinero físico con el que se inicia el turno';


--
-- Name: COLUMN "Cajas"."saldoActual"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Cajas"."saldoActual" IS 'Saldo que fluctúa con cada venta, compra o inyección de banco';


--
-- Name: COLUMN "Cajas"."totalInyecciones"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Cajas"."totalInyecciones" IS 'Suma total de dinero ingresado desde Bancos u Otros durante el turno';


--
-- Name: COLUMN "Cajas"."montoEsperado"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Cajas"."montoEsperado" IS 'Cálculo final del sistema: Apertura + Ingresos - Egresos';


--
-- Name: COLUMN "Cajas"."montoCierre"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Cajas"."montoCierre" IS 'Dinero físico reportado por el cajero al finalizar';


--
-- Name: COLUMN "Cajas".diferencia; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Cajas".diferencia IS 'Descuadre: montoCierre - montoEsperado';


--
-- Name: CuentasPorCobrar; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."CuentasPorCobrar" (
    id uuid NOT NULL,
    "montoTotal" numeric(10,2) NOT NULL,
    "montoCheque" numeric(10,2) DEFAULT 0,
    "montoEfectivo" numeric(10,2) DEFAULT 0,
    "montoTransferencia" numeric(10,2) DEFAULT 0,
    "abonoAnticipado" numeric(10,2) DEFAULT 0,
    "montoPorCobrar" numeric(10,2) NOT NULL,
    fecha timestamp with time zone,
    estado public."enum_CuentasPorCobrar_estado",
    origen public."enum_CuentasPorCobrar_origen" DEFAULT 'Venta'::public."enum_CuentasPorCobrar_origen" NOT NULL,
    "referenciaId" uuid,
    "VentaId" uuid,
    comentario text
);


ALTER TABLE public."CuentasPorCobrar" OWNER TO aroma_de_oro_user;

--
-- Name: CuentasPorPagar; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."CuentasPorPagar" (
    id uuid NOT NULL,
    "montoTotal" numeric(10,2) NOT NULL,
    "montoAbonado" numeric(10,2) NOT NULL,
    "saldoPendiente" numeric(10,2) NOT NULL,
    estado public."enum_CuentasPorPagar_estado" DEFAULT 'Pendiente'::public."enum_CuentasPorPagar_estado",
    "fechaAbono" timestamp with time zone,
    "LiquidacionId" uuid NOT NULL
);


ALTER TABLE public."CuentasPorPagar" OWNER TO aroma_de_oro_user;

--
-- Name: DetalleLiquidaciones; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."DetalleLiquidaciones" (
    id uuid NOT NULL,
    "descripcionProducto" character varying(255) NOT NULL,
    calificacion double precision DEFAULT '0'::double precision,
    unidad public."enum_DetalleLiquidaciones_unidad" NOT NULL,
    cantidad double precision NOT NULL,
    impurezas double precision DEFAULT '0'::double precision,
    "descuentoMerma" double precision DEFAULT '0'::double precision,
    "cantidadNeta" double precision NOT NULL,
    precio numeric(10,2) NOT NULL,
    parcial numeric(10,2) NOT NULL,
    "ProductoId" uuid NOT NULL,
    "LiquidacionId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DetalleLiquidaciones" OWNER TO aroma_de_oro_user;

--
-- Name: COLUMN "DetalleLiquidaciones".calificacion; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."DetalleLiquidaciones".calificacion IS 'Porcentaje o grado de calidad que afecta el peso (antes humedad)';


--
-- Name: Empresa; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Empresa" (
    id uuid NOT NULL,
    nombre character varying(255) NOT NULL,
    ruc character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    correo character varying(255)
);


ALTER TABLE public."Empresa" OWNER TO aroma_de_oro_user;

--
-- Name: Gastos; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Gastos" (
    id uuid NOT NULL,
    codigo character varying(255) NOT NULL,
    monto numeric(10,2) NOT NULL,
    descripcion text NOT NULL,
    categoria public."enum_Gastos_categoria" DEFAULT 'Varios'::public."enum_Gastos_categoria",
    fecha timestamp with time zone,
    "CajaId" uuid NOT NULL,
    "UsuarioId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Gastos" OWNER TO aroma_de_oro_user;

--
-- Name: LiquidacionAnticipos; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."LiquidacionAnticipos" (
    id uuid NOT NULL,
    "montoAplicado" numeric(10,2) NOT NULL,
    "AnticipoId" uuid NOT NULL,
    "LiquidacionId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."LiquidacionAnticipos" OWNER TO aroma_de_oro_user;

--
-- Name: COLUMN "LiquidacionAnticipos"."montoAplicado"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."LiquidacionAnticipos"."montoAplicado" IS 'La porción del anticipo usada en esta liquidación';


--
-- Name: Liquidaciones; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Liquidaciones" (
    id uuid NOT NULL,
    codigo character varying(255) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    "totalLiquidacion" numeric(10,2) NOT NULL,
    "totalRetencion" numeric(10,2) DEFAULT 0,
    "totalAPagar" numeric(10,2) NOT NULL,
    "abonoAnticipo" numeric(10,2) DEFAULT 0,
    "pagoEfectivo" numeric(10,2) DEFAULT 0,
    "pagoCheque" numeric(10,2) DEFAULT 0,
    "pagoTransferencia" numeric(10,2) DEFAULT 0,
    "montoAbonado" numeric(10,2) DEFAULT 0,
    "montoPorPagar" numeric(10,2) DEFAULT 0,
    estado public."enum_Liquidaciones_estado" DEFAULT 'Pendiente'::public."enum_Liquidaciones_estado",
    "UsuarioId" uuid NOT NULL,
    "ProductorId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Liquidaciones" OWNER TO aroma_de_oro_user;

--
-- Name: COLUMN "Liquidaciones"."totalLiquidacion"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Liquidaciones"."totalLiquidacion" IS 'Valor bruto de la fruta entregada';


--
-- Name: COLUMN "Liquidaciones"."totalRetencion"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Liquidaciones"."totalRetencion" IS 'Retenciones de ley aplicadas';


--
-- Name: COLUMN "Liquidaciones"."totalAPagar"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Liquidaciones"."totalAPagar" IS 'Neto después de retenciones (Lo que le pertenece al productor)';


--
-- Name: COLUMN "Liquidaciones"."abonoAnticipo"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Liquidaciones"."abonoAnticipo" IS 'Monto descontado de anticipos previos';


--
-- Name: COLUMN "Liquidaciones"."montoAbonado"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Liquidaciones"."montoAbonado" IS 'Suma de (abonoAnticipo + pagos del día)';


--
-- Name: COLUMN "Liquidaciones"."montoPorPagar"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Liquidaciones"."montoPorPagar" IS 'Saldo que queda pendiente como Cuenta por Pagar';


--
-- Name: Movimientos; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Movimientos" (
    id uuid NOT NULL,
    fecha timestamp with time zone,
    "tipoMovimiento" public."enum_Movimientos_tipoMovimiento" NOT NULL,
    categoria public."enum_Movimientos_categoria" NOT NULL,
    monto numeric(12,2) NOT NULL,
    "idReferencia" uuid,
    descripcion character varying(255),
    "CajaId" uuid,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Movimientos" OWNER TO aroma_de_oro_user;

--
-- Name: Nominas; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Nominas" (
    id uuid NOT NULL,
    codigo character varying(255) NOT NULL,
    "fechaPago" timestamp with time zone,
    "tipoPeriodo" public."enum_Nominas_tipoPeriodo" DEFAULT 'Jornal'::public."enum_Nominas_tipoPeriodo" NOT NULL,
    "sueldoBase" numeric(10,2) NOT NULL,
    "unidadesTrabajadas" numeric(10,2) DEFAULT 1 NOT NULL,
    "subTotal" numeric(10,2) NOT NULL,
    bono numeric(10,2) DEFAULT 0,
    "descuentoGeneral" numeric(10,2) DEFAULT 0,
    "descuentoPrestamo" numeric(10,2) DEFAULT 0,
    "totalPagar" numeric(10,2) NOT NULL,
    "PersonaId" uuid NOT NULL,
    "UsuarioId" uuid NOT NULL,
    "PrestamoId" uuid,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Nominas" OWNER TO aroma_de_oro_user;

--
-- Name: Personas; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Personas" (
    id uuid NOT NULL,
    "nombreCompleto" character varying(255) NOT NULL,
    "tipoIdentificacion" public."enum_Personas_tipoIdentificacion" NOT NULL,
    "numeroIdentificacion" character varying(255) NOT NULL,
    tipo public."enum_Personas_tipo",
    telefono character varying(255),
    correo character varying(255),
    direccion character varying(255),
    "estaActivo" boolean DEFAULT true,
    "fechaCreacion" timestamp with time zone DEFAULT '2026-04-24 22:39:38.083+00'::timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "fechaNacimiento" date
);


ALTER TABLE public."Personas" OWNER TO aroma_de_oro_user;

--
-- Name: Prestamos; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Prestamos" (
    id uuid NOT NULL,
    "montoTotal" numeric(10,2) NOT NULL,
    "cuotasPactadas" integer DEFAULT 1,
    "cuotasPagadas" integer DEFAULT 0,
    comentario text,
    "montoCuota" numeric(10,2) NOT NULL,
    "saldoPendiente" numeric(10,2) NOT NULL,
    estado public."enum_Prestamos_estado" DEFAULT 'Pendiente'::public."enum_Prestamos_estado",
    "fechaPrestamo" timestamp with time zone,
    "PersonaId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "UsuarioId" uuid,
    "CajaId" uuid
);


ALTER TABLE public."Prestamos" OWNER TO aroma_de_oro_user;

--
-- Name: Productos; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Productos" (
    id uuid NOT NULL,
    nombre character varying(255) NOT NULL,
    "unidadMedida" public."enum_Productos_unidadMedida" DEFAULT 'Quintales'::public."enum_Productos_unidadMedida" NOT NULL,
    stock numeric(10,2) DEFAULT 0 NOT NULL,
    "estaActivo" boolean DEFAULT true,
    "fechaCreacion" timestamp with time zone,
    "inversionInicial" numeric(10,2) DEFAULT 0
);


ALTER TABLE public."Productos" OWNER TO aroma_de_oro_user;

--
-- Name: Reportes; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Reportes" (
    id uuid NOT NULL,
    nombre character varying(255) NOT NULL,
    tipo public."enum_Reportes_tipo" NOT NULL,
    url character varying(255) NOT NULL,
    "publicId" character varying(255) NOT NULL,
    "fechaCreacion" timestamp with time zone,
    "fechaRangoInicio" timestamp with time zone NOT NULL,
    "fechaRangoFin" timestamp with time zone NOT NULL,
    formato public."enum_Reportes_formato" NOT NULL,
    "UsuarioId" uuid NOT NULL
);


ALTER TABLE public."Reportes" OWNER TO aroma_de_oro_user;

--
-- Name: Respaldos; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Respaldos" (
    id uuid NOT NULL,
    "nombreArchivo" character varying(255) NOT NULL,
    "urlCloudinary" text NOT NULL,
    tamano character varying(255),
    estado public."enum_Respaldos_estado" DEFAULT 'Exitoso'::public."enum_Respaldos_estado",
    "CajaId" uuid,
    "fechaGeneracion" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Respaldos" OWNER TO aroma_de_oro_user;

--
-- Name: COLUMN "Respaldos"."CajaId"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Respaldos"."CajaId" IS 'Relación con la caja que generó este backup al cerrar';


--
-- Name: Retenciones; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Retenciones" (
    id uuid NOT NULL,
    descripcion character varying(255) NOT NULL,
    "porcentajeRetencion" numeric(10,2) NOT NULL,
    "valorRetenido" numeric(10,2) NOT NULL,
    "LiquidacionId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Retenciones" OWNER TO aroma_de_oro_user;

--
-- Name: Tickets; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Tickets" (
    id uuid NOT NULL,
    numero character varying(255) NOT NULL,
    "identificacionTemporal" character varying(255) NOT NULL,
    "placaVehiculo" character varying(255),
    "pesoBruto" double precision NOT NULL,
    "taraVehiculo" double precision,
    "pesoNeto" double precision NOT NULL,
    "fechaIngreso" timestamp with time zone,
    "estadoTicket" public."enum_Tickets_estadoTicket" DEFAULT 'Pendiente'::public."enum_Tickets_estadoTicket",
    "ProductoId" uuid NOT NULL
);


ALTER TABLE public."Tickets" OWNER TO aroma_de_oro_user;

--
-- Name: Usuarios; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Usuarios" (
    id uuid NOT NULL,
    "nombresCompletos" character varying(255) NOT NULL,
    cedula character varying(255) NOT NULL,
    telefono character varying(255),
    correo character varying(255),
    clave character varying(255) NOT NULL,
    rol public."enum_Usuarios_rol" DEFAULT 'Estándar'::public."enum_Usuarios_rol",
    "estaActivo" boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Usuarios" OWNER TO aroma_de_oro_user;

--
-- Name: Ventas; Type: TABLE; Schema: public; Owner: aroma_de_oro_user
--

CREATE TABLE public."Ventas" (
    id uuid NOT NULL,
    "codigoVenta" character varying(255) NOT NULL,
    unidad public."enum_Ventas_unidad" DEFAULT 'Quintales'::public."enum_Ventas_unidad" NOT NULL,
    "cantidadBruta" numeric(10,2) NOT NULL,
    calificacion numeric(10,2) DEFAULT 0,
    impurezas numeric(10,2) DEFAULT 0,
    "descuentoMerma" numeric(10,2) DEFAULT 0,
    "cantidadNeta" numeric(10,2) NOT NULL,
    "precioUnitario" numeric(10,2) NOT NULL,
    "totalFactura" numeric(10,2) NOT NULL,
    "retencionConcepto" character varying(255),
    "retencionPorcentaje" numeric(5,2) DEFAULT 0,
    "valorRetenido" numeric(10,2) DEFAULT 0,
    "montoAnticipo" numeric(10,2) DEFAULT 0,
    "totalALiquidar" numeric(10,2) NOT NULL,
    "montoAbonado" numeric(10,2) DEFAULT 0,
    "montoPendiente" numeric(10,2) DEFAULT 0,
    "tipoVenta" public."enum_Ventas_tipoVenta" DEFAULT 'Contado'::public."enum_Ventas_tipoVenta",
    "PersonaId" uuid NOT NULL,
    "ProductoId" uuid NOT NULL,
    "UsuarioId" uuid NOT NULL,
    "CajaId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "pagoEfectivo" numeric(10,2) DEFAULT 0,
    "pagoTransferencia" numeric(10,2) DEFAULT 0,
    "pagoCheque" numeric(10,2) DEFAULT 0
);


ALTER TABLE public."Ventas" OWNER TO aroma_de_oro_user;

--
-- Name: COLUMN "Ventas".calificacion; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas".calificacion IS 'Porcentaje de humedad/calidad';


--
-- Name: COLUMN "Ventas".impurezas; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas".impurezas IS 'Porcentaje de impurezas';


--
-- Name: COLUMN "Ventas"."descuentoMerma"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."descuentoMerma" IS 'Peso fijo restado (ej: sacos)';


--
-- Name: COLUMN "Ventas"."cantidadNeta"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."cantidadNeta" IS 'Peso final tras descuentos';


--
-- Name: COLUMN "Ventas"."totalFactura"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."totalFactura" IS 'Subtotal (Cantidad Neta * Precio)';


--
-- Name: COLUMN "Ventas"."retencionConcepto"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."retencionConcepto" IS 'Ej: Retención IR 1% o Código específico';


--
-- Name: COLUMN "Ventas"."valorRetenido"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."valorRetenido" IS 'Monto que se descuenta del pago por retención';


--
-- Name: COLUMN "Ventas"."montoAnticipo"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."montoAnticipo" IS 'Créditos previos que el cliente ya tenía';


--
-- Name: COLUMN "Ventas"."totalALiquidar"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."totalALiquidar" IS 'Dinero real final: (TotalFactura - ValorRetenido - MontoAnticipo)';


--
-- Name: COLUMN "Ventas"."montoAbonado"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."montoAbonado" IS 'Suma total de lo pagado hoy (Efectivo + Transferencia + Cheque)';


--
-- Name: COLUMN "Ventas"."montoPendiente"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."montoPendiente" IS 'Saldo que queda debiendo (TotalALiquidar - MontoAbonado)';


--
-- Name: COLUMN "Ventas"."pagoEfectivo"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."pagoEfectivo" IS 'Cantidad real recibida en efectivo físico';


--
-- Name: COLUMN "Ventas"."pagoTransferencia"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."pagoTransferencia" IS 'Cantidad real recibida vía transferencia bancaria';


--
-- Name: COLUMN "Ventas"."pagoCheque"; Type: COMMENT; Schema: public; Owner: aroma_de_oro_user
--

COMMENT ON COLUMN public."Ventas"."pagoCheque" IS 'Cantidad recibida en cheques';


--
-- Data for Name: AbonosCuentasPorCobrar; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."AbonosCuentasPorCobrar" (id, monto, "fechaCobro", "metodoCobro", "CuentaPorCobrarId", "UsuarioId", "createdAt", "updatedAt", "CuentasPorCobrarId") FROM stdin;
e07fc1e0-3b80-440e-96a3-d1b3c2ee8b62	10.00	2026-03-28 20:33:26.806+00	Efectivo	915d4e42-21c6-416b-b687-1d2ea4b747e5	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-28 20:33:26.806+00	2026-03-28 20:33:26.806+00	\N
985505a5-0de0-4b4d-896f-8310d6b085da	90.00	2026-03-30 14:25:32.651+00	Efectivo	915d4e42-21c6-416b-b687-1d2ea4b747e5	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-30 14:25:32.652+00	2026-03-30 14:25:32.652+00	\N
83fb53b9-e8b7-4a21-85c0-e9cbf815d329	60.00	2026-04-06 16:09:04.768+00	Efectivo	c55d896f-a4d8-4821-8642-3e0c755abbc1	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 16:09:04.768+00	2026-04-06 16:09:04.768+00	\N
a1c221ce-1704-4152-8f65-03ee535571ba	60.00	2026-04-13 12:49:45.188+00	Efectivo	e96961e0-5f82-472d-b148-ee40603fcc9c	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 12:49:45.188+00	2026-04-13 12:49:45.188+00	\N
2a7b289e-b287-4e44-8e9b-ebe65afb6dc0	70.25	2026-04-18 20:22:02.094+00	Efectivo	89b0c9dd-10ad-4356-a97b-7b4456cd7b53	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 20:22:02.094+00	2026-04-18 20:22:02.094+00	\N
6a734238-b7c3-45b5-a8fb-3a1aff207978	20.00	2026-04-20 13:03:48.304+00	Efectivo	7e4c67b8-6edd-4c48-a65c-5751f4c8f619	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 13:03:48.305+00	2026-04-20 13:03:48.305+00	\N
f5366002-2605-4bf1-8435-bb1694003290	60.00	2026-04-20 13:06:36.55+00	Efectivo	7468e77a-8b18-4de7-a62c-c2739c371761	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 13:06:36.55+00	2026-04-20 13:06:36.55+00	\N
\.


--
-- Data for Name: AbonosCuentasPorPagar; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."AbonosCuentasPorPagar" (id, monto, "fechaPago", "metodoPago", notas, "CuentaPorPagarId", "UsuarioId", "createdAt", "updatedAt") FROM stdin;
58cd1265-3600-4df3-b5f3-074d32883de8	957.60	2026-03-30 14:25:43.298+00	Efectivo	Abono a Liquidación LIQ-0000001	c4fac960-7acd-420e-a40e-1fd4e50e72d0	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-30 14:25:43.299+00	2026-03-30 14:25:43.299+00
a1a16a5c-514b-422e-bebf-ae9212c0545b	0.84	2026-03-30 20:18:15.418+00	Efectivo	Abono a Liquidación LIQ-0000013	eccd310e-e7d4-447e-b2ad-c4be4af4678a	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-30 20:18:15.419+00	2026-03-30 20:18:15.419+00
\.


--
-- Data for Name: Anticipos; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Anticipos" (id, monto, "saldoPendiente", "fechaEmision", estado, "PersonaId", comentario, "CajaId", "UsuarioId", "createdAt", "updatedAt") FROM stdin;
967b2d2d-a86a-4241-b535-0e5c0219794c	1000.00	0.00	2026-03-28 20:27:08.523+00	Aplicado	f45aed61-5473-413a-9eb3-efb718c6c06d	COMPRAS DE INSUMOS	f5d67914-e497-4a50-99de-e96d09f01314	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-28 20:27:08.524+00	2026-03-28 20:29:39.139+00
\.


--
-- Data for Name: Cajas; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Cajas" (id, estado, "fechaApertura", "fechaCierre", "montoApertura", "saldoActual", "totalInyecciones", "montoEsperado", "montoCierre", diferencia, observaciones, "UsuarioId", "createdAt", "updatedAt") FROM stdin;
64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	Cerrada	2026-04-06 13:29:04.273+00	2026-04-07 23:44:14.385+00	3036.20	1215.85	0.00	1215.85	991.70	-224.15	Cierre Aroma Oro. Diferencia: -$224.15	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 13:29:04.274+00	2026-04-07 23:44:14.385+00
f5d67914-e497-4a50-99de-e96d09f01314	Cerrada	2026-03-28 20:24:34.883+00	2026-03-30 14:24:23.215+00	10000.00	11790.00	0.00	11790.00	11790.00	0.00	Cierre Aroma Oro. Diferencia: -$0.00	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-28 20:24:34.884+00	2026-03-30 14:24:23.215+00
cfb7b9de-fdd8-49f0-b67e-208c33206ec6	Cerrada	2026-03-30 14:25:23.286+00	2026-03-30 14:26:05.39+00	1000.00	132.40	0.00	132.40	132.40	0.00	Cierre Aroma Oro. Diferencia: $0.00	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-30 14:25:23.286+00	2026-03-30 14:26:05.39+00
63be6307-466b-44c8-90f7-1dce3f6801e9	Cerrada	2026-04-10 12:45:24.835+00	2026-04-10 22:27:07.292+00	979.70	3278.65	0.00	3278.65	3278.50	-0.15	Cierre Aroma Oro. Diferencia: -$0.15	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-10 12:45:24.836+00	2026-04-10 22:27:07.292+00
15b9a287-e977-4374-9c81-58d01bc780bb	Cerrada	2026-04-09 13:29:09.24+00	2026-04-09 22:19:51.311+00	451.15	980.46	0.00	980.46	979.70	-0.76	Cierre Aroma Oro. Diferencia: -$0.76	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-09 13:29:09.241+00	2026-04-09 22:19:51.311+00
50df0617-4113-4855-be22-d596adb26685	Cerrada	2026-04-13 13:23:40.096+00	2026-04-13 22:21:17.693+00	1103.90	193.75	0.00	193.75	194.00	0.25	Cierre Aroma Oro. Diferencia: $0.25	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 13:23:40.096+00	2026-04-13 22:21:17.694+00
0028889b-9d19-4401-8da9-fbdb75385cb4	Cerrada	2026-04-02 13:03:58.981+00	2026-04-02 22:30:53.791+00	3419.05	2420.81	0.00	2440.81	2434.10	-6.71	Cierre Aroma Oro. Diferencia: -$6.71	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 13:03:58.982+00	2026-04-02 22:30:53.792+00
573dc33b-a8b0-40a3-b0be-4613dcf824b6	Cerrada	2026-04-16 14:52:20.543+00	2026-04-16 22:31:49.196+00	13506.75	11739.08	0.00	11749.08	11739.30	-9.78	FACTURA SALIENTE DE 9,3	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-16 14:52:20.543+00	2026-04-16 22:31:49.196+00
9ba52a35-c19c-45bb-b535-358cbaee6ef5	Cerrada	2026-04-15 12:40:35.074+00	2026-04-16 14:51:19.173+00	2603.85	13506.98	0.00	13506.98	13506.75	-0.23	Diferencia por facturas realizadas con valores de transferencias 	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-15 12:40:35.075+00	2026-04-17 05:18:16.542+00
636913d0-a933-4f98-92a2-085fc3a49824	Cerrada	2026-04-17 12:29:47.873+00	2026-04-17 22:38:38.5+00	11739.30	10861.03	0.00	10861.03	10861.60	0.57	Cierre Aroma Oro. Diferencia: $0.57	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 12:29:47.874+00	2026-04-17 22:38:38.5+00
13205a0c-e9eb-47a5-9e8f-1a13834d06d6	Cerrada	2026-03-30 14:47:53.704+00	2026-03-30 22:58:40.86+00	6340.25	6010.22	0.00	6010.22	6041.70	31.48	Cierre Aroma Oro. Diferencia: $31.48	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-30 14:47:53.705+00	2026-03-30 22:58:40.861+00
4b0d8a84-a254-4e20-a4b0-09c251615301	Cerrada	2026-04-20 12:43:08.768+00	2026-04-20 22:53:40.314+00	8257.20	6664.60	170.00	6664.60	6645.90	-18.70	Cierre Aroma Oro. Diferencia: -$18.70	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 12:43:08.769+00	2026-04-20 22:53:40.315+00
2dbaaf95-faab-4f9b-a861-c96e84624908	Cerrada	2026-04-14 13:07:43.437+00	2026-04-14 22:32:45.706+00	194.00	2605.82	0.00	2605.82	2603.85	-1.97	Cierre Aroma Oro. Diferencia: -$1.97	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-14 13:07:43.438+00	2026-04-14 22:32:45.707+00
656242f8-2fbc-46f8-84df-0e8598c1f019	Cerrada	2026-04-08 12:39:28.703+00	2026-04-08 22:26:54.5+00	991.70	452.21	0.00	452.21	451.15	-1.06	Cierre Aroma Oro. Diferencia: -$1.06	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-08 12:39:28.704+00	2026-04-08 22:26:54.501+00
f6118082-3342-406e-be26-1375b0845378	Cerrada	2026-04-11 12:27:57.273+00	2026-04-13 13:23:24.656+00	3278.50	1106.04	0.00	1106.04	1103.90	-2.14	Cierre Aroma Oro. Diferencia: -$2.14	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-11 12:27:57.274+00	2026-04-13 13:23:24.674+00
79f0219a-73de-442f-8648-9e177a159ff9	Cerrada	2026-04-01 12:42:34.066+00	2026-04-01 22:22:30.674+00	5156.00	3417.53	0.00	3417.53	3419.05	1.52	Cierre Aroma Oro. Diferencia: $1.52	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-01 12:42:34.067+00	2026-04-01 22:22:30.675+00
75af6626-362e-4bc6-8947-8b7f39d0cc6b	Cerrada	2026-04-04 13:08:03.644+00	2026-04-04 21:35:12.187+00	2434.10	3033.67	0.00	3033.67	3036.20	2.53	Cierre Aroma Oro. Diferencia: $2.53	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 13:08:03.644+00	2026-04-04 21:35:12.188+00
b50721c2-08e2-463a-a0f0-0041ac5707ad	Cerrada	2026-03-31 13:26:20.718+00	2026-03-31 22:47:08.717+00	6135.15	5150.36	0.00	5150.36	5156.00	5.64	CIERRE DE CAJA 	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-31 13:26:20.719+00	2026-03-31 22:47:08.717+00
8c889ae9-fb24-4043-82da-6b7de9f477c7	Cerrada	2026-04-23 13:02:35.937+00	2026-04-23 22:26:40.659+00	4265.65	3714.95	0.00	3714.95	3715.00	0.05	Cierre Aroma Oro. Diferencia: $0.05	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-23 13:02:35.938+00	2026-04-23 22:26:40.66+00
14920715-dbb2-4c21-92cf-ef7e5c814643	Cerrada	2026-04-24 12:39:54.777+00	2026-04-24 22:40:59.142+00	3715.00	5724.69	2952.75	5724.69	5724.85	0.16	Cierre Aroma Oro. Diferencia: $0.16	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-24 12:39:54.777+00	2026-04-24 22:40:59.143+00
d1646688-7f88-4b32-9de5-bcc5cfe39c76	Cerrada	2026-04-21 12:31:22.445+00	2026-04-21 22:41:05.777+00	6645.90	6468.79	0.00	6468.79	6469.40	0.61	Cierre Aroma Oro. Diferencia: $0.61	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-21 12:31:22.446+00	2026-04-21 22:41:05.778+00
6c8c3740-71f5-4332-be60-6092a6a4c4a9	Cerrada	2026-04-18 12:35:50.667+00	2026-04-18 22:34:43.985+00	10861.60	8257.27	0.00	8277.27	8257.20	-20.07	Cierre Aroma Oro. Diferencia: -$20.07	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 12:35:50.668+00	2026-04-18 22:34:43.986+00
4f2a405c-467e-451e-bee2-e445d332d1ff	Cerrada	2026-04-22 12:40:34.073+00	2026-04-22 22:34:20.096+00	6469.40	4266.03	175.00	4266.03	4265.65	-0.38	Cierre Aroma Oro. Diferencia: -$0.38	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-22 12:40:34.073+00	2026-04-22 22:34:20.097+00
\.


--
-- Data for Name: CuentasPorCobrar; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."CuentasPorCobrar" (id, "montoTotal", "montoCheque", "montoEfectivo", "montoTransferencia", "abonoAnticipado", "montoPorCobrar", fecha, estado, origen, "referenciaId", "VentaId", comentario) FROM stdin;
bcddd54a-3603-4f8c-a50c-c899ec59d7d9	1000.00	0.00	0.00	0.00	0.00	0.00	2026-03-28 20:27:08.599+00	Cobrado	Anticipo	967b2d2d-a86a-4241-b535-0e5c0219794c	\N	\N
915d4e42-21c6-416b-b687-1d2ea4b747e5	100.00	0.00	90.00	0.00	0.00	0.00	2026-03-28 20:32:31.578+00	Cobrado	Préstamo	faee69a7-1a45-40f9-b516-4aebb12630ff	\N	\N
c55d896f-a4d8-4821-8642-3e0c755abbc1	60.00	0.00	0.00	0.00	0.00	0.00	2026-03-31 16:40:32.195+00	Cobrado	Préstamo	1ba855a5-fd2b-49cd-bc72-640ee32f0c66	\N	\N
e96961e0-5f82-472d-b148-ee40603fcc9c	60.00	0.00	0.00	0.00	0.00	0.00	2026-04-09 22:19:05.442+00	Cobrado	Préstamo	b8c041cd-68c1-49f5-9fc8-029dcdc204bf	\N	\N
89b0c9dd-10ad-4356-a97b-7b4456cd7b53	70.25	0.00	0.00	0.00	0.00	0.00	2026-04-15 16:16:59.063+00	Cobrado	Préstamo	d9a2c348-abd1-48b2-a9ae-e2e5c4ad00d8	\N	\N
7e4c67b8-6edd-4c48-a65c-5751f4c8f619	70.00	0.00	0.00	0.00	0.00	50.00	2026-04-02 21:30:32.056+00	Pendiente	Préstamo	47328410-6909-4477-9ee5-021363014ca6	\N	\N
7468e77a-8b18-4de7-a62c-c2739c371761	60.00	0.00	0.00	0.00	0.00	0.00	2026-04-13 19:55:48.98+00	Cobrado	Préstamo	d016dce3-4eb5-4646-bcec-80ae79b18d52	\N	\N
68b4de9a-7f4c-4cf5-b466-d77dc0bdc80d	60.00	0.00	0.00	0.00	0.00	60.00	2026-04-20 21:40:52.079+00	Pendiente	Préstamo	ad41c04b-4e9e-4132-8156-ed4b25a0bf8f	\N	\N
\.


--
-- Data for Name: CuentasPorPagar; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."CuentasPorPagar" (id, "montoTotal", "montoAbonado", "saldoPendiente", estado, "fechaAbono", "LiquidacionId") FROM stdin;
c4fac960-7acd-420e-a40e-1fd4e50e72d0	2957.60	2957.60	0.00	Pagado	2026-03-28 20:29:39.372+00	1880d29e-9759-46e7-94a0-f581edec626f
eccd310e-e7d4-447e-b2ad-c4be4af4678a	6.84	6.84	0.00	Pagado	2026-03-30 20:17:53.271+00	5a59992c-c07b-4dbd-878e-b135d935af97
\.


--
-- Data for Name: DetalleLiquidaciones; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."DetalleLiquidaciones" (id, "descripcionProducto", calificacion, unidad, cantidad, impurezas, "descuentoMerma", "cantidadNeta", precio, parcial, "ProductoId", "LiquidacionId", "createdAt", "updatedAt") FROM stdin;
fd8b0927-3efa-4b7b-b9d4-4d615087854c	CACAO SECO	15	Quintales	60	0	9	51	80.00	4080.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	1880d29e-9759-46e7-94a0-f581edec626f	2026-03-28 20:29:39.259+00	2026-03-28 20:29:39.259+00
aed40568-af97-47cb-8afe-1b7b00bcd00e	CACAO SECO	5	Quintales	0.59	0	0.03	0.56	105.00	58.80	27a59f8d-af5a-42a9-8d13-02b5f866034d	3ad71b26-bce7-4b79-b716-cc0656624abc	2026-03-30 18:15:48.985+00	2026-03-30 18:15:48.985+00
a02f78e5-33a3-45a7-a289-6a35ddac72b0	CACAO BABA 	72	Quintales	0.29	0	0.21	0.08	100.00	8.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	cad6002c-87ce-498c-9816-14ae8acaf491	2026-03-30 18:17:22.354+00	2026-03-30 18:17:22.354+00
daffb0d1-a0dd-4b41-a4d5-e38afe739a5c	CACAO BABA 	72	Quintales	0.11	0	0.08	0.03	103.00	3.09	7a83b1a2-5220-467b-bdcc-0665d572c30d	68c3258a-229a-4522-ba8e-7db2eae69ee0	2026-03-30 18:26:08.785+00	2026-03-30 18:26:08.785+00
301104a7-93e5-4650-b824-dae45faea7b4	CACAO SECO	33	Quintales	0.75	0	0.25	0.5	100.00	50.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	f77a9c72-e8af-4f45-a5f6-28a60e896aab	2026-03-30 18:49:52.432+00	2026-03-30 18:49:52.432+00
b316872f-8b5a-466b-904e-5d3e24bc7f67	CACAO SECO 	33	Quintales	0.18	0	0.06	0.12	100.00	12.00	d6f1eeb0-96d8-4c31-a96f-9bf8c24e9ba5	04926d47-b75e-4494-b028-c557092749f2	2026-03-30 18:51:34.084+00	2026-03-30 18:51:34.084+00
9d2a65b4-9a47-46a5-886a-80ebe606a78d	CACAO BABA 	0	Quintales	3.55	0	0	3.55	15.00	53.25	7a83b1a2-5220-467b-bdcc-0665d572c30d	c72da676-f391-4a97-9df4-51ebf763681d	2026-03-30 19:23:06.844+00	2026-03-30 19:23:06.844+00
7f85a83f-ac3d-48c1-b412-ff35178f7e60	CACAO BABA 	0	Quintales	0.8	0	0	0.8	15.00	12.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	0defab9b-1eae-4b52-a773-54aa75efdf8d	2026-03-30 19:31:50.653+00	2026-03-30 19:31:50.653+00
9dc9ffde-df87-4358-b670-d7cc837796eb	CACAO BABA 	0	Libras	2	0	0	2	14.00	28.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	e5eb4c2e-5076-461b-8e20-4eae8c3d1720	2026-03-30 19:33:05.923+00	2026-03-30 19:33:05.923+00
c151b194-6e0e-443c-a84d-bc6374d93482	CACAO BABA 	0	Quintales	0.55	0	0	0.55	15.00	8.25	7a83b1a2-5220-467b-bdcc-0665d572c30d	d6f467b7-7c86-425a-bbd7-3cc1ab61d632	2026-03-30 19:33:57.814+00	2026-03-30 19:33:57.814+00
9481b4fd-2696-4b5c-a2e3-80709ed78798	CACAO BABA 	0	Quintales	0.55	0	0	0.55	15.00	8.25	7a83b1a2-5220-467b-bdcc-0665d572c30d	c052a8fa-8ecf-4788-9797-cd89716613ca	2026-03-30 19:35:13.41+00	2026-03-30 19:35:13.41+00
91be58ce-65fe-435a-895f-a43a9ad7a589	CACAO SECO 	33	Quintales	0.26	0	0.09	0.17	100.00	17.00	d6f1eeb0-96d8-4c31-a96f-9bf8c24e9ba5	0f0092ee-4b0a-461a-9af3-ec2c7bd200a2	2026-03-30 20:01:25.49+00	2026-03-30 20:01:25.49+00
a7c5778c-0ed7-42bf-964b-00b0820d9b05	CACAO BABA 	0	Quintales	0.47	0	0	0.47	15.00	7.05	7a83b1a2-5220-467b-bdcc-0665d572c30d	5a59992c-c07b-4dbd-878e-b135d935af97	2026-03-30 20:17:53.156+00	2026-03-30 20:17:53.156+00
0269aba2-2b66-435a-af51-a229cd75de62	CACAO SECO	2	Quintales	0.11	0	0	0.1	100.00	10.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	3d736b6a-9010-4739-9a0c-9097cece7479	2026-03-30 21:45:09.714+00	2026-03-30 21:45:09.714+00
d6933d47-8495-4d64-80fe-fe52bf398ce5	CACAO SECO	5	Quintales	5.01	0	0.25	4.75	107.00	508.25	27a59f8d-af5a-42a9-8d13-02b5f866034d	134bc834-706e-42ec-b29b-3a5a91b99608	2026-03-31 16:20:54.275+00	2026-03-31 16:20:54.275+00
f1e873d2-bc46-420f-ac55-8c4845f1062b	CACAO BABA 	0	Quintales	1.05	0	0	1.05	15.00	15.75	7a83b1a2-5220-467b-bdcc-0665d572c30d	be8cf9ab-0795-4b3f-9722-bf90ab57c052	2026-03-31 16:24:55.004+00	2026-03-31 16:24:55.004+00
49367748-6b6c-4601-b3aa-6ea4750e59aa	CACAO BABA 	0	Quintales	0.7	0	0	0.7	15.00	10.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	cd6b4a6d-2166-4e85-afb9-b64e79062b07	2026-03-31 16:25:32.558+00	2026-03-31 16:25:32.558+00
ac28b9f7-eaef-4f10-8fc3-dc1676a9338c	CACAO BABA 	70	Quintales	1.65	0	1.15	0.49	110.00	53.90	7a83b1a2-5220-467b-bdcc-0665d572c30d	6696b84e-21f1-4ba4-81cd-7cf1a2f43851	2026-03-31 16:26:27.695+00	2026-03-31 16:26:27.695+00
7e4d3347-a3c7-4c24-bc6b-3fdb256481c6	CACAO BABA 	0	Quintales	1.05	0	0	1.05	15.00	15.75	7a83b1a2-5220-467b-bdcc-0665d572c30d	c8df8476-b074-45a0-be38-cc3d71dede51	2026-03-31 16:26:57.584+00	2026-03-31 16:26:57.584+00
ba305a5e-9bb8-449d-963a-16cc7580afb0	CACAO BABA 	0	Quintales	1	0	0	1	15.00	15.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	8bf56696-2264-43fc-a5a8-e2c49d842f66	2026-03-31 16:27:43.312+00	2026-03-31 16:27:43.312+00
8077ed64-7461-4634-ad3f-6220f7b90234	MARACUYA	3	Kilogramos	58.97	0	1.77	57	0.28	15.96	8ae27e50-3a7d-469e-88ca-137b2882b33c	7fb3f4dd-a740-45a5-b8ca-75b20cfd95f6	2026-03-31 16:54:54.734+00	2026-03-31 16:54:54.734+00
ad753c45-701c-451f-9144-d76f0f019e9f	CACAO BABA 	0	Quintales	1	0	0	1	17.00	17.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	d94a9e3c-c7f7-4537-aa28-6c774b56b9e2	2026-03-31 18:50:04.228+00	2026-03-31 18:50:04.228+00
58ab7bea-0c2c-4fe6-9f0c-f69e18bfe9a7	CACAO SECO	70	Quintales	0.29	0	0.2	0.08	110.00	8.80	27a59f8d-af5a-42a9-8d13-02b5f866034d	90c9ac96-b9ca-4c87-813e-0c731f8b0b91	2026-03-31 20:08:27.592+00	2026-03-31 20:08:27.592+00
5c037e16-541f-4397-aadb-28cc585b506b	MARACUYA	3	Kilogramos	398.71	0	11.96	386	0.30	115.80	8ae27e50-3a7d-469e-88ca-137b2882b33c	3dca3d13-3fc2-4a48-a2db-50a70d74d1e1	2026-03-31 20:10:31.399+00	2026-03-31 20:10:31.399+00
ea6adc0c-6ae5-4a4a-ba82-a153237e042f	CACAO BABA 	72	Quintales	0.21	0	0.15	0.05	110.00	5.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	8cd4debf-f52b-4613-80f7-d27977f59471	2026-03-31 21:57:18.886+00	2026-03-31 21:57:18.886+00
805d066d-e87d-4ee7-9187-561b712544bb	CACAO BABA 	72	Quintales	0.08	0	0.06	0.02	110.00	2.20	7a83b1a2-5220-467b-bdcc-0665d572c30d	baf304ef-a46f-4a39-84a4-98f63deb9ede	2026-04-01 12:52:56.168+00	2026-04-01 12:52:56.168+00
ad8390e8-73c3-4725-850a-8b273b8281eb	MARACUYA	3	Kilogramos	63.5	0	1.91	61	0.30	18.30	8ae27e50-3a7d-469e-88ca-137b2882b33c	23561d0c-1737-4f0c-9b31-29d039182a16	2026-04-01 15:37:34.905+00	2026-04-01 15:37:34.905+00
8edd499a-9e33-42a9-9c8e-a53e7bd35503	MARACUYA	3	Kilogramos	55.34	0	1.66	53	0.30	15.89	8ae27e50-3a7d-469e-88ca-137b2882b33c	69b4a9c8-234c-4850-849f-130fdef14c67	2026-04-01 15:38:15.689+00	2026-04-01 15:38:15.689+00
e71d6177-a28f-4a38-9141-d4f9251536ce	MARACUYA	3.2	Kilogramos	142.43	0	4.56	137	0.30	41.10	8ae27e50-3a7d-469e-88ca-137b2882b33c	bddb15b5-aa49-43a7-a62c-e4a92f1e000a	2026-04-01 15:39:10.116+00	2026-04-01 15:39:10.116+00
3f714549-382e-46f8-b4f9-dd0f43d5b0ce	MARACUYA	3	Kilogramos	102.97	0	3.09	99	0.30	29.70	8ae27e50-3a7d-469e-88ca-137b2882b33c	4824eacd-4389-47df-a085-c0222794e52e	2026-04-01 15:39:52.04+00	2026-04-01 15:39:52.04+00
b503eef7-3101-45c3-b7c7-6fbaf3c8b394	MARACUYA	5	Kilogramos	309.8	0	15.49	294	0.30	88.20	8ae27e50-3a7d-469e-88ca-137b2882b33c	b4c9a09a-3782-4879-ad81-c5f5f20667d0	2026-04-01 15:40:46.599+00	2026-04-01 15:40:46.599+00
a10180f1-b048-4aad-b923-383de06e45d8	MARACUYA	5.1	Kilogramos	141.07	0	7.19	133	0.30	39.90	8ae27e50-3a7d-469e-88ca-137b2882b33c	8f65a2f2-2401-46e6-82e5-1241d3bd36f1	2026-04-01 15:41:30.523+00	2026-04-01 15:41:30.523+00
8599119c-fd9e-4789-ad5b-43ca36b76089	MARACUYA	3.3	Kilogramos	44.45	0	1.47	42	0.30	12.60	8ae27e50-3a7d-469e-88ca-137b2882b33c	dadb1d62-837e-4e4f-8a71-b8b8bbded5bf	2026-04-01 15:43:10.187+00	2026-04-01 15:43:10.187+00
29e8291e-f910-48f7-aeaa-cef2c330b9cc	MARACUYA	3	Kilogramos	87.09	0	2.61	84	0.30	25.20	8ae27e50-3a7d-469e-88ca-137b2882b33c	dc3ea860-98c2-40ff-acbd-850c8524a575	2026-04-01 15:44:02.282+00	2026-04-01 15:44:02.282+00
13a05c47-7222-4a09-a98e-e6967e7dca5c	MARACUYA	3	Kilogramos	16.33	0	0.49	15	0.30	4.50	8ae27e50-3a7d-469e-88ca-137b2882b33c	887d9dba-9dcf-4e4b-b2d0-9239925893f1	2026-04-01 15:50:12.277+00	2026-04-01 15:50:12.277+00
77f40609-284a-4308-8892-5e21ba764213	CACAO SECO	0	Quintales	0.88	0	0	0.88	110.00	96.80	27a59f8d-af5a-42a9-8d13-02b5f866034d	795a999f-1d86-410a-8b1c-8f206cb34739	2026-04-01 15:52:00.387+00	2026-04-01 15:52:00.387+00
3ef63e48-ba6e-4f37-a547-87a7d4808907	CACAO SECO	0	Quintales	0.07	0	0	0.07	70.00	4.90	27a59f8d-af5a-42a9-8d13-02b5f866034d	054646cf-7984-4119-b0a5-76465fd4a94b	2026-04-01 15:52:31.713+00	2026-04-01 15:52:31.713+00
12552ca3-7783-4ce9-b75c-0e8aaec714a4	CACAO SECO	0	Quintales	0.44	0	0	0.44	100.00	44.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	05a973d5-5a1a-40e4-8a9a-15b26c551ead	2026-04-01 15:53:10.105+00	2026-04-01 15:53:10.105+00
dda65fea-fce9-4121-a40b-ec7febfad113	CACAO SECO	0	Quintales	0.82	0	0	0.82	107.00	87.74	27a59f8d-af5a-42a9-8d13-02b5f866034d	c86bc212-15bd-4485-b141-1ad397f149c7	2026-04-01 15:55:27.183+00	2026-04-01 15:55:27.183+00
a1b28fb6-6b1f-4ee2-8c8f-3ee8351125eb	CACAO SECO	0	Quintales	1.37	0	0	1.37	100.00	137.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	81b9240f-5741-44d4-9e78-e3c9329caa87	2026-04-01 15:55:58.072+00	2026-04-01 15:55:58.072+00
ec982ba4-4be3-42f2-9f17-d8fccc4acbf2	CACAO SECO	0	Quintales	3.68	0	0	3.68	112.00	412.16	27a59f8d-af5a-42a9-8d13-02b5f866034d	c055b336-8dcf-4b91-a06b-4aa31715ae71	2026-04-01 15:56:26.665+00	2026-04-01 15:56:26.665+00
38cbf895-b122-4686-b452-abc3a25e53f0	CACAO SECO	0	Quintales	2.42	0	0	2.42	110.00	266.20	27a59f8d-af5a-42a9-8d13-02b5f866034d	f4f87733-e27b-4bb4-9c18-cc40599dfd6c	2026-04-01 15:57:10.113+00	2026-04-01 15:57:10.113+00
5d0799b5-8a72-4e5b-8e77-9270ed99d1b7	CACAO BABA 	72	Quintales	0.87	0	0.63	0.24	110.00	26.40	7a83b1a2-5220-467b-bdcc-0665d572c30d	01ede9d5-7ee9-4b98-9997-44e6f29ed035	2026-04-01 15:58:00.827+00	2026-04-01 15:58:00.827+00
e46127c8-5be8-4cfe-9210-b96c0727d176	CACAO BABA 	0	Quintales	8	0	0	8	17.00	136.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	55f203d3-1174-4f15-a706-87515925824f	2026-04-01 16:04:23.609+00	2026-04-01 16:04:23.609+00
1b7e1d7a-c2ba-4920-b874-be477c56c236	CACAO BABA 	0	Quintales	0.25	0	0	0.25	17.00	4.25	7a83b1a2-5220-467b-bdcc-0665d572c30d	d7b18cc4-fd77-46f5-962c-f8acf048b442	2026-04-01 16:04:57.672+00	2026-04-01 16:04:57.672+00
4f195888-7fcc-431c-85d6-59b65e444809	CACAO BABA 	0	Quintales	3	0	0	3	17.00	51.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	49874bd9-fcda-42e3-8871-ba321affac26	2026-04-01 16:05:23.423+00	2026-04-01 16:05:23.423+00
539e9be7-8d09-4e8e-8c4f-f970d3f4bbcb	CACAO BABA 	0	Quintales	0.25	0	0	0.25	15.00	3.75	7a83b1a2-5220-467b-bdcc-0665d572c30d	ee40c86f-414a-40a6-8667-7f3dd5e13296	2026-04-01 16:05:57.287+00	2026-04-01 16:05:57.287+00
2d17971a-1cd2-4d0c-a0fb-6a394ce0bdef	CACAO BABA 	0	Quintales	3.6	0	0	3.6	17.00	61.20	7a83b1a2-5220-467b-bdcc-0665d572c30d	1489dac4-044a-4399-8066-e13b43f992cc	2026-04-01 16:07:24.829+00	2026-04-01 16:07:24.829+00
680a94bb-fc03-4648-b32e-0dc23cc0bb8b	CACAO BABA 	0	Quintales	0.9	0	0	0.9	17.00	15.30	7a83b1a2-5220-467b-bdcc-0665d572c30d	8742caf3-959f-43d8-8a05-0352314b8e31	2026-04-01 16:08:11.022+00	2026-04-01 16:08:11.022+00
4a0bbb3d-16f7-4c2e-8977-a92f861436a8	CACAO SECO	1	Quintales	0.04	0	0	0.03	110.00	3.30	27a59f8d-af5a-42a9-8d13-02b5f866034d	fe00a0c3-9527-4996-91b2-035e9239b6ba	2026-04-01 18:37:18.683+00	2026-04-01 18:37:18.683+00
23f9054a-9ae5-43ae-acdb-67405a45c257	MARACUYA	2	Kilogramos	4.09	0	0.08	4	0.28	1.12	8ae27e50-3a7d-469e-88ca-137b2882b33c	21495ead-f14f-496c-b748-842624cbe49f	2026-04-01 19:13:04.771+00	2026-04-01 19:13:04.771+00
e7890a7a-f56c-481b-b05d-9f626ac520b7	CACAO BABA 	0	Quintales	5	0	0	5	17.00	85.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	bab432c2-66b0-40ec-80c7-e861280ac66f	2026-04-02 16:09:10.675+00	2026-04-02 16:09:10.675+00
470f691a-b79d-4084-93a0-ac436404707c	CACAO BABA 	0	Quintales	0.3	0	0	0.3	17.00	5.09	7a83b1a2-5220-467b-bdcc-0665d572c30d	3045ce34-5174-4192-aa1d-5747347c5660	2026-04-02 16:09:35.372+00	2026-04-02 16:09:35.372+00
ebb68b33-5b76-4885-ae05-eb875b6a4a9b	CACAO BABA 	0	Quintales	0.3	0	0	0.3	17.00	5.09	7a83b1a2-5220-467b-bdcc-0665d572c30d	54185ec0-63be-4fe8-b541-13278c09ceeb	2026-04-02 16:10:02.228+00	2026-04-02 16:10:02.228+00
9350f264-79d8-4e42-ad8d-44915b1655e2	CACAO BABA 	0	Quintales	7.5	0	0	7.5	17.00	127.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	016c39b8-956f-4547-a593-940acaf1be49	2026-04-02 16:10:36.019+00	2026-04-02 16:10:36.019+00
cd7cb846-81a5-4704-b4f1-e5c1995bbf0b	CACAO SECO	25	Quintales	0.31	0	0.08	0.23	110.00	25.30	27a59f8d-af5a-42a9-8d13-02b5f866034d	d46aa130-66fc-4a17-b02c-f850b3c6f1b0	2026-04-02 18:06:26.159+00	2026-04-02 18:06:26.159+00
c1d9cfd7-5fb0-448c-9da9-ed213cd40458	CACAO BABA 	0	Tacho	1.72	0	0	1.71	16.00	27.36	7a83b1a2-5220-467b-bdcc-0665d572c30d	cdd3912d-ea0f-4b02-bd81-33b128d58868	2026-04-02 20:31:55.44+00	2026-04-02 20:31:55.44+00
6e713f33-e9f5-49ed-8353-a55faccc8e4a	CACAO SECO	1	Quintales	0.11	0	0	0.1	110.00	11.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	cdda056e-0ef1-4332-b17a-15dc665fa2dd	2026-04-02 22:09:00.436+00	2026-04-02 22:09:00.436+00
899284ad-1b66-4c9e-a88d-c5ed91bde520	CACAO BABA 	72	Quintales	0.58	0	0.42	0.16	110.00	17.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	d04e84ff-5e93-46fb-abce-5659d65237e3	2026-04-04 17:34:38.895+00	2026-04-04 17:34:38.895+00
d41b8b61-0319-43f0-921a-e19c462a3d56	MARACUYA	3	Kilogramos	85.91	0	2.58	83	0.32	26.56	8ae27e50-3a7d-469e-88ca-137b2882b33c	93cbd3b9-5a95-42a3-b039-320c0aba4fd6	2026-04-04 17:35:37.412+00	2026-04-04 17:35:37.412+00
c0e4f2a9-fa8f-41bb-a652-116acc848b4c	CACAO SECO	10	Quintales	0.22	0	0.02	0.19	110.00	20.90	27a59f8d-af5a-42a9-8d13-02b5f866034d	065d9815-6f19-4477-a78f-07e17361ee45	2026-04-04 17:36:21.985+00	2026-04-04 17:36:21.985+00
5485cb4c-3ec2-4e2a-85d5-a82039537782	CACAO BABA 	70	Quintales	0.54	0	0.38	0.16	100.00	16.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	5a70e473-2d52-4ec9-971d-35c0f4171ce2	2026-04-04 17:37:10.283+00	2026-04-04 17:37:10.283+00
d17d478f-f763-427e-8f4a-2005abaed7e0	CACAO BABA 	72	Quintales	2.03	0	1.46	0.56	110.00	61.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	e7b985bf-abef-4ef6-944f-044b827cee3b	2026-04-04 17:37:49.118+00	2026-04-04 17:37:49.118+00
ca6338fb-f2ae-4822-a627-3b6d4cbb4465	CACAO BABA 	72	Quintales	0.58	0	0.42	0.16	110.00	17.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	596a6bc1-c5da-4b85-bdd8-273b49fd090a	2026-04-04 18:09:44.988+00	2026-04-04 18:09:44.988+00
019cbd2f-29ca-428e-85e5-a0221d13a00d	CACAO BABA 	72	Quintales	0.19	0	0.14	0.05	110.00	5.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	2717e06c-3efb-477c-9b8d-48950bcc01ed	2026-04-04 19:26:59.165+00	2026-04-04 19:26:59.165+00
10726577-b9a4-4345-bb18-20008db8cc10	CACAO SECO	0	Quintales	0.9	0	0	0.9	100.00	90.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	06b6b10f-fa1a-4eb2-a0bc-cb443fc0adb6	2026-04-06 18:36:38.869+00	2026-04-06 18:36:38.869+00
fa2b781d-32f5-4aea-a1d5-031ecad56320	CACAO SECO	0	Quintales	0.13	0	0	0.13	108.00	14.04	27a59f8d-af5a-42a9-8d13-02b5f866034d	28002cf7-4edd-4828-9372-4a425fb67ca6	2026-04-06 18:37:09.882+00	2026-04-06 18:37:09.882+00
f108f4cc-99a0-422c-8b53-99a91b73d778	CACAO SECO	0	Quintales	1.32	0	0	1.32	104.00	137.28	27a59f8d-af5a-42a9-8d13-02b5f866034d	10d0016e-583a-4083-bbd1-49572a3aef62	2026-04-06 18:38:06.87+00	2026-04-06 18:38:06.87+00
6adcf966-234d-4412-aa2d-4eef67218d4e	CACAO SECO	12	Quintales	0.74	0	0.09	0.65	110.00	71.50	27a59f8d-af5a-42a9-8d13-02b5f866034d	ec773a21-2b56-4db6-b446-72a81b7aea18	2026-04-06 18:38:39.827+00	2026-04-06 18:38:39.827+00
c67079ca-5385-40f7-a9b2-7a1ec1191736	CACAO BABA 	72	Quintales	0.31	0	0.22	0.08	100.00	8.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	e7ae8105-8d22-4f98-b8e8-ead4f69c3365	2026-04-06 18:39:06.44+00	2026-04-06 18:39:06.44+00
1077bdba-9ee1-4d08-85aa-642a5c8c98aa	CACAO BABA 	72	Quintales	0.2	0	0.14	0.05	115.00	5.75	7a83b1a2-5220-467b-bdcc-0665d572c30d	e80a85ed-9b71-4899-bfa9-9cdd0861ca69	2026-04-06 18:40:18.734+00	2026-04-06 18:40:18.734+00
0a4cf5f2-e19b-4afa-ab62-0f165ef73c44	CACAO BABA 	0	Tacho	0.6	0	0	0.6	16.00	9.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	86a549d7-e3b2-4ebb-8954-6c3e4b749b28	2026-04-06 18:40:47.805+00	2026-04-06 18:40:47.805+00
b082aa67-42bf-4821-952f-7fbba4c28edc	MARACUYA	4.4	Kilogramos	17.73	0	0.78	16	0.37	5.92	8ae27e50-3a7d-469e-88ca-137b2882b33c	81aa3e21-aa4b-4231-871d-4b9067b5cddb	2026-04-06 18:42:42.289+00	2026-04-06 18:42:42.289+00
fd839f1d-d2bd-4e3a-b33a-1b0790e1bd26	MARACUYA	0.1	Kilogramos	245.91	0	0.25	245	0.28	68.60	8ae27e50-3a7d-469e-88ca-137b2882b33c	5835b333-6037-42c7-adcc-663a14d0d204	2026-04-06 18:46:27.293+00	2026-04-06 18:46:27.293+00
a25e3bc7-a004-4540-a793-fd7ed2f8e9b5	CACAO SECO	11	Quintales	0.74	0	0.08	0.65	110.00	71.50	27a59f8d-af5a-42a9-8d13-02b5f866034d	4696f995-2932-470f-84ee-ae40d844d021	2026-04-06 21:41:06.792+00	2026-04-06 21:41:06.792+00
eaa6986d-f960-4949-b3e9-7d4ce6ae945b	CACAO BABA 	72	Quintales	0.26	0	0.19	0.07	110.00	7.70	7a83b1a2-5220-467b-bdcc-0665d572c30d	dc7555f5-e069-4f34-a0fe-e3a532804a4d	2026-04-06 21:41:41.68+00	2026-04-06 21:41:41.68+00
2af19022-bb14-4a73-8edc-2283bf568f82	CACAO SECO	25	Quintales	0.17	0	0.04	0.12	105.00	12.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	c4385606-d15f-456c-a099-bab455d04346	2026-04-07 19:33:15.148+00	2026-04-07 19:33:15.148+00
19da1845-49f4-48f2-812f-4db6714a93ef	CACAO BABA 	72	Quintales	0.7	0	0.5	0.19	100.00	19.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	6a05b7b1-2e10-4a5c-868e-bc63f3efe2be	2026-04-07 19:34:07.34+00	2026-04-07 19:34:07.34+00
86b9a595-d502-47da-9504-220465a4fc1d	CACAO BABA 	0	Tacho	0.81	0	0	0.81	15.00	12.15	7a83b1a2-5220-467b-bdcc-0665d572c30d	84bae186-4931-471a-8ee6-738cf1905341	2026-04-07 19:36:13.636+00	2026-04-07 19:36:13.636+00
2f9e1bb5-af8f-4b2d-92ab-518c6be8f25f	CACAO BABA 	0	Tacho	0.79	0	0	0.79	15.00	11.85	7a83b1a2-5220-467b-bdcc-0665d572c30d	22b82795-7b8c-4c20-92be-cb56668b93c8	2026-04-07 19:36:52.448+00	2026-04-07 19:36:52.448+00
86a95681-4928-4b14-bcdb-59c4d0930e53	CACAO BABA 	0	Tacho	4.47	0	0	4.47	15.00	67.05	7a83b1a2-5220-467b-bdcc-0665d572c30d	bfe4df9e-b36d-4370-9877-ab8e252a69f1	2026-04-07 19:38:13.926+00	2026-04-07 19:38:13.926+00
8297e01b-7356-4819-9825-3add727f36cd	CACAO BABA 	72	Quintales	0.77	0	0.55	0.21	105.00	22.05	7a83b1a2-5220-467b-bdcc-0665d572c30d	5d233984-465f-4b49-be64-660a3fa88c65	2026-04-07 20:42:14.089+00	2026-04-07 20:42:14.089+00
4e5920fa-d6f5-4b87-8808-7185ff263329	MARACUYA	3	Kilogramos	13.64	0	0.41	13	0.28	3.64	8ae27e50-3a7d-469e-88ca-137b2882b33c	2e161662-209d-46fb-8677-0bba0be640e0	2026-04-07 20:42:59.364+00	2026-04-07 20:42:59.364+00
8913139e-847c-4d92-b13e-93be26719834	CACAO BABA 	0	Quintales	0.7	0	0	0.7	16.00	11.20	7a83b1a2-5220-467b-bdcc-0665d572c30d	c740b8c2-0f10-4fcb-a193-68acd3452f25	2026-04-07 22:44:24.542+00	2026-04-07 22:44:24.542+00
62a2e7e8-ee77-403f-be3f-de78603af107	CACAO BABA 	0	Quintales	0.65	0	0	0.65	16.00	10.40	7a83b1a2-5220-467b-bdcc-0665d572c30d	5e55113b-1d10-4190-a9ee-1ff20cb75e0d	2026-04-07 22:44:51.874+00	2026-04-07 22:44:51.874+00
16928d6a-ec79-48c3-a2ff-cdad783114df	CACAO BABA 	0	Quintales	1.55	0	0	1.55	16.00	24.80	7a83b1a2-5220-467b-bdcc-0665d572c30d	02881b2a-e288-4113-be06-8ce7c6ea1cd0	2026-04-07 22:45:11.94+00	2026-04-07 22:45:11.94+00
3273dc08-d59e-432d-b47e-0cb0e578acd4	CACAO BABA 	0	Quintales	4.15	0	0	4.15	16.00	66.40	7a83b1a2-5220-467b-bdcc-0665d572c30d	0339910b-aea0-44b9-87b6-ab7f6af6d477	2026-04-07 22:45:56.342+00	2026-04-07 22:45:56.342+00
d531e768-5f71-403c-b2ab-85a1c006e763	CACAO BABA 	0	Quintales	0.25	0	0	0.25	16.00	4.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	66dc7ca5-39e1-4a5a-b399-44be7a46d8ff	2026-04-07 22:46:19.377+00	2026-04-07 22:46:19.377+00
18c372f7-c8fd-45a7-857d-b3cd99e3cd74	CACAO BABA 	70	Quintales	2.85	0	1.99	0.85	110.00	93.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	78fe0c17-ae74-4f6e-ba63-5178dbe1e795	2026-04-07 22:47:35.442+00	2026-04-07 22:47:35.442+00
5f05fd27-9348-4a92-aac6-18136c73955d	CACAO BABA 	0	Quintales	5.35	0	0	5.35	15.00	80.25	7a83b1a2-5220-467b-bdcc-0665d572c30d	5b5a40c7-aa0b-47aa-8674-495255dbc1a9	2026-04-08 16:11:44.956+00	2026-04-08 16:11:44.956+00
57ef7d2f-c49b-40f5-8827-7594e9526c51	CACAO BABA 	0	Quintales	2	0	0	2	15.00	30.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	5cf15759-709c-438c-92d6-cd71ee7803ad	2026-04-08 16:12:23.756+00	2026-04-08 16:12:23.756+00
db0df057-6a7f-4bd3-90b9-55f746983792	CACAO BABA 	70	Quintales	2.9	0	2.03	0.87	110.00	95.70	7a83b1a2-5220-467b-bdcc-0665d572c30d	409e20c4-feff-4bf7-858f-d3bfe9b58511	2026-04-08 16:15:26.376+00	2026-04-08 16:15:26.376+00
04bedbe2-dcc6-49a3-abff-442e6532f8ab	CACAO BABA 	0	Quintales	2.25	0	0	2.25	15.00	33.75	7a83b1a2-5220-467b-bdcc-0665d572c30d	e112ef97-de9f-42eb-a22f-72b0365c072f	2026-04-08 16:16:39.854+00	2026-04-08 16:16:39.854+00
c9ac5c86-6b4a-4f7e-9005-bb783b675399	CACAO BABA 	0	Quintales	1.9	0	0	1.9	15.00	28.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	8e1ea527-2f10-47fa-95bb-82af9eae7998	2026-04-08 16:17:24.539+00	2026-04-08 16:17:24.539+00
09fe8e7d-db20-49b9-bb1d-ae3d2164c31f	CACAO BABA 	0	Tacho	1.25	0	0	1.25	15.00	18.75	7a83b1a2-5220-467b-bdcc-0665d572c30d	deeb4df1-5c8b-4244-b958-6accfc2fbb85	2026-04-08 16:25:28.56+00	2026-04-08 16:25:28.56+00
ff16583f-8028-4883-8302-def23fbd4360	CACAO BABA 	0	Tacho	0.7	0	0	0.7	15.00	10.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	e790d87f-9bc7-4621-a37d-cdaf8ad2c629	2026-04-08 16:27:12.253+00	2026-04-08 16:27:12.253+00
1b241291-2332-416f-bf03-60907d6d9430	MARACUYA	3	Kilogramos	27.73	0	0.83	26	0.30	7.80	8ae27e50-3a7d-469e-88ca-137b2882b33c	9e33ba84-caa3-4ca5-a5b2-0188c68665c8	2026-04-08 16:28:26.546+00	2026-04-08 16:28:26.546+00
d49e7296-fb51-44ee-97f6-c87a6fb099a7	MARACUYA	3	Kilogramos	66.36	0	1.99	64	0.30	19.20	8ae27e50-3a7d-469e-88ca-137b2882b33c	a7bba41e-8f96-42d8-b1f6-e67819522bf6	2026-04-08 16:29:15.411+00	2026-04-08 16:29:15.411+00
7441e900-0665-41c1-8f9c-eaf81e260a8e	CACAO BABA 	71	Quintales	2.72	0	1.93	0.78	110.00	85.80	7a83b1a2-5220-467b-bdcc-0665d572c30d	1a92652e-e132-454f-8aa8-87bbfaadb849	2026-04-08 20:34:14.692+00	2026-04-08 20:34:14.692+00
36853bd7-59a1-435f-9bd2-0bf53647bb0b	CACAO BABA 	1	Tacho	0.25	0	0	0.24	17.00	4.08	7a83b1a2-5220-467b-bdcc-0665d572c30d	3ed15aeb-f2c9-44da-a609-793effc9d3bb	2026-04-08 20:35:06.095+00	2026-04-08 20:35:06.095+00
a3de865a-598f-419e-b4c8-c64de767aca0	CACAO SECO	0	Quintales	0.13	0	0	0.13	60.00	7.80	27a59f8d-af5a-42a9-8d13-02b5f866034d	88485edf-ddac-48ef-9312-72d75ea60641	2026-04-08 20:36:14.448+00	2026-04-08 20:36:14.448+00
62f8d813-c216-4bd4-9007-b44c8a668c7c	CACAO BABA 	0	Quintales	0.2	0	0	0.2	15.00	3.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	2038c79d-624a-493c-9cc0-11831f989d7e	2026-04-09 19:09:29.752+00	2026-04-09 19:09:29.752+00
ac341782-5909-4886-a496-735dab133c9e	CACAO BABA 	0	Quintales	2	0	0	2	15.00	30.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	71e5f7c0-a37c-4cf3-891d-bab93ace7c34	2026-04-09 19:09:51.341+00	2026-04-09 19:09:51.341+00
2b887c24-59d5-4cad-826d-853c258e170a	CACAO BABA 	0	Quintales	3.75	0	0	3.75	15.00	56.25	7a83b1a2-5220-467b-bdcc-0665d572c30d	90b9dfc8-b67f-4b0b-ac24-ce8a28fdaba4	2026-04-09 19:10:12.743+00	2026-04-09 19:10:12.743+00
b8c5090b-9cc4-4964-8ca7-8bb954952a2c	CACAO SECO	0	Quintales	0.01	0	0	0.01	110.00	1.10	27a59f8d-af5a-42a9-8d13-02b5f866034d	8fe380d6-a684-43e4-97bd-26645759b872	2026-04-09 19:10:53.578+00	2026-04-09 19:10:53.578+00
dc6ce949-89e9-4bf6-a8fa-f0910b0e11ba	CACAO SECO	22	Quintales	0.21	0	0.05	0.16	110.00	17.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	e821bcf4-2da4-45d1-83f6-561f42ad3e74	2026-04-09 19:11:20.031+00	2026-04-09 19:11:20.031+00
7a700b9b-cf0f-42d2-b01f-95a0b912b264	CACAO SECO	20	Quintales	0.18	0	0.04	0.14	110.00	15.40	27a59f8d-af5a-42a9-8d13-02b5f866034d	9bf581c8-74dc-4155-afba-c8c2419b8189	2026-04-09 19:11:53.161+00	2026-04-09 19:11:53.161+00
44e7f402-a8de-4b4c-afed-6a7ef912d4f2	CACAO SECO	0	Quintales	0.01	0	0	0.01	115.00	1.15	27a59f8d-af5a-42a9-8d13-02b5f866034d	46d9469c-7130-458b-9f75-5a58469df3f4	2026-04-09 19:14:17.947+00	2026-04-09 19:14:17.947+00
b275c910-3b71-4116-8356-77b7a28ead6e	CACAO SECO	22	Quintales	0.64	0	0.14	0.49	110.00	53.90	27a59f8d-af5a-42a9-8d13-02b5f866034d	3317e5f2-edef-4b3d-9d53-a0fb5ab4d56f	2026-04-09 19:14:56.043+00	2026-04-09 19:14:56.043+00
03d8900e-4bba-4bea-a691-ce6ebb56ce88	CACAO BABA 	72	Quintales	0.21	0	0.15	0.05	110.00	5.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	9fd5e4d3-9f41-4318-8e5b-029ea54a45cd	2026-04-09 19:15:22.344+00	2026-04-09 19:15:22.344+00
4e1c416d-8cd7-4968-a796-57f51d5fccb5	CACAO BABA 	71	Quintales	2.91	0	2.07	0.84	115.00	96.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	00ab8e75-f5c8-4534-b0d3-2673744a50bb	2026-04-09 19:16:09.545+00	2026-04-09 19:16:09.545+00
1816a1f1-cb88-4b12-bced-3e8d7155d2c7	CACAO BABA 	72	Quintales	0.16	0	0.12	0.04	110.00	4.40	7a83b1a2-5220-467b-bdcc-0665d572c30d	837efa01-6541-4a78-8ee3-9282a8d4415b	2026-04-09 19:16:34.797+00	2026-04-09 19:16:34.797+00
f54aac9f-47d1-4605-84a4-06d5db50e3fb	CACAO BABA 	72	Quintales	1.85	0	1.33	0.51	110.00	56.10	7a83b1a2-5220-467b-bdcc-0665d572c30d	ddbf5a6d-5eb4-40d5-9d4c-3d829b8a8723	2026-04-09 19:17:12.476+00	2026-04-09 19:17:12.476+00
4faa3810-59a8-4ff0-8ce7-8e9a24d9ede1	CACAO BABA 	72	Quintales	0.59	0	0.42	0.16	110.00	17.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	c9f81f62-d4b0-4cf0-8235-c3aac5075233	2026-04-09 19:17:44.144+00	2026-04-09 19:17:44.144+00
b7198001-e717-4b4d-8473-8515f5c01fb4	CACAO BABA 	0	Tacho	1.43	0	0	1.43	17.00	24.31	7a83b1a2-5220-467b-bdcc-0665d572c30d	5d438660-647b-4123-a48f-3f7d5437808a	2026-04-09 21:57:24.162+00	2026-04-09 21:57:24.162+00
aaea2250-32ed-449a-81e9-d9019ada85c9	CACAO SECO	1	Quintales	0.05	0	0	0.04	110.00	4.40	27a59f8d-af5a-42a9-8d13-02b5f866034d	a1da7605-8d11-4b8e-af05-3ca015475a0d	2026-04-10 16:14:13.219+00	2026-04-10 16:14:13.219+00
a1107c32-87c5-4afb-8804-a1b612408f50	CACAO SECO	0	Quintales	0.63	0	0	0.63	90.00	56.70	27a59f8d-af5a-42a9-8d13-02b5f866034d	830ffdd2-1b8a-45c5-a934-256f9c6073aa	2026-04-10 16:14:40.346+00	2026-04-10 16:14:40.346+00
ac0cccde-8863-47c5-a975-c691ed9bdc37	CACAO SECO	0	Quintales	0.21	0	0	0.21	95.00	19.95	27a59f8d-af5a-42a9-8d13-02b5f866034d	4e3bd702-593e-4a19-b966-83e2dd821261	2026-04-10 16:16:57.338+00	2026-04-10 16:16:57.338+00
f68e0165-7ca7-45db-8bbe-d80847e9bee0	CACAO SECO	0	Quintales	0.16	0	0	0.16	110.00	17.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	50dbcfd4-e087-453c-b922-68ca0ddbb21c	2026-04-10 16:17:26.768+00	2026-04-10 16:17:26.768+00
4b9eef44-eb01-49e4-a132-a665c23c9d30	CACAO SECO	0	Quintales	0.59	0	0	0.59	115.00	67.84	27a59f8d-af5a-42a9-8d13-02b5f866034d	8954d1c6-c7b7-49c2-87c9-435c168284ad	2026-04-10 16:18:06.975+00	2026-04-10 16:18:06.975+00
453d07d5-7985-4755-8973-5a6318c55f5f	CACAO SECO	0	Quintales	0.93	0	0	0.93	100.00	93.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	9f0a3290-1622-4e8a-a0b9-ddbdebc8f3b0	2026-04-10 16:18:39.941+00	2026-04-10 16:18:39.941+00
223590ea-c691-4378-80a8-da930de066ae	CACAO SECO	0	Quintales	1.29	0	0	1.29	100.00	129.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	625bfaeb-7b67-46ee-a21b-6d5c22303cc1	2026-04-10 16:19:12.534+00	2026-04-10 16:19:12.534+00
457e93b2-49f0-4899-b44b-dcac16708915	CACAO SECO	0	Quintales	0.68	0	0	0.68	105.00	71.40	27a59f8d-af5a-42a9-8d13-02b5f866034d	5f19af89-3a98-4067-98aa-d3eb3d2aae69	2026-04-10 16:20:04.264+00	2026-04-10 16:20:04.264+00
31afc44d-61cf-41e1-aac0-ad404d521748	CACAO SECO	0	Quintales	1.48	0	0	1.48	90.00	133.19	27a59f8d-af5a-42a9-8d13-02b5f866034d	b71bc2b7-3c3e-4a2a-b7c5-b2c4d881c637	2026-04-10 16:20:49.979+00	2026-04-10 16:20:49.979+00
f09862d4-e8ab-4ae9-8d11-a11eeb56874c	CACAO SECO	0	Quintales	0.65	0	0	0.65	100.00	65.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	e81b1f96-8857-4e5d-9457-7ec3755fbfc7	2026-04-10 16:22:44.543+00	2026-04-10 16:22:44.543+00
066d7c8a-17cc-4e3a-8538-0221214d1209	CACAO SECO	0	Quintales	0.86	0	0	0.86	100.00	86.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	07f2421a-8ba5-46b3-90ba-289fe4974550	2026-04-10 16:23:18.134+00	2026-04-10 16:23:18.134+00
1e47920b-4ebb-4b53-b809-9a9f71523454	CACAO SECO	22	Quintales	0.43	0	0.09	0.33	110.00	36.30	27a59f8d-af5a-42a9-8d13-02b5f866034d	12355294-0beb-4b91-9c0d-fc4d538eba10	2026-04-10 16:24:11.654+00	2026-04-10 16:24:11.654+00
bbec03d9-a286-4466-a5b1-f0d2ceebdbb8	MAIZ 	3	Quintales	6.1	0	0.18	5.91	14.25	84.21	d805a20e-f1fa-4d9f-adcb-f34c0eee6160	709f105e-3324-4657-b633-ddf99c766c12	2026-04-10 16:25:14.966+00	2026-04-10 16:25:14.966+00
60431404-36d2-4d72-990a-ccecf33b6990	MAIZ 	3	Quintales	2.53	0	0.08	2.45	13.00	31.85	d805a20e-f1fa-4d9f-adcb-f34c0eee6160	d88e031a-881a-41d6-b9bb-41c8f0152081	2026-04-10 16:25:48.354+00	2026-04-10 16:25:48.354+00
bb4d8c0b-a768-4947-afbf-da59bc14a83b	MARACUYA	3	Kilogramos	119.55	0	3.59	115	0.34	39.10	8ae27e50-3a7d-469e-88ca-137b2882b33c	c0ea8911-398c-418e-9799-a42e033fdc00	2026-04-10 16:27:19.336+00	2026-04-10 16:27:19.336+00
f7e226ca-b09a-46f7-b64d-6fa9548daa2c	MARACUYA	3	Kilogramos	267.73	0	8.03	259	0.34	88.06	8ae27e50-3a7d-469e-88ca-137b2882b33c	d852f1e2-5c4e-4876-8007-7f4a91e99220	2026-04-10 16:28:09.947+00	2026-04-10 16:28:09.947+00
09c20d62-ca20-4cf3-bbd0-22a61043c2a7	MARACUYA	3	Kilogramos	101.36	0	3.04	98	0.35	34.29	8ae27e50-3a7d-469e-88ca-137b2882b33c	6ab595a7-a711-4cc3-a73c-04ec0b29dd07	2026-04-10 16:28:52.084+00	2026-04-10 16:28:52.084+00
dddaeb3a-c97a-456c-b4de-1ccf3e6fae36	MARACUYA	4	Kilogramos	68.64	0	2.75	65	0.34	22.10	8ae27e50-3a7d-469e-88ca-137b2882b33c	82163b3d-7b20-4727-840d-b6d850aaad44	2026-04-10 16:29:43.138+00	2026-04-10 16:29:43.138+00
c326edaa-08ec-405d-b91b-6ca017170ae3	MARACUYA	3.5	Kilogramos	134.09	0	4.69	129	0.34	43.86	8ae27e50-3a7d-469e-88ca-137b2882b33c	4349c9c3-ef2f-4c27-8dd8-58243a1cd8a0	2026-04-10 16:30:28.837+00	2026-04-10 16:30:28.837+00
7084dd57-e522-47db-ae81-d5b61a45e0b2	MARACUYA	3	Kilogramos	50.91	0	1.53	49	0.34	16.66	8ae27e50-3a7d-469e-88ca-137b2882b33c	07c265e9-4e03-4b36-ae99-0175715b198c	2026-04-10 16:31:09.21+00	2026-04-10 16:31:09.21+00
9ca7ac7c-6689-4d95-97f8-ae4a2302b421	MARACUYA	3	Kilogramos	45.45	0	1.36	44	0.44	19.36	8ae27e50-3a7d-469e-88ca-137b2882b33c	04cad26e-58b3-48d3-9118-8df35f56bd53	2026-04-10 16:31:54.74+00	2026-04-10 16:31:54.74+00
705f1bb2-8f11-4443-83ff-fa925273178e	CACAO BABA 	1	Quintales	0.07	0	0	0.06	110.00	6.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	37f8dcb4-3055-4a97-84ab-2197eb2e719e	2026-04-10 20:29:11.509+00	2026-04-10 20:29:11.509+00
ae75e5e0-74a6-4b1d-b664-8ef0e2fe73ba	CACAO BABA 	71	Quintales	2.9	0	2.06	0.84	115.00	96.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	7ded42ff-2cc1-4e8f-9124-22f6282d6adb	2026-04-10 20:30:02.278+00	2026-04-10 20:30:02.278+00
64bf69cc-e77d-4d9c-b503-6ba9be8af8de	CACAO BABA 	0	Tacho	1.45	0	0	1.45	17.00	24.65	7a83b1a2-5220-467b-bdcc-0665d572c30d	12bd36cf-e342-4463-9c45-e15899843ffb	2026-04-10 20:30:33.141+00	2026-04-10 20:30:33.141+00
d03fcafe-6f51-4fb1-8f3a-6909add228c6	CACAO BABA 	0	Quintales	1.3	0	0	1.3	16.00	20.80	7a83b1a2-5220-467b-bdcc-0665d572c30d	a633f8bb-f817-4f1c-a5f0-a134a272d943	2026-04-10 22:24:11.799+00	2026-04-10 22:24:11.799+00
01d42054-2eb0-46d4-abe2-5f8dbae1fd6d	CACAO BABA 	0	Quintales	1.75	0	0	1.75	17.00	29.75	7a83b1a2-5220-467b-bdcc-0665d572c30d	f837753a-2334-45a6-a75f-38d864a2242a	2026-04-10 22:24:36.862+00	2026-04-10 22:24:36.862+00
649aa8d5-59ed-4dd5-8f1b-496f288d89bf	CACAO BABA 	0	Quintales	0.5	0	0	0.5	16.00	8.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	b98aec14-45a9-4d58-8728-52d50c4024f1	2026-04-10 22:25:02.675+00	2026-04-10 22:25:02.675+00
0d89bd07-bcea-4054-8cbd-918ed50acd0c	CACAO BABA 	0	Quintales	1.6	0	0	1.6	17.00	27.20	7a83b1a2-5220-467b-bdcc-0665d572c30d	fc3782bc-e766-4698-b4f0-3025daffa24a	2026-04-11 16:07:31.719+00	2026-04-11 16:07:31.719+00
e464b97e-0bc9-40d4-93fb-26bf0f82278d	CACAO BABA 	0	Quintales	1.85	0	0	1.85	17.00	31.45	7a83b1a2-5220-467b-bdcc-0665d572c30d	157be795-e095-45d1-a125-5d03e1fe750c	2026-04-11 16:08:34.878+00	2026-04-11 16:08:34.878+00
b114e7d6-afee-4779-b2bc-24fa57254e42	CACAO BABA 	70	Quintales	5.52	0	3.86	1.65	110.00	181.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	cc4660a0-af99-45af-97c6-bc6d9bf4cfe9	2026-04-11 16:11:10.739+00	2026-04-11 16:11:10.739+00
8164316e-7d97-41d3-a941-549d57d3aac4	CACAO BABA 	0	Quintales	1.2	0	0	1.2	17.00	20.39	7a83b1a2-5220-467b-bdcc-0665d572c30d	23629c56-d241-4032-ae6a-0bfc1e653abb	2026-04-11 16:13:54.34+00	2026-04-11 16:13:54.34+00
1b3c354a-2d79-4b87-8beb-e05abef6003d	CACAO BABA 	0	Quintales	1.5	0	0	1.5	17.00	25.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	926b27ab-99be-4c99-9ed6-0f3864f31826	2026-04-11 16:15:35.572+00	2026-04-11 16:15:35.572+00
b934a4e7-d20c-47f5-b457-3635bb9a76c6	CACAO BABA 	5	Quintales	0.46	0	0.02	0.43	17.00	7.31	7a83b1a2-5220-467b-bdcc-0665d572c30d	51438f0a-a4a8-4865-b3c7-acc162f9d746	2026-04-11 16:17:59.507+00	2026-04-11 16:17:59.507+00
a6b369ec-aab6-46b3-87ac-1b5caf974e16	CACAO SECO	0	Quintales	3.5	0	0	3.5	17.00	59.50	27a59f8d-af5a-42a9-8d13-02b5f866034d	e16c0f2d-b72a-44ea-81eb-a1b9df24834e	2026-04-11 16:18:24.132+00	2026-04-11 16:18:24.132+00
475ffe2e-e888-4993-b763-d4e28adc575e	CACAO SECO	0	Quintales	0.34	0	0	0.34	105.00	35.70	27a59f8d-af5a-42a9-8d13-02b5f866034d	5837d910-f8be-460f-91e2-267824f7e173	2026-04-11 16:24:59.734+00	2026-04-11 16:24:59.734+00
b619f460-093a-4b33-b18b-3c22f0a8fbf5	CACAO SECO	0	Quintales	0.88	0	0	0.88	100.00	88.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	11a5e154-0037-43c2-8020-97275123eaa1	2026-04-11 16:25:24.806+00	2026-04-11 16:25:24.806+00
614f0fc4-274e-47e9-9ef6-cb830aff536f	CACAO SECO	0	Quintales	0.56	0	0	0.56	105.00	58.80	27a59f8d-af5a-42a9-8d13-02b5f866034d	e4ad21de-af39-44fa-903f-41ec68fb2360	2026-04-11 16:25:56.255+00	2026-04-11 16:25:56.255+00
7cc5220b-3588-41be-8631-877cff2bb3d2	CACAO SECO	0	Quintales	0.74	0	0	0.74	112.00	82.88	27a59f8d-af5a-42a9-8d13-02b5f866034d	4b239367-879c-4a04-a235-6163a10ce9cf	2026-04-11 16:26:41.086+00	2026-04-11 16:26:41.086+00
f8876669-0759-4bc9-b454-58d10e90f9d9	CACAO SECO	0	Quintales	1.19	0	0	1.19	92.00	109.47	27a59f8d-af5a-42a9-8d13-02b5f866034d	f2185309-1778-4ca9-b746-3ca6315d2103	2026-04-11 16:27:11.243+00	2026-04-11 16:27:11.243+00
1f3954e0-87a0-44ee-93a5-14224a9e9f37	CACAO SECO	0	Quintales	1.03	0	0	1.03	92.00	94.76	27a59f8d-af5a-42a9-8d13-02b5f866034d	bd5744d4-e242-4c53-bcf8-b01e8a44b8a9	2026-04-11 16:28:44.615+00	2026-04-11 16:28:44.615+00
a71a0ae4-b526-4266-bb36-c913e9256f94	CACAO SECO	0	Quintales	0.92	0	0	0.92	95.00	87.40	27a59f8d-af5a-42a9-8d13-02b5f866034d	07ae510b-34a7-4c35-b37c-263970ad4fa7	2026-04-11 16:29:26.743+00	2026-04-11 16:29:26.743+00
d5c8b510-6ce2-46ba-accc-4979e952a7cb	CACAO BABA 	72	Quintales	0.31	0	0.22	0.08	110.00	8.80	7a83b1a2-5220-467b-bdcc-0665d572c30d	aa7e2867-b8b3-43ce-b063-5961a379074e	2026-04-11 16:29:57.274+00	2026-04-11 16:29:57.274+00
f25b14d4-315b-46bd-a97e-a3cf9a82cd9f	CACAO BABA 	74	Quintales	0.16	0	0.12	0.04	110.00	4.40	7a83b1a2-5220-467b-bdcc-0665d572c30d	016ffcfd-79bc-486a-85f5-d6f21990115e	2026-04-11 16:30:22.273+00	2026-04-11 16:30:22.273+00
21268792-f92d-445d-896e-27470a5ff62f	MARACUYA	3	Kilogramos	62.73	0	1.88	60	0.35	21.00	8ae27e50-3a7d-469e-88ca-137b2882b33c	ecf0caba-d7cb-4e31-b0f8-86a2a343ba12	2026-04-11 16:30:59.394+00	2026-04-11 16:30:59.394+00
c0b024c8-01de-4ba0-88bc-dbbc24026a1b	MARACUYA	3	Kilogramos	92.73	0	2.78	89	0.35	31.15	8ae27e50-3a7d-469e-88ca-137b2882b33c	1508acbd-9c09-4ad3-936c-7cec0e7d6e59	2026-04-11 16:31:30.238+00	2026-04-11 16:31:30.238+00
6f0eb5b6-96c5-4a50-86cf-32d251cb1f22	MARACUYA	3	Kilogramos	26.36	0	0.79	25	0.35	8.75	8ae27e50-3a7d-469e-88ca-137b2882b33c	cca8163b-d400-4dc0-ae6e-394842b18fd9	2026-04-11 16:32:08.549+00	2026-04-11 16:32:08.549+00
e733919a-48cc-44d8-bb2d-06a828def1ff	MARACUYA	3	Kilogramos	128.64	0	3.86	124	0.35	43.40	8ae27e50-3a7d-469e-88ca-137b2882b33c	218ddb97-b366-4043-b8d4-e81b1e419786	2026-04-11 16:32:39.941+00	2026-04-11 16:32:39.941+00
7d1a3c77-4fdc-4b0f-ad82-dc07f5cc7e6e	MARACUYA	5	Kilogramos	256.36	0	12.82	243	0.35	85.05	8ae27e50-3a7d-469e-88ca-137b2882b33c	8b35bb97-1711-477e-8d44-6882f7573602	2026-04-11 16:33:12.656+00	2026-04-11 16:33:12.656+00
a9004597-bc61-4db7-8e47-3b58e7396318	MARACUYA	3	Kilogramos	36.82	0	1.1	35	0.35	12.25	8ae27e50-3a7d-469e-88ca-137b2882b33c	fc6606a1-35a7-4a15-a1e9-6a577d3b2c24	2026-04-11 16:34:55.244+00	2026-04-11 16:34:55.244+00
c4cda613-8c58-4624-8a29-94f58e41e2e7	MARACUYA	3	Kilogramos	20.45	0	0.61	19	0.35	6.65	8ae27e50-3a7d-469e-88ca-137b2882b33c	74cbc184-c4f2-4f7d-a650-780259cea6d8	2026-04-11 16:35:42.578+00	2026-04-11 16:35:42.578+00
d1379802-676c-44a1-9926-2b999fba9558	MARACUYA	3	Kilogramos	142.27	0	4.27	138	0.35	48.30	8ae27e50-3a7d-469e-88ca-137b2882b33c	41637e68-bdc3-4a7d-969d-da411f3e877d	2026-04-11 16:36:12.805+00	2026-04-11 16:36:12.805+00
93bd38c5-987b-4608-beb4-e0f6ec846827	MARACUYA	2	Kilogramos	65.91	0	1.32	64	0.35	22.40	8ae27e50-3a7d-469e-88ca-137b2882b33c	902e02cb-c728-40cb-8757-bd97f31953c1	2026-04-11 16:36:59.449+00	2026-04-11 16:36:59.449+00
889d5947-b1b0-4055-9f0c-136f48191f83	CACAO SECO	0	Quintales	0.03	0	0	0.03	100.00	3.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	a71ea85c-07ef-43db-93b2-445f4eddd6d3	2026-04-11 19:14:43.544+00	2026-04-11 19:14:43.544+00
39dd2544-0ad6-4225-987e-ecb5a84a6bc5	CACAO SECO	0	Quintales	0.02	0	0	0.02	89.00	1.78	27a59f8d-af5a-42a9-8d13-02b5f866034d	f65cbfc1-5913-49d3-b968-de1a4bc0da69	2026-04-11 19:15:56.396+00	2026-04-11 19:15:56.396+00
dd841f4b-1920-4350-9e84-8775e9f552c0	CACAO SECO	37	Quintales	0.77	0	0.28	0.48	110.00	52.80	27a59f8d-af5a-42a9-8d13-02b5f866034d	dbf51650-7dbc-411e-9cd6-b444528f2cbb	2026-04-11 19:16:27.156+00	2026-04-11 19:16:27.156+00
39f3da2c-6b1a-49cf-bc7a-5216454ad056	CACAO BABA 	70	Quintales	2.27	0	1.59	0.68	115.00	78.20	7a83b1a2-5220-467b-bdcc-0665d572c30d	84304428-f6c6-4956-b396-4d5b818808af	2026-04-11 19:17:20.457+00	2026-04-11 19:17:20.457+00
7b77d816-63cf-4cdf-80c7-fed7f7030900	CACAO BABA 	72	Quintales	0.11	0	0.08	0.03	110.00	3.30	7a83b1a2-5220-467b-bdcc-0665d572c30d	d8c6abb6-ee1a-4016-b54a-708f54b3d609	2026-04-11 19:17:43.738+00	2026-04-11 19:17:43.738+00
53bc50de-cc88-4f67-805b-c04836704572	MARACUYA	2	Kilogramos	287.73	0	5.75	281	0.35	98.35	8ae27e50-3a7d-469e-88ca-137b2882b33c	dfacc269-721e-461a-94cd-f9e18b214fd4	2026-04-11 19:18:53.086+00	2026-04-11 19:18:53.086+00
9f7b82e8-ee70-4f52-8378-957720c56ab5	CACAO SECO	0	Quintales	0.02	0	0	0.02	105.00	2.10	27a59f8d-af5a-42a9-8d13-02b5f866034d	bd837d16-1d14-426f-81f1-d035d3d5fb96	2026-04-11 19:22:03.509+00	2026-04-11 19:22:03.509+00
dde18cd2-21e3-4b91-b74d-dd3001ccf49e	CACAO BABA 	72	Quintales	0.22	0	0.16	0.06	110.00	6.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	95936f96-2bf7-40b6-a24f-47de1d8e3e69	2026-04-11 19:31:28.625+00	2026-04-11 19:31:28.625+00
84185bc6-6278-441d-a80b-e07b400d10ea	CACAO BABA 	72	Quintales	0.21	0	0.15	0.05	110.00	5.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	09dca7b0-84a3-4ce2-8c18-f86e95abb2f3	2026-04-11 19:33:16.131+00	2026-04-11 19:33:16.131+00
618423ee-10ab-48a8-a209-871eb4d95941	CACAO BABA 	0	Tacho	1.6	0	0	1.6	17.00	27.20	7a83b1a2-5220-467b-bdcc-0665d572c30d	14f054d6-0cb6-4eaf-92d2-054b081169d3	2026-04-11 20:27:26.045+00	2026-04-11 20:27:26.045+00
610cb901-7473-4aaf-8fcd-fcebed1fe123	CACAO BABA 	0	Tacho	2.02	0	0	2.02	17.00	34.34	7a83b1a2-5220-467b-bdcc-0665d572c30d	53c280c1-4c05-4da3-87f7-dd1d18c4cd24	2026-04-11 20:28:02.741+00	2026-04-11 20:28:02.741+00
aa4c4f75-7e5a-4439-8b5e-6c006633a562	CACAO BABA 	0	Quintales	11.3	0	0	11.3	17.00	192.10	7a83b1a2-5220-467b-bdcc-0665d572c30d	902a193d-ed2e-41c9-981d-911b0753dbca	2026-04-13 16:09:34.764+00	2026-04-13 16:09:34.764+00
2e334c21-cee2-4bec-8cbe-4e5de58a29bd	CACAO BABA 	0	Quintales	1	0	0	1	17.00	17.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	bf0a6579-cc20-4be4-ad80-8b9721bf03b5	2026-04-13 16:09:53.742+00	2026-04-13 16:09:53.742+00
b5e4df5b-203d-4a20-a58f-3d770c07131d	CACAO BABA 	0	Quintales	0.3	0	0	0.3	17.00	5.09	7a83b1a2-5220-467b-bdcc-0665d572c30d	260cadeb-d758-4dfd-a5ce-18a9b4697509	2026-04-13 16:10:16.4+00	2026-04-13 16:10:16.4+00
3702dabf-a8bc-4ef1-a20f-8b07b1f4dd2e	CACAO BABA 	0	Quintales	0.71	0	0	0.71	17.00	12.07	7a83b1a2-5220-467b-bdcc-0665d572c30d	cca2015e-3f7f-4aac-9958-a733cb5ceab4	2026-04-13 16:12:17.644+00	2026-04-13 16:12:17.644+00
1d68ca09-f03f-4d40-9dcc-64b911d2bfe8	CACAO BABA 	0	Quintales	0.71	0	0	0.71	17.00	12.07	7a83b1a2-5220-467b-bdcc-0665d572c30d	a2d0777c-5295-4e48-963f-7ae996c49675	2026-04-13 16:12:57.871+00	2026-04-13 16:12:57.871+00
d833e394-b320-43b3-88bb-226d763fb75d	CACAO BABA 	0	Quintales	1	0	0	1	17.00	17.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	18aed61e-be70-4f7c-b4a1-45797609b722	2026-04-13 16:13:44.545+00	2026-04-13 16:13:44.545+00
391c7807-3619-4d5c-abea-31b8987184b1	CACAO BABA 	0	Quintales	0.3	0	0	0.3	17.00	5.09	7a83b1a2-5220-467b-bdcc-0665d572c30d	d72955ba-e4b5-4dda-9232-2f039c208f87	2026-04-13 16:14:09.767+00	2026-04-13 16:14:09.767+00
ce22ddbd-f518-4758-b904-c4bb71ba1ae8	CACAO BABA 	0	Quintales	0.25	0	0	0.25	17.00	4.25	7a83b1a2-5220-467b-bdcc-0665d572c30d	48fcd185-9610-4105-83ee-b0b4b6bc1069	2026-04-13 16:14:52.642+00	2026-04-13 16:14:52.642+00
86b0d662-e77a-4a84-9d62-f897c0b2c6a0	CACAO BABA 	0	Tacho	0.9	0	0	0.9	17.00	15.30	7a83b1a2-5220-467b-bdcc-0665d572c30d	acfea689-bac9-4760-ae78-4cc81086eee6	2026-04-13 19:27:29.032+00	2026-04-13 19:27:29.032+00
7be81ed4-9b7b-4f1e-bd11-d2a8c74c0d42	CACAO SECO	1	Quintales	0.05	0	0	0.04	119.00	4.76	27a59f8d-af5a-42a9-8d13-02b5f866034d	78bb89a1-cd2e-43aa-85e0-5ac080896693	2026-04-14 20:12:18.685+00	2026-04-14 20:12:18.685+00
70810b7a-beca-4cb6-9b03-9d90883c2132	CACAO BABA 	0.3	Tacho	1.4	0	0	1.39	17.00	23.63	7a83b1a2-5220-467b-bdcc-0665d572c30d	3d6ff5f1-d5dc-4b9a-a1ca-2f16eee4239c	2026-04-14 20:13:46.547+00	2026-04-14 20:13:46.547+00
ac3fab5e-a6d4-4390-8676-eb6c7af9ccd1	CACAO BABA 	0.3	Tacho	0.4	0	0	0.39	18.00	7.02	7a83b1a2-5220-467b-bdcc-0665d572c30d	c1305d34-8057-46c6-9b89-f2939109cd84	2026-04-14 20:14:15.365+00	2026-04-14 20:14:15.365+00
ce413c37-4ab4-4eda-b287-0cf3a1510987	CACAO BABA 	72	Quintales	0.3	0	0.22	0.08	120.00	9.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	b2487492-c533-48f5-8b17-bf4f817202fe	2026-04-14 20:15:13.845+00	2026-04-14 20:15:13.845+00
5ad268ad-3719-4673-8c00-0146ebe9f907	CACAO BABA 	0	Quintales	2	0	0	2	17.00	34.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	d0d12eec-5582-4659-a1bd-398e6cd2b4c3	2026-04-15 16:02:11.275+00	2026-04-15 16:02:11.275+00
7a5c86ca-2d84-4801-b3cb-1e94fbccc525	CACAO BABA 	0	Quintales	1.3	0	0	1.3	17.00	22.10	7a83b1a2-5220-467b-bdcc-0665d572c30d	7d5e2751-ebe1-412c-8799-0e2fe4ad828a	2026-04-15 16:02:32.645+00	2026-04-15 16:02:32.645+00
81b58b55-7d52-42d1-bd03-7b581df55d20	CACAO BABA 	0	Quintales	4	0	0	4	19.00	76.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	82b1cd97-25d9-40f3-a423-ed51512e602b	2026-04-15 16:03:01.581+00	2026-04-15 16:03:01.581+00
69b5f9aa-665f-4f38-a0f5-313b7ccdb171	CACAO SECO	0	Quintales	0.32	0	0	0.32	100.00	32.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	0c7896b7-026f-4657-a71b-fa39d786b5d4	2026-04-15 16:04:46.341+00	2026-04-15 16:04:46.341+00
7336e2e6-382e-4971-b94a-4a4f7cb9a09a	CACAO SECO	0	Quintales	2.78	0	0	2.78	115.00	319.70	27a59f8d-af5a-42a9-8d13-02b5f866034d	af6fc6ae-23fc-464d-b9c2-a3906a522ce7	2026-04-15 16:05:10.567+00	2026-04-15 16:05:10.567+00
b8992b24-0f77-4601-b1ad-3e502cd72f35	CACAO SECO	0	Quintales	0.69	0	0	0.69	115.00	79.34	27a59f8d-af5a-42a9-8d13-02b5f866034d	e23f71a4-8fc5-4a29-a2ad-2d767a4ef514	2026-04-15 16:06:00.969+00	2026-04-15 16:06:00.969+00
5ddd0242-4d97-4893-9399-fff06d2515b2	CACAO SECO	0	Quintales	3.04	0	0	3.04	115.00	349.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	74495e5b-2fe9-411b-9453-2ce1f5547dc8	2026-04-15 16:06:34.954+00	2026-04-15 16:06:34.954+00
e568c237-f90c-490c-b34e-142608ac75f6	CACAO SECO	0	Quintales	0.81	0	0	0.81	115.00	93.15	27a59f8d-af5a-42a9-8d13-02b5f866034d	8a6da259-b130-4eeb-a4bf-ebf3c4f051f7	2026-04-15 16:07:23.937+00	2026-04-15 16:07:23.937+00
31e077dd-d396-46c1-90f7-283aa10c3cce	CACAO SECO	0	Quintales	0.22	0	0	0.22	102.00	22.44	27a59f8d-af5a-42a9-8d13-02b5f866034d	9181b938-79d1-4d89-861b-4b4d7ca0ad82	2026-04-15 16:07:58.038+00	2026-04-15 16:07:58.038+00
a73dc99c-5ee5-4aa7-88f1-2b92a8be736d	CACAO SECO	0	Quintales	0.07	0	0	0.07	118.00	8.26	27a59f8d-af5a-42a9-8d13-02b5f866034d	bd30dec7-f10c-4051-bccd-4f1f46572b2c	2026-04-15 16:08:28.534+00	2026-04-15 16:08:28.534+00
da341bbd-3858-47df-848b-319e7dc1ee0a	CACAO SECO	0	Quintales	3.19	0	0	3.19	105.00	334.95	27a59f8d-af5a-42a9-8d13-02b5f866034d	d65eee05-a62e-42b3-8572-ed10fabb33e2	2026-04-15 16:08:57.735+00	2026-04-15 16:08:57.735+00
6a777796-4084-4922-9141-7879bafa6038	CACAO BABA 	0	Tacho	1.77	0	0	1.77	19.00	33.63	7a83b1a2-5220-467b-bdcc-0665d572c30d	e6e5da9b-6a8a-4041-b7b6-811ca18f2d82	2026-04-15 19:43:18.741+00	2026-04-15 19:43:18.741+00
cde38e21-fe00-478a-ad02-82a1b4950d80	CACAO SECO	0	Quintales	12.9	0	0	12.9	140.00	1806.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	5366474c-53fd-450b-9fc6-a8a0183dcff9	2026-04-15 22:51:10.447+00	2026-04-15 22:51:10.447+00
269fa15b-6d1b-4acf-b8a2-86cfb072231b	CACAO SECO	0	Quintales	51.03	0	0	51.03	145.00	7399.35	27a59f8d-af5a-42a9-8d13-02b5f866034d	8b94e1b5-11c6-4b90-99fe-62d49f41eec5	2026-04-15 22:52:12.564+00	2026-04-15 22:52:12.564+00
516c13e4-1bf6-406d-91db-b65b02402d26	CACAO SECO	0	Quintales	49.95	0	0	49.95	145.00	7242.75	27a59f8d-af5a-42a9-8d13-02b5f866034d	6e5eac28-3e5c-4e8a-82c0-78cd93877833	2026-04-15 22:53:03.845+00	2026-04-15 22:53:03.845+00
1ffdb3fc-8b2c-4b68-a928-cecb89946ab8	CACAO SECO	0	Quintales	0.85	0	0	0.85	140.00	119.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	f269a614-bf4a-4614-a9aa-b41c69b6403b	2026-04-16 12:39:56.641+00	2026-04-16 12:39:56.641+00
df908dc3-1ad2-4b67-8bcf-2c1bb16ee9a2	CACAO SECO	0	Quintales	11.81	0	0	11.81	140.00	1653.40	27a59f8d-af5a-42a9-8d13-02b5f866034d	0bdc6e2c-4a7f-4bca-89fe-b8694e0a80dc	2026-04-16 12:41:08.343+00	2026-04-16 12:41:08.343+00
09b0a0dc-b930-455e-ad84-17836727273e	CACAO SECO	0	Quintales	11.79	0	0	11.79	140.00	1650.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	d6a47427-cf54-48c6-a885-61785b38ae3f	2026-04-16 12:42:19.345+00	2026-04-16 12:42:19.345+00
50a7d6ad-5bf1-43f3-8e96-621cdb941800	CACAO BABA 	0	Quintales	0.61	0	0	0.61	18.00	10.98	7a83b1a2-5220-467b-bdcc-0665d572c30d	65884b08-086c-4d49-918a-84c5f98c8c57	2026-04-16 16:34:05.345+00	2026-04-16 16:34:05.345+00
8b4644c3-6a68-4b63-b86e-edebe7fdcb92	CACAO BABA 	0	Quintales	0.25	0	0	0.25	18.00	4.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	4e9cf48c-0a13-42b2-bb4f-910fd61b135f	2026-04-16 16:34:26.947+00	2026-04-16 16:34:26.947+00
a14bd382-efa8-40e4-b840-c65b3fdb6fe8	CACAO BABA 	0	Quintales	1	0	0	1	19.00	19.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	647fed1e-6167-4a70-ad18-3fb410fff60c	2026-04-16 16:34:49.715+00	2026-04-16 16:34:49.715+00
c33df708-6b81-45f8-8ea3-201d23bc747c	CACAO BABA 	0	Quintales	3.15	0	0	3.15	19.00	59.85	7a83b1a2-5220-467b-bdcc-0665d572c30d	376ed702-c5fb-4d4d-ac7c-5f36684cebbc	2026-04-16 16:35:29.28+00	2026-04-16 16:35:29.28+00
c2e4f308-2263-40ad-b7ce-b3d30320fce4	CACAO BABA 	0	Quintales	0.5	0	0	0.5	18.00	9.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	3f326730-6a51-4bda-badb-8f4089a983b5	2026-04-16 16:35:56.573+00	2026-04-16 16:35:56.573+00
22a5becf-d15a-4c73-bdba-93a7fed99ce2	CACAO BABA 	0	Quintales	0.3	0	0	0.3	18.00	5.40	7a83b1a2-5220-467b-bdcc-0665d572c30d	5b6809e6-b56d-4099-b7bb-780a1c9205f2	2026-04-16 16:36:25.649+00	2026-04-16 16:36:25.649+00
8f3a2875-6cf0-41e1-97ce-b06157e3becc	CACAO BABA 	0	Quintales	5	0	0	5	18.00	90.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	35bae7ed-622a-4a90-99be-5fb97c07022e	2026-04-16 16:36:57.849+00	2026-04-16 16:36:57.849+00
6d1c0d1d-6508-40f3-9550-56c5a744052b	CACAO SECO	2	Quintales	8.44	0	0.17	8.27	125.00	1033.75	27a59f8d-af5a-42a9-8d13-02b5f866034d	9177334c-93f4-4154-9faf-219617475daf	2026-04-16 16:43:13.765+00	2026-04-16 16:43:13.765+00
ad0035cb-9d56-4b5b-982f-d053325d5004	CACAO SECO	5	Quintales	1.69	0	0.08	1.6	125.00	200.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	45133d31-e01d-41af-9e7c-46ce2340f356	2026-04-16 16:43:51.947+00	2026-04-16 16:43:51.947+00
9f386b99-a9d6-41ad-b1e5-f9e8d7c09a7a	CACAO SECO	0	Quintales	0.37	0	0	0.37	80.00	29.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	0b0d98cd-0470-4d17-94d9-c8e6cabd9d1c	2026-04-16 16:44:21.658+00	2026-04-16 16:44:21.658+00
4a77159d-0f39-4d4d-9479-1336689638ce	CACAO BABA 	72	Quintales	1.08	0	0.78	0.3	125.00	37.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	9e347876-444c-4b38-b26e-aa012d2c8655	2026-04-16 16:45:20.748+00	2026-04-16 16:45:20.748+00
9db6fbdb-8e50-41fa-997c-205633939935	CACAO BABA 	71	Quintales	0.39	0	0.28	0.11	125.00	13.75	7a83b1a2-5220-467b-bdcc-0665d572c30d	7101732f-34c2-4108-b853-03c383cfbad2	2026-04-16 16:45:57.252+00	2026-04-16 16:45:57.252+00
0e44c1f1-a3ba-4c3f-b13c-792f090b2487	CACAO SECO	0	Quintales	0.04	0	0	0.04	110.00	4.40	27a59f8d-af5a-42a9-8d13-02b5f866034d	1898e34a-05ea-405e-8177-38b73987222b	2026-04-16 19:27:38.344+00	2026-04-16 19:27:38.344+00
4670dcea-43ad-4b58-9a13-9608afac8e00	CACAO SECO	72	Quintales	0.21	0	0.15	0.05	120.00	6.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	78a65d0a-c9f1-4acf-9a3c-4f0e9851d467	2026-04-16 19:28:46.178+00	2026-04-16 19:28:46.178+00
fdc5ba50-190a-4357-be0d-68c262953bd6	CACAO BABA 	72	Quintales	0.36	0	0.26	0.1	120.00	12.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	929daac0-58c5-48d1-bd58-0d0b1d985ed8	2026-04-16 19:29:17.863+00	2026-04-16 19:29:17.863+00
443b9415-cd2d-4cb0-a006-33683429ce0c	CACAO BABA 	71	Quintales	1.28	0	0.91	0.37	130.00	48.10	7a83b1a2-5220-467b-bdcc-0665d572c30d	b28e9ac1-16a3-4333-a24a-ce911ad6eeab	2026-04-16 19:30:57.043+00	2026-04-16 19:30:57.043+00
65c6735d-3c29-4095-a18f-77aec1884b82	CACAO BABA 	72	Quintales	0.97	0	0.7	0.27	120.00	32.40	7a83b1a2-5220-467b-bdcc-0665d572c30d	ed4c2a48-34a7-430e-b2f8-a6337d659320	2026-04-16 19:31:29.812+00	2026-04-16 19:31:29.812+00
d074d1cc-4200-4b53-a83e-5787de375af9	CACAO SECO	22	Quintales	0.13	0	0.03	0.1	125.00	12.50	27a59f8d-af5a-42a9-8d13-02b5f866034d	13dfbef0-8451-47f3-a4d5-dba983013b1f	2026-04-16 20:22:44.879+00	2026-04-16 20:22:44.879+00
1a3221fd-9fe7-4466-b8c8-640e1b44275e	CACAO SECO	1	Quintales	0.09	0	0	0.08	120.00	9.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	73971e47-e776-456d-8e02-1ae86daa3d82	2026-04-16 22:22:21.381+00	2026-04-16 22:22:21.381+00
b4904b65-06ac-4870-a9bd-6356a77ea1d8	CACAO BABA 	0	Quintales	0.25	0	0	0.25	18.00	4.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	d311e19b-1885-477f-9ee7-221d667d1065	2026-04-17 15:41:56.741+00	2026-04-17 15:41:56.741+00
cc131a4c-da9b-4585-80de-cf333df67cc4	CACAO BABA 	70	Quintales	3.65	0	2.55	1.09	120.00	130.80	7a83b1a2-5220-467b-bdcc-0665d572c30d	8f8d37f7-8498-4822-9551-0ca29e57a0f5	2026-04-17 15:43:02.343+00	2026-04-17 15:43:02.343+00
5b166590-386c-4d84-9ab3-f9e55be72d03	CACAO BABA 	0	Quintales	1.15	0	0	1.15	19.00	21.85	7a83b1a2-5220-467b-bdcc-0665d572c30d	fb1a4c30-6281-48b6-83c7-5e6acbc9a435	2026-04-17 15:43:37.952+00	2026-04-17 15:43:37.952+00
69ac6ef9-6ed5-4366-82f4-009cf2e43f4f	MARACUYA	3	Kilogramos	43.18	0	1.3	41	0.35	14.35	8ae27e50-3a7d-469e-88ca-137b2882b33c	ab72416a-f3c2-4b65-bd9c-66791ef70c3e	2026-04-17 16:12:41.743+00	2026-04-17 16:12:41.743+00
f65deee3-95e0-4a77-8c26-9e48315ef4e5	MARACUYA	3	Kilogramos	89.55	0	2.69	86	0.36	30.95	8ae27e50-3a7d-469e-88ca-137b2882b33c	d2cac3c2-1e4b-4cd9-8253-0571e733a7e4	2026-04-17 16:13:57.269+00	2026-04-17 16:13:57.269+00
81101192-d6c9-4525-afed-2a8f209332f5	MARACUYA	3	Kilogramos	52.73	0	1.58	51	0.36	18.36	8ae27e50-3a7d-469e-88ca-137b2882b33c	7a1445ae-105c-4023-8a05-31d0784f1ad0	2026-04-17 16:14:35.752+00	2026-04-17 16:14:35.752+00
7b06f87d-5bd1-4d7d-9cef-02b182df9cb9	MARACUYA	3	Kilogramos	81.36	0	2.44	78	0.36	28.08	8ae27e50-3a7d-469e-88ca-137b2882b33c	88afea12-c8a8-4a0c-9bc0-6d0442792b93	2026-04-17 16:15:05.946+00	2026-04-17 16:15:05.946+00
6401cddf-d43f-463d-82da-00b177258826	CACAO SECO	0	Quintales	1.2	0	0	1.2	125.00	150.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	3d72c113-936d-4a86-8b19-cd2efc218a19	2026-04-17 16:20:03.354+00	2026-04-17 16:20:03.354+00
ab8620ad-4406-48be-872c-ae068fda855f	CACAO SECO	0	Quintales	0.26	0	0	0.26	125.00	32.50	27a59f8d-af5a-42a9-8d13-02b5f866034d	84baf8e2-2d16-4de9-b738-2b55989191c6	2026-04-17 16:20:33.881+00	2026-04-17 16:20:33.881+00
55dba25f-2915-4f73-921a-b9af0adf26c9	CACAO SECO	0	Quintales	1.48	0	0	1.48	122.00	180.56	27a59f8d-af5a-42a9-8d13-02b5f866034d	59c220f7-024e-47e9-a564-32754a11b962	2026-04-17 16:21:01.443+00	2026-04-17 16:21:01.443+00
e418e560-78f0-4601-ae96-1cf7e24c65b5	CACAO SECO	0	Quintales	0.1	0	0	0.1	120.00	12.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	e242f9ec-5324-4ef7-97ea-3bdf81e7f87e	2026-04-17 16:21:31.879+00	2026-04-17 16:21:31.879+00
a9f768f0-dad6-4b85-bec8-558fb012ce02	CACAO SECO	0	Quintales	0.71	0	0	0.71	112.00	79.52	27a59f8d-af5a-42a9-8d13-02b5f866034d	2fcea9a0-5200-4441-997c-26c44e8b41ed	2026-04-17 16:22:12.211+00	2026-04-17 16:22:12.211+00
fbab5ccf-ee6c-4f5f-8992-b1742b9bbd1f	CACAO SECO	0	Quintales	0.37	0	0	0.37	112.00	41.44	27a59f8d-af5a-42a9-8d13-02b5f866034d	677d15a3-4a1c-4cca-b0da-17adf72ad624	2026-04-17 16:23:29.376+00	2026-04-17 16:23:29.376+00
dc069ea9-1862-4beb-9e60-7124973630cb	CACAO BABA 	0	Tacho	0.98	0	0	0.98	20.00	19.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	3175c88b-c5b5-4a1c-8d7b-0ace14981b36	2026-04-17 16:24:29.298+00	2026-04-17 16:24:29.298+00
d9609319-adf4-4567-8e10-97fc8240b12d	CACAO BABA 	72	Quintales	0.47	0	0.34	0.13	130.00	16.90	7a83b1a2-5220-467b-bdcc-0665d572c30d	35760561-bdbb-4985-9d11-be4f2c49916e	2026-04-17 19:53:04.343+00	2026-04-17 19:53:04.343+00
f0395e1d-f2c3-435c-a96b-f1be38cb0e7e	CACAO BABA 	0	Tacho	1.06	0	0	1.06	20.00	21.20	7a83b1a2-5220-467b-bdcc-0665d572c30d	522ee860-5a1f-4e23-a9ac-971b4f2a2565	2026-04-17 20:07:50.746+00	2026-04-17 20:07:50.746+00
948746ba-33ca-47ba-afcc-3217c141a6a2	CACAO BABA 	0	Quintales	2.25	0	0	2.25	19.00	42.75	7a83b1a2-5220-467b-bdcc-0665d572c30d	7bef2f49-872b-445c-ab00-a409bfecffe5	2026-04-18 16:11:23.762+00	2026-04-18 16:11:23.762+00
d5caceb3-655d-4f66-98bc-3c7571b37527	CACAO BABA 	0	Quintales	16	0	0	16	20.00	320.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	737ebdb0-c3ae-4f5e-887d-07f937e74d38	2026-04-18 16:13:30.438+00	2026-04-18 16:13:30.438+00
02bed0de-8707-4a2a-8fea-4bf4224f79ea	CACAO BABA 	70	Quintales	3	0	2.1	0.9	120.00	108.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	b39d997e-e876-43f9-955f-5991532f7a18	2026-04-18 16:14:16.144+00	2026-04-18 16:14:16.144+00
18cb29b9-eed9-44b3-96b0-b432a3573360	MARACUYA	3	Kilogramos	71.82	0	2.15	69	0.38	26.22	8ae27e50-3a7d-469e-88ca-137b2882b33c	c8fc6f50-b67d-4b44-a00d-cc031c72bf42	2026-04-18 16:18:55.347+00	2026-04-18 16:18:55.347+00
df6581af-b661-4a5e-b47d-505234efd66c	MARACUYA	3	Kilogramos	44.09	0	1.32	42	0.39	16.38	8ae27e50-3a7d-469e-88ca-137b2882b33c	06219581-3a21-48da-b0d4-3acd17bffa64	2026-04-18 16:19:35.478+00	2026-04-18 16:19:35.478+00
5f5f5f07-28ee-4964-8194-7895846b5664	MARACUYA	3	Kilogramos	34.55	0	1.04	33	0.39	12.87	8ae27e50-3a7d-469e-88ca-137b2882b33c	7d242942-ea20-46bb-9dc8-807f7aaca232	2026-04-18 16:20:06.146+00	2026-04-18 16:20:06.146+00
cfb7e3b4-659c-4aab-8aa5-0b19fb2228da	MARACUYA	5	Kilogramos	56.36	0	2.82	53	0.38	20.14	8ae27e50-3a7d-469e-88ca-137b2882b33c	ece59cf2-3944-486f-89f6-48f5b4864016	2026-04-18 16:21:45.341+00	2026-04-18 16:21:45.341+00
9c02b2bf-8acb-4f60-a256-30dbd16279b8	CACAO SECO	3	Kilogramos	63.64	0	1.91	61	0.39	23.79	27a59f8d-af5a-42a9-8d13-02b5f866034d	2b235a91-edf8-4444-889e-b8a7b2d0142b	2026-04-18 16:22:20.068+00	2026-04-18 16:22:20.068+00
101fa3d3-7965-41cd-af60-e61986c13514	MARACUYA	3	Kilogramos	28.64	0	0.86	27	0.39	10.53	8ae27e50-3a7d-469e-88ca-137b2882b33c	26e2dc5b-a438-4819-9b51-8131f14d7ac2	2026-04-18 16:23:39.25+00	2026-04-18 16:23:39.25+00
0f5014ec-52db-4603-9c7c-10dfa1538574	MARACUYA	3	Kilogramos	6.82	0	0.2	6	0.39	2.34	8ae27e50-3a7d-469e-88ca-137b2882b33c	9c21c4c1-d702-47e4-bf48-7b92767dbe07	2026-04-18 16:24:12.288+00	2026-04-18 16:24:12.288+00
b51014f7-0a38-484b-bf82-f8cbdcf18cd1	MARACUYA	3	Kilogramos	100.91	0	3.03	97	0.39	37.83	8ae27e50-3a7d-469e-88ca-137b2882b33c	4aa22d95-6cb6-4341-9c47-c47e0ae150a9	2026-04-18 16:25:05.565+00	2026-04-18 16:25:05.565+00
1ba45757-c57b-4e05-9d4a-f2e23ea652fe	MARACUYA	3	Kilogramos	96.36	0	2.89	93	0.39	36.27	8ae27e50-3a7d-469e-88ca-137b2882b33c	75c1bb81-1cd8-4434-8f98-f67fb50f70fc	2026-04-18 16:26:23.252+00	2026-04-18 16:26:23.252+00
de281fef-5cdd-449e-ae6f-6f69ef63704c	MARACUYA	3	Kilogramos	30.45	0	0.91	29	0.39	11.31	8ae27e50-3a7d-469e-88ca-137b2882b33c	0eeb106a-003f-4618-82f3-5201f43d22e2	2026-04-18 16:26:55.85+00	2026-04-18 16:26:55.85+00
415b2005-03db-4a08-b58e-5b5a9e71da83	MARACUYA	1	Kilogramos	67.73	0	0.68	67	0.40	26.80	8ae27e50-3a7d-469e-88ca-137b2882b33c	8491f063-b461-4709-b494-3a35116fa3be	2026-04-18 16:27:56.639+00	2026-04-18 16:27:56.639+00
7c970c28-c8c9-42f7-af08-7f9ee959bbd7	CACAO SECO	0	Quintales	1.2	0	0	1.2	55.00	66.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	46609806-072b-4199-8d5f-0c47be5ca08d	2026-04-18 16:28:33.775+00	2026-04-18 16:28:33.775+00
bf03d1c7-31a3-4928-9c79-fac399dde026	CACAO SECO	0	Quintales	0.41	0	0	0.41	55.00	22.54	27a59f8d-af5a-42a9-8d13-02b5f866034d	bddec045-db74-4cb6-b366-12b5cef1a19f	2026-04-18 16:31:03.543+00	2026-04-18 16:31:03.543+00
0e696735-360e-420b-ab1e-fdcd93952f90	CACAO SECO	0	Quintales	1.03	0	0	1.03	125.00	128.75	27a59f8d-af5a-42a9-8d13-02b5f866034d	89453b82-bb65-43c2-8f63-d395d0801997	2026-04-18 16:31:32.384+00	2026-04-18 16:31:32.384+00
7ffb701f-d1b1-4c7b-b568-da1db6c4d868	CACAO SECO	0	Quintales	0.33	0	0	0.33	110.00	36.30	27a59f8d-af5a-42a9-8d13-02b5f866034d	4dacbd86-8125-48b1-b9d9-f33e933f1006	2026-04-18 16:33:15.942+00	2026-04-18 16:33:15.942+00
d6219224-c512-4cd6-a5e8-2f385f977d2a	CACAO SECO	0	Quintales	0.56	0	0	0.56	110.00	61.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	01cbd0fa-c76f-4459-af38-a7a6025f6ab8	2026-04-18 16:33:39.042+00	2026-04-18 16:33:39.042+00
4f9165d5-8085-44f6-9270-571f609c5191	CACAO SECO	0	Quintales	1.66	0	0	1.66	118.00	195.88	27a59f8d-af5a-42a9-8d13-02b5f866034d	8c4718bd-66c6-4d23-aa8a-0cbe212ab339	2026-04-18 16:34:09.643+00	2026-04-18 16:34:09.643+00
5faaacfe-6d54-4277-8ec7-45700dff3aaa	CACAO SECO	0	Quintales	0.38	0	0	0.38	100.00	38.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	1bce7280-5365-4ecc-a175-a5dcb67f23ce	2026-04-18 16:34:30.44+00	2026-04-18 16:34:30.44+00
e05e1124-82e6-4084-9d91-bcbf33be8c6b	CACAO SECO	0	Quintales	1.35	0	0	1.35	55.00	74.25	27a59f8d-af5a-42a9-8d13-02b5f866034d	5d1e961b-e7b4-4257-93d2-3b19b7eab8f4	2026-04-18 16:34:56.448+00	2026-04-18 16:34:56.448+00
af07ad5f-c2b3-43b2-9085-1689163b8e6f	CACAO SECO	0	Quintales	0.51	0	0	0.51	60.00	30.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	22d87bb3-e0ed-4d1a-8b24-d0e32ad0e52f	2026-04-18 16:35:26.151+00	2026-04-18 16:35:26.151+00
369df0e7-d442-4d0f-ad76-3d9b85225f70	CACAO SECO	0	Quintales	0.92	0	0	0.92	55.00	50.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	fa088413-7613-4d7a-910e-8d16e50c9580	2026-04-18 16:36:06.754+00	2026-04-18 16:36:06.754+00
4b3c157c-c7f5-4183-ad76-b318b96b03aa	CACAO SECO	0	Quintales	0.95	0	0	0.95	125.00	118.75	27a59f8d-af5a-42a9-8d13-02b5f866034d	fcee95bb-fcc4-4898-91b0-b49d30d91309	2026-04-18 16:36:30.442+00	2026-04-18 16:36:30.442+00
62a45214-7b2e-4436-8719-e3adb59df633	CACAO SECO	0	Quintales	0.14	0	0	0.14	125.00	17.50	27a59f8d-af5a-42a9-8d13-02b5f866034d	ee3ceb34-e020-4952-8c86-010b33c9de58	2026-04-18 16:36:56.182+00	2026-04-18 16:36:56.182+00
3219a771-10ae-4ee0-9349-7777808d6a4c	CACAO SECO	0	Quintales	0.16	0	0	0.16	110.00	17.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	ac8e1480-812b-4c9e-9e5f-9b91573e7e37	2026-04-18 16:38:42.678+00	2026-04-18 16:38:42.678+00
0650339d-a38c-46b7-9ecd-2d6bb2a6c2ab	CACAO SECO	0	Quintales	0.94	0	0	0.94	130.00	122.19	27a59f8d-af5a-42a9-8d13-02b5f866034d	5b45257c-2f69-420b-858f-bca62a5b785d	2026-04-18 16:39:12.144+00	2026-04-18 16:39:12.144+00
584428f2-2e44-45ff-91eb-c954c15f6394	CACAO SECO	0	Quintales	0.3	0	0	0.3	113.00	33.90	27a59f8d-af5a-42a9-8d13-02b5f866034d	82673a06-e607-4178-9e1c-f89f061dc1f3	2026-04-18 16:39:36.377+00	2026-04-18 16:39:36.377+00
8e0f7024-7cd3-4d26-9303-1d564d9f9bf2	CACAO SECO	0	Quintales	0.06	0	0	0.06	80.00	4.80	27a59f8d-af5a-42a9-8d13-02b5f866034d	ed7748e2-6547-4e34-84a2-6b7ea2faec6c	2026-04-18 16:40:05.957+00	2026-04-18 16:40:05.957+00
587c3ec6-7e51-4bce-973b-296d672b5637	CACAO SECO	0	Quintales	0.09	0	0	0.09	132.00	11.88	27a59f8d-af5a-42a9-8d13-02b5f866034d	f880026c-1808-4d42-8fab-b47cb0822f5e	2026-04-18 16:40:33.847+00	2026-04-18 16:40:33.847+00
d63c0b90-d79e-4380-9435-20d9792b06b8	CACAO SECO	0	Quintales	0.62	0	0	0.62	115.00	71.30	27a59f8d-af5a-42a9-8d13-02b5f866034d	9a462d6c-77bc-480a-aa15-8c4de3497284	2026-04-18 16:41:00.843+00	2026-04-18 16:41:00.843+00
a3cbe270-5b88-4d5c-a417-d4098aefc5c5	CACAO SECO	0	Quintales	0.06	0	0	0.06	125.00	7.50	27a59f8d-af5a-42a9-8d13-02b5f866034d	633033db-dc94-4eef-b96a-52e4edda90fd	2026-04-18 16:41:16.952+00	2026-04-18 16:41:16.952+00
b55ea0aa-9391-4cb4-ab42-b4800a839bec	CACAO SECO	0	Quintales	0.55	0	0	0.55	128.00	70.40	27a59f8d-af5a-42a9-8d13-02b5f866034d	fdcf167b-b29e-40f0-8348-f3a2b41c25ed	2026-04-18 16:41:55.454+00	2026-04-18 16:41:55.454+00
23d72f9a-eba7-48dd-adda-d39b3e8892d8	CACAO SECO	0	Quintales	3.7	0	0	3.7	118.00	436.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	10443cbe-8ece-40ea-bc7b-bba19fb5f68c	2026-04-18 16:42:24.049+00	2026-04-18 16:42:24.049+00
c4751b06-b184-447d-9ed3-2cefa46630ee	CACAO SECO	0	Quintales	0.15	0	0	0.15	100.00	15.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	548f96fe-1a92-4a9a-9e53-6727b6a9e44f	2026-04-18 16:42:49.342+00	2026-04-18 16:42:49.342+00
0aa52a30-d9ae-44fb-8c2f-9b75e13ef784	CACAO SECO	0	Quintales	1.77	0	0	1.77	128.00	226.56	27a59f8d-af5a-42a9-8d13-02b5f866034d	5d8e4307-2675-4c58-a33d-6b3d0e0cb557	2026-04-18 16:43:18.952+00	2026-04-18 16:43:18.952+00
ccc5f37d-37c4-4248-870a-ae464b515da3	CACAO SECO	0	Quintales	0.15	0	0	0.15	125.00	18.75	27a59f8d-af5a-42a9-8d13-02b5f866034d	2869b678-ff7d-46fc-91e2-fdaf54761817	2026-04-18 16:44:01.844+00	2026-04-18 16:44:01.844+00
74083b8a-2caa-4468-9edf-ad2f35caaddb	CACAO SECO	0	Quintales	9.08	0	0	9.08	140.00	1271.20	27a59f8d-af5a-42a9-8d13-02b5f866034d	6a787954-25ef-44cc-bd11-72f07d2a5b31	2026-04-18 16:44:45.442+00	2026-04-18 16:44:45.442+00
27cd6c0c-c2a2-417f-a8d6-08d11fbb046c	CACAO BABA 	71	Quintales	1.51	0	1.07	0.43	130.00	55.90	7a83b1a2-5220-467b-bdcc-0665d572c30d	84f8406d-a951-49bf-a2f2-cc2973ecd9dc	2026-04-18 18:20:23.241+00	2026-04-18 18:20:23.241+00
6db3fbe6-4b07-42b4-b38b-e9002e00b958	CACAO SECO	0	Quintales	0.05	0	0	0.05	120.00	6.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	6a196a2a-54e1-4563-ac5e-4c010a921742	2026-04-18 18:39:31.043+00	2026-04-18 18:39:31.043+00
5627d8c3-9e3f-4444-94bd-fee689e9426c	CACAO BABA 	72	Quintales	0.76	0	0.55	0.21	110.00	23.10	7a83b1a2-5220-467b-bdcc-0665d572c30d	b4a23599-2866-40a5-a02f-5ced779e1cc4	2026-04-18 19:10:24.891+00	2026-04-18 19:10:24.891+00
b0d258f2-cb97-4af2-87fe-b0ed9b8f1520	CACAO BABA 	0	Quintales	0.5	0	0	0.5	19.00	9.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	ec6a3dd4-1882-43b5-906c-1229f1aac3d8	2026-04-20 18:25:58.748+00	2026-04-20 18:25:58.748+00
3753941f-59b7-42df-8e5b-5b3d6383c4a7	CACAO BABA 	0	Quintales	11.1	0	0	11.1	19.00	210.90	7a83b1a2-5220-467b-bdcc-0665d572c30d	cb146e0b-6fdc-4bc5-81b2-66576dc0ba9f	2026-04-20 18:26:21.447+00	2026-04-20 18:26:21.447+00
932f8f67-560d-4ce3-b354-40b0dfcbc7e4	CACAO BABA 	0	Quintales	0.75	0	0	0.75	19.00	14.25	7a83b1a2-5220-467b-bdcc-0665d572c30d	077c94da-c72e-4b45-8547-07b6ca0e7bfe	2026-04-20 18:26:46.09+00	2026-04-20 18:26:46.09+00
944bc580-c33a-4c44-a825-a9872c9e7ff4	CACAO BABA 	0	Tacho	0.49	0	0	0.49	20.00	9.80	7a83b1a2-5220-467b-bdcc-0665d572c30d	f8ef0cd1-3968-4f51-a8ce-bde6194e7e85	2026-04-20 18:27:16.952+00	2026-04-20 18:27:16.952+00
bb971aa5-d6d7-43a2-931e-c437fdda9d60	CACAO SECO	40	Quintales	0.23	0	0.09	0.13	120.00	15.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	29299a2d-1daa-4ea4-9c6e-e35e15eee98e	2026-04-20 18:28:01.047+00	2026-04-20 18:28:01.047+00
d7e1439f-31ff-4dd9-ab23-28bcff52c7d2	CACAO SECO	0	Quintales	0.34	0	0	0.34	110.00	37.40	27a59f8d-af5a-42a9-8d13-02b5f866034d	838d4d03-2adc-4946-b4b1-3c9d0d0de69f	2026-04-20 18:28:27.146+00	2026-04-20 18:28:27.146+00
5f64472d-23dd-4c8e-872c-91f1b2e90c8d	CACAO SECO	0	Quintales	0.21	0	0	0.21	117.00	24.57	27a59f8d-af5a-42a9-8d13-02b5f866034d	7d3ab548-3f06-405c-9354-fc2a1ada48d7	2026-04-20 18:28:54.648+00	2026-04-20 18:28:54.648+00
6fdc1716-5975-454b-920d-2dd81003ab5f	CACAO SECO	0	Quintales	0.09	0	0	0.09	123.00	11.07	27a59f8d-af5a-42a9-8d13-02b5f866034d	9e5f4d44-482a-489d-84c0-974183ba4a8f	2026-04-20 18:29:25.46+00	2026-04-20 18:29:25.46+00
310884ef-85d8-41fe-9b77-50a099f84b56	CACAO SECO	0	Quintales	1.16	0	0	1.16	123.00	142.67	27a59f8d-af5a-42a9-8d13-02b5f866034d	a58c3a78-bc1f-428c-bfb8-1bf34ebb6095	2026-04-20 18:29:51.781+00	2026-04-20 18:29:51.781+00
97ea4d41-e657-44b3-9de7-6221f8813147	CACAO SECO	0	Quintales	0.02	0	0	0.02	120.00	2.40	27a59f8d-af5a-42a9-8d13-02b5f866034d	8f283c32-8456-4bda-a012-2a8ca23c8a0c	2026-04-20 18:30:35.044+00	2026-04-20 18:30:35.044+00
cf7cb381-854b-4ece-ade5-59638d315563	CACAO SECO	0	Quintales	2.67	0	0	2.67	110.00	293.70	27a59f8d-af5a-42a9-8d13-02b5f866034d	c4e1ee5c-96a3-437f-b489-fdbc3302e592	2026-04-20 18:31:06.756+00	2026-04-20 18:31:06.756+00
d56e2c99-a3a1-4fb8-a539-000356e1c6d8	CACAO SECO	0	Quintales	2.19	0	0	2.19	125.00	273.75	27a59f8d-af5a-42a9-8d13-02b5f866034d	aaa2bb63-6f82-4d5f-a444-11caa0eb7b1a	2026-04-20 18:31:31.686+00	2026-04-20 18:31:31.686+00
ad028fcc-00c9-410c-b894-fff97ccc813e	CACAO SECO	0	Quintales	0.03	0	0	0.03	80.00	2.40	27a59f8d-af5a-42a9-8d13-02b5f866034d	88084d5f-78fa-4a7d-b97c-0c6103237e06	2026-04-20 18:32:26.163+00	2026-04-20 18:32:26.163+00
73a98cd5-dd3c-401d-8c1b-32fa508f6727	CACAO SECO	0	Quintales	0.13	0	0	0.13	60.00	7.80	27a59f8d-af5a-42a9-8d13-02b5f866034d	e9baae56-4a3c-4d22-bfaa-fe8e2eac324b	2026-04-20 18:32:46.974+00	2026-04-20 18:32:46.974+00
1cfd3ee3-2c77-45cf-9f71-3c6533187970	CACAO SECO	15	Quintales	0.56	0	0.08	0.47	120.00	56.40	27a59f8d-af5a-42a9-8d13-02b5f866034d	93cd60f0-6173-4813-bba1-9db69ed604d0	2026-04-20 18:53:46.649+00	2026-04-20 18:53:46.649+00
119328f2-5e86-45fc-8844-b3722d0a7d7e	CACAO BABA 	0	Tacho	0.57	0	0	0.57	20.00	11.39	7a83b1a2-5220-467b-bdcc-0665d572c30d	f492a289-02ac-4fbd-a052-475254942c08	2026-04-20 19:37:05.251+00	2026-04-20 19:37:05.251+00
1d741543-4c0a-4b27-affe-71e4115e9f82	CACAO BABA 	0	Tacho	0.75	0	0	0.75	20.00	15.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	abb6dda1-7878-4213-a278-f4741521a8e2	2026-04-20 19:37:33.048+00	2026-04-20 19:37:33.048+00
cc7707bd-6eef-42d2-935d-1ef90907c13b	CACAO BABA 	0	Tacho	0.6	0	0	0.6	18.00	10.80	7a83b1a2-5220-467b-bdcc-0665d572c30d	f72e8890-194e-4bcf-b4aa-d4d622ba969e	2026-04-21 14:32:20.642+00	2026-04-21 14:32:20.642+00
18121f9b-3c7c-4477-b0ef-716b6bbfa1cf	CACAO BABA 	0	Tacho	3	0	0	3	18.00	54.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	19888698-c282-4f42-bc96-26a83904054e	2026-04-21 14:32:44.444+00	2026-04-21 14:32:44.444+00
82dfdf95-b577-4feb-b16f-095e7c2af1a2	CACAO BABA 	0	Tacho	2	0	0	2	18.00	36.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	65638a21-f9bd-4f9d-b865-5063b0d88350	2026-04-21 14:33:07.961+00	2026-04-21 14:33:07.961+00
c5d4b70a-78f7-4b69-ac50-b73a92da3c46	CACAO BABA 	0	Tacho	0.8	0	0	0.8	18.00	14.40	7a83b1a2-5220-467b-bdcc-0665d572c30d	6eb4b6eb-7aaf-4b79-ab9f-8d7badaa6a10	2026-04-21 14:33:51.946+00	2026-04-21 14:33:51.946+00
85492e20-63c7-4177-a4b4-987db315ac12	CACAO SECO	28	Quintales	0.2	0	0.06	0.14	115.00	16.10	27a59f8d-af5a-42a9-8d13-02b5f866034d	4062d69a-e302-42e4-af7c-c2a9ee2304c6	2026-04-21 20:05:24.651+00	2026-04-21 20:05:24.651+00
2a06a9c0-d998-4a5d-82ca-b2200de293cf	CACAO BABA 	72	Quintales	0.04	0	0.03	0.01	115.00	1.15	7a83b1a2-5220-467b-bdcc-0665d572c30d	3f244ee8-955b-4805-ae87-396335d8e5ed	2026-04-21 20:05:50.427+00	2026-04-21 20:05:50.427+00
36afcd66-8a32-4510-90cd-32e12d920479	CACAO SECO	17	Quintales	0.06	0	0.01	0.04	115.00	4.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	d2ac5cac-554f-4fa4-b146-8471735f6305	2026-04-21 21:44:26.349+00	2026-04-21 21:44:26.349+00
dabc5ea7-d99c-4545-8d1c-1c02082b809b	CACAO BABA 	0	Tacho	2.7	0	0	2.7	18.00	48.60	7a83b1a2-5220-467b-bdcc-0665d572c30d	10c420f8-2bd8-44c1-8513-10f87eecbc65	2026-04-22 16:08:24.963+00	2026-04-22 16:08:24.963+00
f0dd2ce1-6a8b-4e73-9903-d331c30b2aa5	CACAO BABA 	0	Tacho	2	0	0	2	18.00	36.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	0c92f7ee-2d4e-4f2a-8a0a-4414c87839c2	2026-04-22 16:08:52.35+00	2026-04-22 16:08:52.35+00
5cf2f4db-2e95-4474-ad0e-8fb446992f5e	CACAO BABA 	0	Tacho	1.8	0	0	1.8	18.00	32.40	7a83b1a2-5220-467b-bdcc-0665d572c30d	2de77b24-081f-407f-afe6-5d41da0c6d08	2026-04-22 16:09:31.666+00	2026-04-22 16:09:31.666+00
3ff5f5e5-bb59-4a9b-a8cd-a505a8407e1a	CACAO BABA 	0	Tacho	0.75	0	0	0.75	18.00	13.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	da169697-72b5-4438-b837-8fca2e12830b	2026-04-22 16:11:04.053+00	2026-04-22 16:11:04.053+00
e18e607c-54f5-4653-b421-f7841722e5de	CACAO BABA 	0	Tacho	4	0	0	4	18.00	72.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	24ef2bf8-6b75-4922-880f-debbd8f28718	2026-04-22 16:11:56.093+00	2026-04-22 16:11:56.093+00
d324fcaf-1a02-4a68-8c10-531a9ddd08cf	CACAO BABA 	0	Tacho	0.9	0	0	0.9	18.00	16.20	7a83b1a2-5220-467b-bdcc-0665d572c30d	ba173e4d-c398-466b-802d-4fba343932ab	2026-04-22 16:12:33.957+00	2026-04-22 16:12:33.957+00
b4263883-2fc5-42fb-9224-b45599a991d7	CACAO SECO	0	Quintales	2.87	0	0	2.87	125.00	358.75	27a59f8d-af5a-42a9-8d13-02b5f866034d	9182a162-697c-4d3d-80d5-df70b1d4cf5b	2026-04-22 16:19:43.887+00	2026-04-22 16:19:43.887+00
9b0a729a-2d2b-4b5f-9967-0c537d32a07e	CACAO SECO	0	Quintales	0.88	0	0	0.88	110.00	96.80	27a59f8d-af5a-42a9-8d13-02b5f866034d	51004751-0c13-4d1f-a48b-6683056dc52c	2026-04-22 16:20:08.998+00	2026-04-22 16:20:08.998+00
1d8c00c8-b58c-4ec7-87cf-acf4ef9fbb69	CACAO SECO	0	Quintales	0.29	0	0	0.29	105.00	30.45	27a59f8d-af5a-42a9-8d13-02b5f866034d	741b65b5-c114-4af6-8f4a-22a9f642ce87	2026-04-22 16:20:42.855+00	2026-04-22 16:20:42.855+00
f5eae8bc-65cc-4b52-9117-df3289917a11	CACAO SECO	0	Quintales	0.52	0	0	0.52	93.00	48.36	27a59f8d-af5a-42a9-8d13-02b5f866034d	23fb2688-8864-40ec-af64-3a514d25ee9f	2026-04-22 16:21:10.348+00	2026-04-22 16:21:10.348+00
c2689219-2dc7-4da8-9029-cf036225d66a	CACAO SECO	0	Quintales	1.96	0	0	1.96	98.00	192.08	27a59f8d-af5a-42a9-8d13-02b5f866034d	c70fdb82-e86e-45de-b502-40762904ff96	2026-04-22 16:22:11.667+00	2026-04-22 16:22:11.667+00
07b43717-bf42-452d-b6b6-4a200843f134	CACAO SECO	0	Quintales	0.14	0	0	0.14	123.00	17.22	27a59f8d-af5a-42a9-8d13-02b5f866034d	92207935-fe77-4e60-ad07-69a1e6cb5088	2026-04-22 16:22:37.154+00	2026-04-22 16:22:37.154+00
0e9539cb-d59c-4ff3-a7c8-453f078f8ce9	CACAO SECO	0	Quintales	1.33	0	0	1.33	120.00	159.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	4ad33dd9-5416-4923-9f8a-752185d65d8a	2026-04-22 16:23:09.648+00	2026-04-22 16:23:09.648+00
c1ce8050-bc28-4ef6-b950-d385528d30f1	CACAO SECO	0	Quintales	0.76	0	0	0.76	108.00	82.08	27a59f8d-af5a-42a9-8d13-02b5f866034d	01a96358-40e6-4495-9bf9-152614b63b24	2026-04-22 16:23:45.557+00	2026-04-22 16:23:45.557+00
72d4dd76-b623-4fa5-9c04-2f0944d77dbd	CACAO SECO	0	Quintales	0.11	0	0	0.11	100.00	11.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	3073efcb-b310-4754-83ba-f62b758af0b7	2026-04-22 16:24:17.144+00	2026-04-22 16:24:17.144+00
f2a74821-0ccf-4a86-9569-da696a98ba77	CACAO SECO	0	Quintales	1.07	0	0	1.07	117.00	125.19	27a59f8d-af5a-42a9-8d13-02b5f866034d	6b1c55fb-3348-4d46-baca-cf413f7d59a8	2026-04-22 16:24:43.57+00	2026-04-22 16:24:43.57+00
996416a5-ba80-4c4e-ad14-073b36a81ae3	CACAO BABA 	0	Tacho	1.15	0	0	1.15	20.00	23.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	41d36de8-c883-4cf2-9afc-c0c92f46d987	2026-04-22 16:25:10.247+00	2026-04-22 16:25:10.247+00
fb5f7130-b10d-43d2-9735-71b3920696a5	CACAO BABA 	0	Tacho	0.54	0	0	0.54	20.00	10.80	7a83b1a2-5220-467b-bdcc-0665d572c30d	3c21d9a9-711b-449e-b8ba-2122acb13a7a	2026-04-22 18:52:10.246+00	2026-04-22 18:52:10.246+00
0064c7a4-d101-4c48-825d-ad71fe0c8c06	CACAO BABA 	0	Tacho	0.9	0	0	0.9	20.00	18.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	75ff738d-e8fb-466d-9147-9c38d8a3dd4a	2026-04-22 22:13:58.104+00	2026-04-22 22:13:58.104+00
acd967ce-c9b5-4d8d-985a-f9bcc259af39	CACAO BABA 	0	Tacho	7.65	0	0	7.65	20.00	153.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	a83ffaa1-1ad0-41d6-a515-3e11b8a1cf68	2026-04-23 16:14:37.847+00	2026-04-23 16:14:37.847+00
d338ce10-dec7-4f76-9bb4-9671da408381	CACAO BABA 	0	Tacho	1.24	0	0	1.24	20.00	24.80	7a83b1a2-5220-467b-bdcc-0665d572c30d	29135cb7-eae5-4b68-9605-db3db12f8e1a	2026-04-23 16:19:47.05+00	2026-04-23 16:19:47.05+00
fa06f99e-4e4c-4559-b0ae-0c566b27eaeb	CACAO SECO	10	Quintales	0.07	0	0.01	0.06	120.00	7.19	27a59f8d-af5a-42a9-8d13-02b5f866034d	41f5865e-1f22-4b88-86d4-e73b1895e666	2026-04-23 16:20:59.245+00	2026-04-23 16:20:59.245+00
f8b10692-a6d1-4a72-859d-4bfa73e37fb5	CACAO SECO	0	Quintales	0.62	0	0	0.62	102.00	63.24	27a59f8d-af5a-42a9-8d13-02b5f866034d	8f1b7c8c-7a0c-428b-8453-172372ceb04c	2026-04-23 19:19:04.049+00	2026-04-23 19:19:04.049+00
38770d88-9fb3-4b42-bf31-91b273cd8c4d	CACAO BABA 	72	Quintales	2.51	0	1.81	0.7	125.00	87.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	41cd734a-127f-43c3-9c76-9b5b320ad2a8	2026-04-23 19:19:57.777+00	2026-04-23 19:19:57.777+00
13c2a975-3546-48ce-9094-9f66b01776f1	CACAO BABA 	72	Quintales	2.58	0	1.86	0.72	125.00	90.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	9d28c3af-36ad-4e2c-80ec-68f0bfda7d52	2026-04-23 19:20:35.466+00	2026-04-23 19:20:35.466+00
aa1686c5-8feb-487e-8e91-85b84ce8ffee	MARACUYA	2	Kilogramos	217.73	0	4.35	213	0.35	74.55	8ae27e50-3a7d-469e-88ca-137b2882b33c	cf098947-1f6e-4c98-a7d6-ada331c0b22c	2026-04-23 19:21:09.982+00	2026-04-23 19:21:09.982+00
f073af96-097b-4ac1-a4bf-42e442507e50	CACAO BABA 	0	Tacho	0.49	0	0	0.49	20.00	9.80	7a83b1a2-5220-467b-bdcc-0665d572c30d	65e19210-8f3b-45ee-a61a-8caf7e9e4299	2026-04-23 22:07:43.662+00	2026-04-23 22:07:43.662+00
2c26eca3-a405-4269-81e0-711c52b85599	CACAO BABA 	0	Tacho	0.36	0	0	0.36	19.00	6.84	7a83b1a2-5220-467b-bdcc-0665d572c30d	f8d85c75-07cd-40e8-9a0f-896c6c3adce1	2026-04-24 16:11:46.14+00	2026-04-24 16:11:46.14+00
416fcec6-0bed-4649-af3e-14cf76427505	CACAO BABA 	0	Tacho	0.65	0	0	0.65	20.00	13.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	4f44eeac-3703-4f4e-b578-090da867f6cc	2026-04-24 16:12:24.757+00	2026-04-24 16:12:24.757+00
6bac63e7-9ba6-4f6a-a271-a6e062220235	CACAO BABA 	0	Tacho	1	0	0	1	20.00	20.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	518c02f2-738f-440f-a3e8-ef4973d45af6	2026-04-24 16:12:49.94+00	2026-04-24 16:12:49.94+00
5b404f8c-942a-4ca1-8524-fedb121fc4b1	CACAO SECO	5	Quintales	0.1	0	0.01	0.09	120.00	10.80	27a59f8d-af5a-42a9-8d13-02b5f866034d	607a7eae-5530-4ead-8ac2-9e3d7693bf86	2026-04-24 16:13:52.271+00	2026-04-24 16:13:52.271+00
63722cb0-7c6f-45bc-b626-2876bef15968	CACAO SECO	0	Quintales	1.4	0	0	1.4	120.00	168.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	e2eb8312-c8e4-43f9-a19d-a0a1f8bf77b5	2026-04-24 16:14:27.746+00	2026-04-24 16:14:27.746+00
a6b8c954-bc20-46b6-835f-76611b37e875	CACAO SECO	0	Quintales	2.38	0	0	2.38	108.00	257.03	27a59f8d-af5a-42a9-8d13-02b5f866034d	4c122956-9835-479b-b840-53b9ba744a8a	2026-04-24 16:14:54.747+00	2026-04-24 16:14:54.747+00
ad00527b-4762-400c-bb42-adb92162d0a3	CACAO SECO	0	Quintales	1.42	0	0	1.42	80.00	113.60	27a59f8d-af5a-42a9-8d13-02b5f866034d	994992f1-a279-495f-8cd9-d30d7a5ecaa1	2026-04-24 16:15:40.053+00	2026-04-24 16:15:40.053+00
903d8373-d44c-43ef-8db9-c67ec71b7943	MARACUYA	3	Kilogramos	109.55	0	3.29	106	0.42	44.52	8ae27e50-3a7d-469e-88ca-137b2882b33c	c3de2cff-05d9-40f9-919a-d4ef73c97adb	2026-04-24 16:16:14.644+00	2026-04-24 16:16:14.644+00
53c2e442-47e6-4fa4-bbc1-72c52ec1855a	MARACUYA	3	Kilogramos	73.18	0	2.2	70	0.42	29.40	8ae27e50-3a7d-469e-88ca-137b2882b33c	48bfd55a-d6dc-48af-9152-e5108edd2310	2026-04-24 16:16:39.748+00	2026-04-24 16:16:39.748+00
ddba3e50-6e7d-4947-af67-9a3adbdbd46b	MARACUYA	2	Kilogramos	44.55	0	0.89	43	0.42	18.05	8ae27e50-3a7d-469e-88ca-137b2882b33c	5184eb37-cc60-40f9-8b16-240a013fe17a	2026-04-24 16:18:14.741+00	2026-04-24 16:18:14.741+00
83961bf9-0303-400c-9422-3e33994bb2a2	CACAO BABA 	72	Quintales	0.19	0	0.14	0.05	120.00	6.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	68d0931d-f383-4c7c-bcbe-4b574dc57a65	2026-04-24 16:46:26.851+00	2026-04-24 16:46:26.851+00
80c19b03-142b-490c-aa42-e3b1398aedb2	CACAO BABA 	69	Quintales	0.56	0	0.39	0.17	120.00	20.40	7a83b1a2-5220-467b-bdcc-0665d572c30d	749a8d09-7bfa-4c9d-9534-b61de4abcc0d	2026-04-24 17:38:36.243+00	2026-04-24 17:38:36.243+00
12c20afd-4179-4a8c-9cc6-29865afeae42	CACAO BABA 	72	Quintales	1.8	0	1.3	0.5	125.00	62.50	7a83b1a2-5220-467b-bdcc-0665d572c30d	dff66696-2db6-4bbd-86af-372fbcfeb6fc	2026-04-24 17:39:44.302+00	2026-04-24 17:39:44.302+00
8ee67e88-ae11-4f76-8858-768efca1bff4	CACAO BABA 	71	Quintales	0.42	0	0.3	0.12	120.00	14.39	7a83b1a2-5220-467b-bdcc-0665d572c30d	9b195358-10f7-4fbd-985a-7c6d2ab8ce56	2026-04-24 18:52:44.343+00	2026-04-24 18:52:44.343+00
681de8cb-df0f-4a56-b73e-0cb22f961901	CACAO SECO	0	Quintales	0.02	0	0	0.02	100.00	2.00	27a59f8d-af5a-42a9-8d13-02b5f866034d	a35899d7-f388-4150-a913-ca1cf4da3b5c	2026-04-24 19:30:48.239+00	2026-04-24 19:30:48.239+00
fae886f3-603d-4b16-b505-e58b17e57939	CACAO BABA 	0	Tacho	1.6	0	0	1.6	20.00	32.00	7a83b1a2-5220-467b-bdcc-0665d572c30d	a655643f-b65a-4419-97d3-b82ff0177bc3	2026-04-24 21:16:07.036+00	2026-04-24 21:16:07.036+00
\.


--
-- Data for Name: Empresa; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Empresa" (id, nombre, ruc, telefono, direccion, correo) FROM stdin;
052c01fc-ab3e-46a9-ae8e-cdd5652b2fef	AROMA DE ORO	1311248940001	0967148226	Av. MANABI 	crisrodam1996@gmail.com
\.


--
-- Data for Name: Gastos; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Gastos" (id, codigo, monto, descripcion, categoria, fecha, "CajaId", "UsuarioId", "createdAt", "updatedAt") FROM stdin;
bc7ccf31-3f85-450f-833b-fe7436e2d166	GAS-0000001	54.00	POLLOS	Alimentación	2026-03-30 18:18:43.383+00	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-30 18:18:43.383+00	2026-03-30 18:18:43.383+00
1e8149d9-9709-436c-bcc5-25f93c54c7e8	GAS-0000002	10.50	ALMUERZOS 	Alimentación	2026-03-30 18:20:40.204+00	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-30 18:20:40.204+00	2026-03-30 18:20:40.204+00
48c82c47-2729-4ad1-aa8b-b2d306f3e56e	GAS-0000003	7.00	COMIDA COLORADO 	Alimentación	2026-03-30 18:21:02.087+00	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-30 18:21:02.087+00	2026-03-30 18:21:02.087+00
598b018f-28e1-4329-b250-2b8b6f69fe8c	GAS-0000004	6.90	PERNOS 	Repuestos	2026-03-30 18:27:10.546+00	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-30 18:27:10.546+00	2026-03-30 18:27:10.546+00
5cf0e3a5-1935-43fb-9600-40d421033db8	GAS-0000005	2.50	COMIDA HULK 	Alimentación	2026-03-30 19:47:35.278+00	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-30 19:47:35.278+00	2026-03-30 19:47:35.278+00
4103dbe4-440d-458e-9da3-3fd3f92b2cce	GAS-0000006	7.00	COMIDA COLORADO	Alimentación	2026-03-31 16:24:09.796+00	b50721c2-08e2-463a-a0f0-0041ac5707ad	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-31 16:24:09.796+00	2026-03-31 16:24:09.796+00
713d24d4-b794-413d-9ce4-da5a1bff40f7	GAS-0000007	25.00	ARREGLOS DE BICICLETAS	Mantenimiento	2026-03-31 20:48:48.13+00	b50721c2-08e2-463a-a0f0-0041ac5707ad	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-31 20:48:48.13+00	2026-03-31 20:48:48.13+00
4b41164f-7f7a-4a63-b364-be5a7b12ba50	GAS-0000008	16.30	MEDICINA 	Suministros	2026-03-31 20:49:11.608+00	b50721c2-08e2-463a-a0f0-0041ac5707ad	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-31 20:49:11.608+00	2026-03-31 20:49:11.608+00
0394a1fa-2ce9-4166-b889-81ee6db36ba0	GAS-0000009	1.00	PRESTADO A JORDAN 	Varios	2026-03-31 22:00:01.28+00	b50721c2-08e2-463a-a0f0-0041ac5707ad	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-31 22:00:01.28+00	2026-03-31 22:00:01.28+00
668def2c-ca06-43d1-a1dc-3bb187a2834a	GAS-0000010	135.00	GASTOS MEDICOS 	Varios	2026-03-31 22:46:38.23+00	b50721c2-08e2-463a-a0f0-0041ac5707ad	436e223e-918f-4b80-b807-69d1ab32a934	2026-03-31 22:46:38.231+00	2026-03-31 22:46:38.231+00
844cbda0-4bc3-4476-a6c4-468fff2da534	GAS-0000011	20.00	COMBUSTIBLE	Combustible	2026-04-01 15:58:46.615+00	79f0219a-73de-442f-8648-9e177a159ff9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-01 15:58:46.616+00	2026-04-01 15:58:46.616+00
0ed3c78a-ac40-4731-893f-1174c68778d0	GAS-0000012	13.00	MARQUITOS 	Varios	2026-04-01 15:59:03.136+00	79f0219a-73de-442f-8648-9e177a159ff9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-01 15:59:03.136+00	2026-04-01 15:59:03.136+00
0548212f-ff2c-4499-b1b2-2e792e916ea9	GAS-0000013	6.00	GASTOS COLORADO COMIDA 	Alimentación	2026-04-01 15:59:41.476+00	79f0219a-73de-442f-8648-9e177a159ff9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-01 15:59:41.476+00	2026-04-01 15:59:41.476+00
aa1e3ea5-4962-430e-8612-1f989efa1bbe	GAS-0000014	32.00	GASTOS COLORADO COMBUSTIBLE 	Combustible	2026-04-01 16:00:00.51+00	79f0219a-73de-442f-8648-9e177a159ff9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-01 16:00:00.51+00	2026-04-01 16:00:00.51+00
7d66679f-ba08-447b-afe0-816fcac8c3d5	GAS-0000015	35.00	GASTOS STEVEN 	Varios	2026-04-01 18:56:59.629+00	79f0219a-73de-442f-8648-9e177a159ff9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-01 18:56:59.63+00	2026-04-01 18:56:59.63+00
82f79d9d-154a-45ae-9012-e65e69b24897	GAS-0000016	12.00	ALMUERZOS	Alimentación	2026-04-01 18:57:13.183+00	79f0219a-73de-442f-8648-9e177a159ff9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-01 18:57:13.183+00	2026-04-01 18:57:13.183+00
86e82a13-c937-42f9-a09d-a55cd986379f	GAS-0000017	9.25	DISCOS 	Repuestos	2026-04-01 18:57:41.827+00	79f0219a-73de-442f-8648-9e177a159ff9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-01 18:57:41.827+00	2026-04-01 18:57:41.827+00
b23d9bf3-052e-42e4-8939-ce5ae740bb23	GAS-0000018	2.50	HULK  COMIDA 	Alimentación	2026-04-01 19:12:15.072+00	79f0219a-73de-442f-8648-9e177a159ff9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-01 19:12:15.072+00	2026-04-01 19:12:15.072+00
eb992a45-dd44-4d7e-ae93-fe31e87d0892	GAS-0000019	3.00	KAROL 	Varios	2026-04-01 20:14:20.493+00	79f0219a-73de-442f-8648-9e177a159ff9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-01 20:14:20.493+00	2026-04-01 20:14:20.493+00
e5b23be1-afac-4608-a5a7-f80dd8769100	GAS-0000020	122.00	CAMBIO DE ACEITE	Mantenimiento	2026-04-01 22:19:11.219+00	79f0219a-73de-442f-8648-9e177a159ff9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-01 22:19:11.22+00	2026-04-01 22:19:11.22+00
f82f2a61-9841-4611-b8bb-d25be97a5220	GAS-0000021	15.00	PINTORES	Varios	2026-04-02 16:11:06.106+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 16:11:06.107+00	2026-04-02 16:11:06.107+00
01a18738-2229-4eac-adbd-a29498b4b80f	GAS-0000022	16.00	COMBUSTIBLE	Combustible	2026-04-02 16:11:21.004+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 16:11:21.004+00	2026-04-02 16:11:21.004+00
ecfc5c94-d23e-4668-84a2-bacd53b09c98	GAS-0000023	100.00	STEVEN	Varios	2026-04-02 16:11:31.989+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 16:11:31.989+00	2026-04-02 16:11:31.989+00
ad956756-84cd-45aa-8ee4-265f2bcf43dc	GAS-0000024	6.45	TUBOS	Repuestos	2026-04-02 16:11:52.033+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 16:11:52.033+00	2026-04-02 16:11:52.033+00
4e3945e6-e561-42f1-8ebe-41a3793b9d39	GAS-0000025	24.00	PESCADO Y LANGOSTINOS	Alimentación	2026-04-02 16:12:07.806+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 16:12:07.806+00	2026-04-02 16:12:07.806+00
9ead6117-edfa-48db-a92d-1e25f2f9eb45	GAS-0000026	2.50	ACHIOTE	Alimentación	2026-04-02 16:12:24.239+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 16:12:24.239+00	2026-04-02 16:12:24.239+00
1f61b035-c599-4e9f-9ec3-3f8e0b46c4aa	GAS-0000027	1.00	AJO COMIDA	Alimentación	2026-04-02 16:12:44.446+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 16:12:44.446+00	2026-04-02 16:12:44.446+00
18c2c2b2-dc8a-4543-870e-355fc77c1954	GAS-0000028	2.50	COMIDA PARA HULK	Alimentación	2026-04-02 18:52:26.128+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 18:52:26.129+00	2026-04-02 18:52:26.129+00
6fb1cc58-542a-4e49-8045-b40f049887fa	GAS-0000029	20.95	HAMACAS	Varios	2026-04-02 19:43:11.53+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 19:43:11.53+00	2026-04-02 19:43:11.53+00
8cdcb620-2502-46e9-ad99-43931c62363e	GAS-0000030	37.90	CEMENTO 	Varios	2026-04-02 20:10:34.602+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 20:10:34.606+00	2026-04-02 20:10:34.606+00
a0da0a5b-2e80-4cc1-91f7-aef4c091c93c	GAS-0000031	500.00	MAESTRO SOLDADOR JUEVES 2 DE ABRIL 	Mantenimiento	2026-04-02 21:31:32.84+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 21:31:32.84+00	2026-04-02 21:31:32.84+00
a2dc985d-1a0a-4950-8cfc-85451677103c	GAS-0000032	0.50	SHAMPOO	Suministros	2026-04-02 22:07:23.473+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 22:07:23.474+00	2026-04-02 22:07:23.474+00
5d19e169-8bb4-4016-9ccc-ad3610ec79e8	GAS-0000033	20.00	PRESTAMO A DON JIMMY PIDIO JUEVES	Varios	2026-04-02 22:24:12.704+00	0028889b-9d19-4401-8da9-fbdb75385cb4	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-02 22:24:12.704+00	2026-04-02 22:24:12.704+00
ce881e1b-6f57-4182-b991-299d0a5f3aa3	GAS-0000034	2.00	COMPRA DE CABO 	Suministros	2026-04-04 13:10:27.409+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 13:10:27.409+00	2026-04-04 13:10:27.409+00
c3ad85de-1a1d-45ac-bb92-5214d4dc6bb8	GAS-0000035	100.00	STEVEN 	Varios	2026-04-04 13:10:41.081+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 13:10:41.081+00	2026-04-04 13:10:41.081+00
56de8c32-749a-4276-8c7a-6caacdd571e7	GAS-0000036	3.00	DESAYUNO	Alimentación	2026-04-04 17:39:19.188+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 17:39:19.188+00	2026-04-04 17:39:19.188+00
7b7a314c-9629-4a1c-9834-c29c32b1639f	GAS-0000037	10.75	LEGUMBRES	Alimentación	2026-04-04 17:39:34.441+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 17:39:34.441+00	2026-04-04 17:39:34.441+00
867fd12b-0877-4039-96d4-65c798a5681c	GAS-0000038	2.50	CREMA DE ALESSA	Suministros	2026-04-04 17:39:52.609+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 17:39:52.609+00	2026-04-04 17:39:52.609+00
066cf44e-3235-42e9-8ec9-fa1ed6fab8c9	GAS-0000039	0.50	MANTECA	Alimentación	2026-04-04 17:40:08.191+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 17:40:08.191+00	2026-04-04 17:40:08.191+00
ff522fe2-c9a2-4f5b-ac4d-7e2e71bce01c	GAS-0000040	15.00	CARBON Y MANI 	Suministros	2026-04-04 18:16:22.264+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 18:16:22.264+00	2026-04-04 18:16:22.264+00
95d5799e-2236-4be1-b280-a0bac55db339	GAS-0000041	2.00	MANDADITO	Varios	2026-04-04 18:31:16.755+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 18:31:16.755+00	2026-04-04 18:31:16.755+00
c6366b38-214f-4567-8114-518532b7d503	GAS-0000042	5.00	COMBUSTIBLE	Combustible	2026-04-04 20:55:41.304+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 20:55:41.305+00	2026-04-04 20:55:41.305+00
4f200e16-538c-45e6-9773-5c2380614941	GAS-0000043	54.60	FERRETERIA 	Repuestos	2026-04-04 20:56:16.429+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 20:56:16.429+00	2026-04-04 20:56:16.429+00
cabb493f-1eb5-4ea0-86c3-0ddd56d04181	GAS-0000044	2.50	HULK COMIDA	Alimentación	2026-04-04 21:14:50.03+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 21:14:50.03+00	2026-04-04 21:14:50.03+00
655cf89a-4088-4080-afd0-0bf76dd705d4	GAS-0000045	40.00	CAMARAS 	Mantenimiento	2026-04-04 21:32:20.493+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 21:32:20.493+00	2026-04-04 21:32:20.493+00
ba7768a0-a4a5-414c-919c-a575ef68fff4	GAS-0000046	7.00	EMPASTADOS 	Alimentación	2026-04-04 21:34:47.154+00	75af6626-362e-4bc6-8947-8b7f39d0cc6b	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-04 21:34:47.154+00	2026-04-04 21:34:47.154+00
84e92835-b015-436b-af7c-87262a4c0204	GAS-0000047	80.00	PAGO DE LA SEMANA MILTON 	Varios	2026-04-06 16:10:52.399+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 16:10:52.399+00	2026-04-06 16:10:52.399+00
a1db2cee-f8ec-41c2-884c-c4b00ba45537	GAS-0000048	80.00	PAGO DE LA SEMANA JORDAN 	Varios	2026-04-06 16:11:14.095+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 16:11:14.095+00	2026-04-06 16:11:14.095+00
ff237387-5410-4ea0-af73-573207216a5b	GAS-0000049	2.00	MANDADITO	Varios	2026-04-06 18:32:58.703+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 18:32:58.703+00	2026-04-06 18:32:58.703+00
e5573ef8-0b69-484a-a2c1-42517bcfe6a4	GAS-0000050	35.00	ANTONIO MAESTRO 	Varios	2026-04-06 18:33:17.883+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 18:33:17.883+00	2026-04-06 18:33:17.883+00
1edfb766-b784-47af-82c0-a052b468f7aa	GAS-0000051	17.00	LIQUIDO , MANGUERA	Repuestos	2026-04-06 18:33:41.817+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 18:33:41.817+00	2026-04-06 18:33:41.817+00
9437a3dd-6e2b-4694-b37c-c2c7588d83ac	GAS-0000052	72.60	SHAMPOO, PAÑALES PARA ALESSA 	Suministros	2026-04-06 18:34:04.136+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 18:34:04.137+00	2026-04-06 18:34:04.137+00
e3499a03-de1c-4c03-9167-5590196213d4	GAS-0000053	18.00	ALQUILER DE SILLAS Y MESA 	Varios	2026-04-06 18:34:23.913+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 18:34:23.914+00	2026-04-06 18:34:23.914+00
09e7753f-6dd8-4f46-a3d9-5e618c968be6	GAS-0000054	70.00	COMPRA DE PULIDORA	Repuestos	2026-04-06 18:34:43.81+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 18:34:43.81+00	2026-04-06 18:34:43.81+00
588cbc46-5c9c-4c1e-afb4-567466b65baf	GAS-0000055	8.00	ALMUERZOS 	Alimentación	2026-04-06 18:35:22.857+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 18:35:22.857+00	2026-04-06 18:35:22.857+00
de719a01-9ad3-4e54-9e43-6311eded7e00	GAS-0000056	8.00	COLAS \n	Varios	2026-04-06 22:16:32.2+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 22:16:32.2+00	2026-04-06 22:16:32.2+00
1279d767-9a69-4bba-add2-25c04f87b236	GAS-0000057	3.00	MARQUITOS\n	Varios	2026-04-06 22:28:26.585+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-06 22:28:26.585+00	2026-04-06 22:28:26.585+00
b57f7e90-e624-448d-9712-18cec54a8d8d	GAS-0000058	60.00	BOMBA 	Varios	2026-04-07 13:14:47.387+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 13:14:47.387+00	2026-04-07 13:14:47.387+00
36f7d091-9f75-47dd-be6c-82507d27c062	GAS-0000059	9606.40	TRANSFERENCIA O CHEQUE DE VENTA DE CACAO A GILER 	Varios	2026-04-07 19:25:38.966+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 19:25:38.967+00	2026-04-07 19:25:38.967+00
6a53a210-7dea-4667-8473-7cb151ebceb2	GAS-0000060	3.00	JORDAN 	Varios	2026-04-07 19:27:31.573+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 19:27:31.573+00	2026-04-07 19:27:31.573+00
c26333b0-619e-44c0-a233-ce8e0c109574	GAS-0000061	3.50	POSTRE DULSAN	Varios	2026-04-07 19:27:51.577+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 19:27:51.577+00	2026-04-07 19:27:51.577+00
a3b29e50-f3ca-44c5-a195-fcd0a98059b7	GAS-0000062	15.00	ALMOHADAS	Varios	2026-04-07 19:28:08.54+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 19:28:08.54+00	2026-04-07 19:28:08.54+00
dad7a297-435f-4d60-a149-7c5cb471c372	GAS-0000063	5.00	LEGUMBRES 	Varios	2026-04-07 19:28:21.375+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 19:28:21.375+00	2026-04-07 19:28:21.375+00
512bb3f6-a54c-4a21-a047-1a0df6e05283	GAS-0000064	1.00	BOTELLON DE AGUA	Varios	2026-04-07 19:28:31.795+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 19:28:31.795+00	2026-04-07 19:28:31.795+00
3ca0ea06-adea-4ce2-8f6d-25395fa2e58d	GAS-0000065	25.00	TANQUERO	Varios	2026-04-07 19:28:49.968+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 19:28:49.968+00	2026-04-07 19:28:49.968+00
d44bf65f-0541-4a02-bd5d-6416227a96e6	GAS-0000066	3.00	GASTO EN JARRA 	Varios	2026-04-07 21:42:09.355+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 21:42:09.356+00	2026-04-07 21:42:09.356+00
a05ba706-e693-4023-9abf-d78b9381edb0	GAS-0000067	11.50	TORTA JOSE 	Cumpleaños	2026-04-07 21:42:31.021+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 21:42:31.021+00	2026-04-07 21:42:31.021+00
1eaac37a-9c8c-4c11-b8ac-76d683c384dd	GAS-0000068	13.00	KAROL PAGO 	Varios	2026-04-07 22:48:17.547+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 22:48:17.548+00	2026-04-07 22:48:17.548+00
78215e6e-7740-4773-8427-d8b726bf5e66	GAS-0000069	17.80	COMBUSTIBLE COLORADO	Combustible	2026-04-07 22:50:07.052+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 22:50:07.052+00	2026-04-07 22:50:07.052+00
d4811a6a-3edc-4cad-9b85-4f69557bb712	GAS-0000070	6.00	COMIDA COLORADO 	Alimentación	2026-04-07 22:50:19.857+00	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-07 22:50:19.857+00	2026-04-07 22:50:19.857+00
12929f8b-86b4-4241-b55b-9d3b37b25917	GAS-0000071	5.60	AGUA BOTELLONES	Suministros	2026-04-08 16:36:13.296+00	656242f8-2fbc-46f8-84df-0e8598c1f019	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-08 16:36:13.296+00	2026-04-08 16:36:13.296+00
3934dfec-16af-487b-9e90-66e90d7c41db	GAS-0000072	8.00	ZAPATOS PARA JOSE 	Varios	2026-04-08 16:37:33.244+00	656242f8-2fbc-46f8-84df-0e8598c1f019	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-08 16:37:33.244+00	2026-04-08 16:37:33.244+00
3fbbe74f-13bc-4e18-ae87-dd7cb6fd85ba	GAS-0000073	7.50	HERRAMIENTAS 	Repuestos	2026-04-08 16:38:04.623+00	656242f8-2fbc-46f8-84df-0e8598c1f019	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-08 16:38:04.623+00	2026-04-08 16:38:04.623+00
17f6aa9f-8619-4271-91a6-42aa32fe0219	GAS-0000074	75.00	GALLINAS 	Alimentación	2026-04-08 16:38:37.483+00	656242f8-2fbc-46f8-84df-0e8598c1f019	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-08 16:38:37.483+00	2026-04-08 16:38:37.483+00
cf7e53f0-d6ea-42c7-8bdd-fec6f952099a	GAS-0000075	6.00	COMIDA COLORADO 	Alimentación	2026-04-08 16:39:18.214+00	656242f8-2fbc-46f8-84df-0e8598c1f019	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-08 16:39:18.214+00	2026-04-08 16:39:18.214+00
f462b99d-81db-44a8-af50-79aaa10334b7	GAS-0000076	17.30	VERDURAS, ATUNES 	Varios	2026-04-08 16:40:44.407+00	656242f8-2fbc-46f8-84df-0e8598c1f019	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-08 16:40:44.407+00	2026-04-08 16:40:44.407+00
7a3a312d-a2f3-4c55-8b10-57f425eb4652	GAS-0000077	6.00	TARRINAS	Suministros	2026-04-08 20:36:50.545+00	656242f8-2fbc-46f8-84df-0e8598c1f019	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-08 20:36:50.545+00	2026-04-08 20:36:50.545+00
a533c43e-dcac-4f3f-bc3a-ed62731e6f49	GAS-0000078	1.00	ALMUERZO	Alimentación	2026-04-08 20:37:07.246+00	656242f8-2fbc-46f8-84df-0e8598c1f019	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-08 20:37:07.246+00	2026-04-08 20:37:07.246+00
8bad375a-5afb-41f6-b64a-057eaeb3d19a	GAS-0000079	2.50	COMIDA HULK	Alimentación	2026-04-08 20:37:22.849+00	656242f8-2fbc-46f8-84df-0e8598c1f019	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-08 20:37:22.849+00	2026-04-08 20:37:22.849+00
ff0af373-1c72-4495-aa2b-0ebfca5b2378	GAS-0000080	1.00	PERNOS	Repuestos	2026-04-08 20:37:38.73+00	656242f8-2fbc-46f8-84df-0e8598c1f019	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-08 20:37:38.73+00	2026-04-08 20:37:38.73+00
e4161468-a483-46f7-b538-4d1d7e01ac02	GAS-0000081	3.00	PIDIO JORDAN EL JUEVES 9	Varios	2026-04-09 19:20:09.89+00	15b9a287-e977-4374-9c81-58d01bc780bb	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-09 19:20:09.89+00	2026-04-09 19:20:09.89+00
d5154570-745f-4804-a148-d283222555b5	GAS-0000082	5.00	COMBUSTIBLE	Combustible	2026-04-09 19:20:26.455+00	15b9a287-e977-4374-9c81-58d01bc780bb	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-09 19:20:26.455+00	2026-04-09 19:20:26.455+00
8a9bb9ba-6acf-43cf-922a-081aeae56fc5	GAS-0000083	6.00	COMIDA COLORADO	Alimentación	2026-04-09 19:20:42.24+00	15b9a287-e977-4374-9c81-58d01bc780bb	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-09 19:20:42.24+00	2026-04-09 19:20:42.24+00
5bba1b81-c281-412d-939c-6071a5f41437	GAS-0000084	8.00	ALMUERZOS	Alimentación	2026-04-09 19:20:55.184+00	15b9a287-e977-4374-9c81-58d01bc780bb	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-09 19:20:55.184+00	2026-04-09 19:20:55.184+00
ff2bfb0c-ab7a-4a90-a02d-2d527ef48aad	GAS-0000085	2.50	COMIDA HULK 	Alimentación	2026-04-09 19:21:10.548+00	15b9a287-e977-4374-9c81-58d01bc780bb	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-09 19:21:10.548+00	2026-04-09 19:21:10.548+00
e090fa26-51c0-47aa-825d-159df06b29dd	GAS-0000086	150.00	EXAMENES STEVEN 	Varios	2026-04-09 19:21:26.014+00	15b9a287-e977-4374-9c81-58d01bc780bb	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-09 19:21:26.014+00	2026-04-09 19:21:26.014+00
173c61ed-b059-4fe5-8853-ad399095c298	GAS-0000087	3.00	QUESO DE LECHE	Alimentación	2026-04-09 21:54:17.408+00	15b9a287-e977-4374-9c81-58d01bc780bb	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-09 21:54:17.409+00	2026-04-09 21:54:17.409+00
b0705eec-bfc4-4b29-b0c6-62bace023e57	GAS-0000088	7.75	DESAYUNO	Alimentación	2026-04-10 16:32:36.824+00	63be6307-466b-44c8-90f7-1dce3f6801e9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-10 16:32:36.824+00	2026-04-10 16:32:36.824+00
97ed9d97-cf5f-4d46-a007-9f82c501ec2b	GAS-0000089	10.00	MARQUITOS	Varios	2026-04-10 16:32:49.129+00	63be6307-466b-44c8-90f7-1dce3f6801e9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-10 16:32:49.129+00	2026-04-10 16:32:49.129+00
05f0f8a7-2641-4344-a3a7-f272b54dcbc3	GAS-0000090	5.00	LONGANIZA	Alimentación	2026-04-10 16:33:02.408+00	63be6307-466b-44c8-90f7-1dce3f6801e9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-10 16:33:02.408+00	2026-04-10 16:33:02.408+00
1b07b167-bc85-4ab7-b7ee-de3e62ff0c27	GAS-0000091	6.00	COMIDA EL COLORADO	Alimentación	2026-04-10 16:33:17.72+00	63be6307-466b-44c8-90f7-1dce3f6801e9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-10 16:33:17.72+00	2026-04-10 16:33:17.72+00
bac78adb-a4bb-40f8-9e7d-da78cf5f5cb7	GAS-0000092	7.00	ALMUERZOS	Alimentación	2026-04-10 20:31:17.371+00	63be6307-466b-44c8-90f7-1dce3f6801e9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-10 20:31:17.371+00	2026-04-10 20:31:17.371+00
6fac76f4-58e0-4166-ad7c-ebf2460bbb5b	GAS-0000093	2.50	COMIDA DE HULK 	Alimentación	2026-04-10 20:31:40.218+00	63be6307-466b-44c8-90f7-1dce3f6801e9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-10 20:31:40.218+00	2026-04-10 20:31:40.218+00
00f54fe5-9ee6-4846-9a24-1388b1247710	GAS-0000094	8.65	GRASA Y CEVICHE 	Varios	2026-04-10 20:53:19.228+00	63be6307-466b-44c8-90f7-1dce3f6801e9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-10 20:53:19.228+00	2026-04-10 20:53:19.228+00
7b2e3cb2-f217-437e-9838-299dcec4d9d8	GAS-0000095	2.90	GASOLINA GALON  	Combustible	2026-04-10 21:05:07.568+00	63be6307-466b-44c8-90f7-1dce3f6801e9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-10 21:05:07.568+00	2026-04-10 21:05:07.568+00
df6ae1e3-0a44-4602-9c60-e96f0bb175d6	GAS-0000096	25.00	CAMISA	Varios	2026-04-10 21:45:31.454+00	63be6307-466b-44c8-90f7-1dce3f6801e9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-10 21:45:31.455+00	2026-04-10 21:45:31.455+00
d25bf98d-56ac-465c-8e3e-1851fd74a0a3	GAS-0000097	60.00	INTERNET	Varios	2026-04-11 16:21:52.644+00	f6118082-3342-406e-be26-1375b0845378	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-11 16:21:52.645+00	2026-04-11 16:21:52.645+00
ecc89dad-d853-424f-983c-668d9a1557c1	GAS-0000098	3.00	POLACA Y CEPILLO	Alimentación	2026-04-11 16:22:09.741+00	f6118082-3342-406e-be26-1375b0845378	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-11 16:22:09.741+00	2026-04-11 16:22:09.741+00
d8efbb2c-b27f-4e24-a401-1dca8034ec4d	GAS-0000099	10.00	MARQUITOS	Varios	2026-04-11 16:22:22.048+00	f6118082-3342-406e-be26-1375b0845378	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-11 16:22:22.049+00	2026-04-11 16:22:22.049+00
6a0dd56e-7d50-4164-977d-475404bfa3b3	GAS-0000100	18.00	GASOLINA  COLORADO	Combustible	2026-04-11 19:13:19.644+00	f6118082-3342-406e-be26-1375b0845378	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-11 19:13:19.645+00	2026-04-11 19:13:19.645+00
8d64abaa-5624-47fc-88bb-dea6fa6ddfb6	GAS-0000101	7.00	COMIDA COLORADO	Alimentación	2026-04-11 19:13:31.477+00	f6118082-3342-406e-be26-1375b0845378	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-11 19:13:31.477+00	2026-04-11 19:13:31.477+00
4c535c46-d04d-4a21-aeb6-d73574c91a14	GAS-0000102	0.30	LAPIZ	Varios	2026-04-11 19:13:45.244+00	f6118082-3342-406e-be26-1375b0845378	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-11 19:13:45.244+00	2026-04-11 19:13:45.244+00
a274328f-763f-4207-87cf-942baad4b5a4	GAS-0000103	2.50	COMIDA HULK	Alimentación	2026-04-11 19:13:58.52+00	f6118082-3342-406e-be26-1375b0845378	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-11 19:13:58.52+00	2026-04-11 19:13:58.52+00
19c9c40d-8400-481e-bce0-3a2f59d437bd	GAS-0000104	3.00	ALMUERZO DON VICENTE 	Varios	2026-04-13 12:46:06.122+00	f6118082-3342-406e-be26-1375b0845378	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 12:46:06.123+00	2026-04-13 12:46:06.123+00
f837f0ad-8a98-4299-83d6-a4fe8e89acd9	GAS-0000105	5.00	PAGO DE LA SEMANA JOSE 	Varios	2026-04-13 12:51:03.574+00	f6118082-3342-406e-be26-1375b0845378	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 12:51:03.574+00	2026-04-13 12:51:03.574+00
635a4664-bb49-491c-a77c-1194303b656a	GAS-0000106	80.00	PAGO DE LA SEMANA MILTON	Varios	2026-04-13 12:51:18.706+00	f6118082-3342-406e-be26-1375b0845378	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 12:51:18.706+00	2026-04-13 12:51:18.706+00
d5b491ed-34c2-423b-8fc9-5c9505043b03	GAS-0000107	74.00	PAGO DE LA SEMANA JORDAN 	Varios	2026-04-13 12:51:33.138+00	f6118082-3342-406e-be26-1375b0845378	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 12:51:33.139+00	2026-04-13 12:51:33.139+00
39071487-b90d-426d-bec0-921b1e4dadca	GAS-0000108	216.00	GALLINAS	Alimentación	2026-04-13 19:19:27.542+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 19:19:27.542+00	2026-04-13 19:19:27.542+00
131d28d8-5da2-40a7-88d1-e379652ed4a2	GAS-0000109	4.00	COMIDA COLORADO	Alimentación	2026-04-13 19:19:42.84+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 19:19:42.84+00	2026-04-13 19:19:42.84+00
03ea7c4e-908b-42f4-a399-3a03e1cab632	GAS-0000110	100.00	PRESTAMO A SOFIA 	Varios	2026-04-13 19:20:03.874+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 19:20:03.874+00	2026-04-13 19:20:03.874+00
71dcb1a4-d4d0-429a-b974-e724f38414a1	GAS-0000111	7.00	ALMUERZOS 	Alimentación	2026-04-13 19:20:20.219+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 19:20:20.219+00	2026-04-13 19:20:20.219+00
b23b8d32-5bfb-4e70-b9e8-202966b41b30	GAS-0000112	30.00	ALQUILER COMPACTADORA 	Varios	2026-04-13 19:20:52.245+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 19:20:52.245+00	2026-04-13 19:20:52.245+00
e1b16a37-8578-4115-ac45-49f8a0e2351c	GAS-0000113	2.50	COMIDA DE HULK 	Alimentación	2026-04-13 19:55:01.155+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 19:55:01.156+00	2026-04-13 19:55:01.156+00
23146c0c-6073-4950-98fa-cb0f656c950e	GAS-0000114	1.00	LIMON 	Varios	2026-04-13 20:51:31.144+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 20:51:31.144+00	2026-04-13 20:51:31.144+00
0e941d42-2593-4332-bb83-bdea16c27fec	GAS-0000115	20.00	PRESTAMO A SOFIA 	Varios	2026-04-13 21:30:17.14+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 21:30:17.141+00	2026-04-13 21:30:17.141+00
5141f2c8-5530-4170-abe7-1c8372a1613b	GAS-0000116	5.00	COMBUSTIBLE	Combustible	2026-04-13 21:48:24.738+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 21:48:24.738+00	2026-04-13 21:48:24.738+00
d10d40cf-0acd-46d2-a275-e14a73f595af	GAS-0000117	2.25	ACEITE 	Varios	2026-04-13 21:49:02.451+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 21:49:02.451+00	2026-04-13 21:49:02.451+00
b774a53d-7456-483d-a212-7a78745f743b	GAS-0000118	150.00	PAGO MAESTRO 	Varios	2026-04-13 22:11:09.805+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 22:11:09.805+00	2026-04-13 22:11:09.805+00
58f7e138-411b-4b4e-9f59-71010ede3ebe	GAS-0000119	52.88	PERNOS, TUBOS ETC	Repuestos	2026-04-13 22:11:24.336+00	50df0617-4113-4855-be22-d596adb26685	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-13 22:11:24.337+00	2026-04-13 22:11:24.337+00
5d2d6cf5-af04-43b7-a266-e431919bbfbc	GAS-0000120	7.00	ALMUERZOS	Alimentación	2026-04-14 20:15:44.662+00	2dbaaf95-faab-4f9b-a861-c96e84624908	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-14 20:15:44.662+00	2026-04-14 20:15:44.662+00
24a93ad7-3b18-4dac-8146-46c19df83072	GAS-0000121	15.00	MARACUYA	Varios	2026-04-14 20:15:53.8+00	2dbaaf95-faab-4f9b-a861-c96e84624908	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-14 20:15:53.8+00	2026-04-14 20:15:53.8+00
a370f463-629b-44f7-b856-780b8da3d200	GAS-0000122	6.00	BOTES PARA MAYONESA Y AJI	Varios	2026-04-14 20:16:16.987+00	2dbaaf95-faab-4f9b-a861-c96e84624908	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-14 20:16:16.987+00	2026-04-14 20:16:16.987+00
eca1e489-8f6c-45ee-af0d-ad6d5c9d7028	GAS-0000123	2.50	COMIDA DE HULK	Alimentación	2026-04-14 20:16:36.444+00	2dbaaf95-faab-4f9b-a861-c96e84624908	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-14 20:16:36.444+00	2026-04-14 20:16:36.444+00
9378df9e-5418-4371-81a0-8363582a1b96	GAS-0000124	1.50	KAROL	Varios	2026-04-14 20:16:58.065+00	2dbaaf95-faab-4f9b-a861-c96e84624908	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-14 20:16:58.066+00	2026-04-14 20:16:58.066+00
cde61f72-1872-4f3b-a981-885df39837dd	GAS-0000125	10.00	TOALLA Y SERNIDERA 	Varios	2026-04-14 21:20:33.452+00	2dbaaf95-faab-4f9b-a861-c96e84624908	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-14 21:20:33.452+00	2026-04-14 21:20:33.452+00
e116afd7-e9a7-4f9d-b7f3-fb31f06a7f87	GAS-0000126	2.50	ACHIOTE	Varios	2026-04-14 21:37:21.845+00	2dbaaf95-faab-4f9b-a861-c96e84624908	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-14 21:37:21.846+00	2026-04-14 21:37:21.846+00
33050532-4231-48a5-880d-4c051b27d50f	GAS-0000127	8.75	BINGO	Varios	2026-04-15 16:09:50.798+00	9ba52a35-c19c-45bb-b535-358cbaee6ef5	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-15 16:09:50.799+00	2026-04-15 16:09:50.799+00
8c0236a3-831a-44db-ae08-7c1bd97f3060	GAS-0000128	4.00	TABLAS DE BINGO 	Varios	2026-04-15 16:10:03.843+00	9ba52a35-c19c-45bb-b535-358cbaee6ef5	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-15 16:10:03.843+00	2026-04-15 16:10:03.843+00
a861315a-d134-404c-9c15-674e95d2c8b3	GAS-0000129	100.00	PRESTAMO ANGEL LOOR	Varios	2026-04-15 16:10:27.464+00	9ba52a35-c19c-45bb-b535-358cbaee6ef5	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-15 16:10:27.464+00	2026-04-15 16:10:27.464+00
a88199f2-2ac6-45fc-8168-1e23874efd7a	GAS-0000130	13.00	COMIDA COLORADO	Alimentación	2026-04-15 16:10:40.836+00	9ba52a35-c19c-45bb-b535-358cbaee6ef5	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-15 16:10:40.836+00	2026-04-15 16:10:40.836+00
903d5605-606d-4c82-af9d-70c9ccd2c4b3	GAS-0000131	7.00	ALMUERZOS	Alimentación	2026-04-15 19:41:50.04+00	9ba52a35-c19c-45bb-b535-358cbaee6ef5	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-15 19:41:50.04+00	2026-04-15 19:41:50.04+00
28eea051-5107-4730-a5f1-a1aa4ac5813d	GAS-0000132	2.50	COMIDA DE HULK	Varios	2026-04-15 19:42:04.942+00	9ba52a35-c19c-45bb-b535-358cbaee6ef5	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-15 19:42:04.942+00	2026-04-15 19:42:04.942+00
d70744fb-a53f-4df9-a576-5870e92e80b7	GAS-0000133	0.75	HELADO 	Alimentación	2026-04-15 19:56:56.677+00	9ba52a35-c19c-45bb-b535-358cbaee6ef5	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-15 19:56:56.678+00	2026-04-15 19:56:56.678+00
64f1195a-e215-4eca-89bf-250a35b6a4ec	GAS-0000134	20.00	COMBUSTIBLE	Combustible	2026-04-15 22:04:59.351+00	9ba52a35-c19c-45bb-b535-358cbaee6ef5	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-15 22:04:59.351+00	2026-04-15 22:04:59.351+00
1df1fbd8-aaa5-47e2-86ea-163a5b8b562e	GAS-0000135	8.00	PERNOS, CLAVOS DE CEMENTO 	Repuestos	2026-04-16 16:46:23.847+00	573dc33b-a8b0-40a3-b0be-4613dcf824b6	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-16 16:46:23.847+00	2026-04-16 16:46:23.847+00
464563a6-a193-47f3-b3a9-d9dbe7483024	GAS-0000136	23.00	GALLINAS	Suministros	2026-04-16 16:46:35.457+00	573dc33b-a8b0-40a3-b0be-4613dcf824b6	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-16 16:46:35.457+00	2026-04-16 16:46:35.457+00
7d5e0ad0-4bdc-4e48-8acd-f527aec30f7a	GAS-0000137	2.00	JORDAN JUEVES 16/04	Varios	2026-04-16 16:46:56.968+00	573dc33b-a8b0-40a3-b0be-4613dcf824b6	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-16 16:46:56.968+00	2026-04-16 16:46:56.968+00
7cb50111-0e67-4c9d-8441-9c2c6e88b9c8	GAS-0000138	21.00	GASOLINA COLORADO	Combustible	2026-04-16 16:47:12.148+00	573dc33b-a8b0-40a3-b0be-4613dcf824b6	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-16 16:47:12.148+00	2026-04-16 16:47:12.148+00
d4769471-652f-4059-bb4b-2a4a31605b4d	GAS-0000139	6.00	COMIDA COLORADO 	Alimentación	2026-04-16 16:47:47.246+00	573dc33b-a8b0-40a3-b0be-4613dcf824b6	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-16 16:47:47.246+00	2026-04-16 16:47:47.246+00
c4a3183d-37c7-41d8-9deb-43bd141fea08	GAS-0000140	7.00	ALMUERZOS	Alimentación	2026-04-16 19:32:10.146+00	573dc33b-a8b0-40a3-b0be-4613dcf824b6	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-16 19:32:10.146+00	2026-04-16 19:32:10.146+00
2753208a-ed41-4a30-a6c7-59c7217da033	GAS-0000141	20.00	SEMANA KAROL	Varios	2026-04-16 19:32:22.076+00	573dc33b-a8b0-40a3-b0be-4613dcf824b6	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-16 19:32:22.076+00	2026-04-16 19:32:22.076+00
13b05861-2a66-4c60-88f2-215547fe54c8	GAS-0000142	2.50	COMIDA HULK 	Alimentación	2026-04-16 19:32:43.571+00	573dc33b-a8b0-40a3-b0be-4613dcf824b6	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-16 19:32:43.571+00	2026-04-16 19:32:43.571+00
33c1a06a-68e5-419e-90e1-03d7043baec9	GAS-0000143	10.00	BILLETE FALSO 	Varios	2026-04-16 20:26:41.315+00	573dc33b-a8b0-40a3-b0be-4613dcf824b6	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-16 20:26:41.315+00	2026-04-16 20:26:41.315+00
c858f73a-da5e-49f2-a776-6629b0e97ab3	GAS-0000144	120.00	PRESTAMO ROSA 	Varios	2026-04-16 21:23:55.739+00	573dc33b-a8b0-40a3-b0be-4613dcf824b6	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-16 21:23:55.74+00	2026-04-16 21:23:55.74+00
e3f833d1-bd56-4fdc-b9d1-b800ccacac66	GAS-0000145	15.00	MARQUITOS	Varios	2026-04-17 19:54:26.085+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 19:54:26.086+00	2026-04-17 19:54:26.086+00
652d9750-e41f-4d92-b48f-338fbfaabff9	GAS-0000146	10.00	SAQUITO DE ARROZ	Alimentación	2026-04-17 19:54:43.75+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 19:54:43.75+00	2026-04-17 19:54:43.75+00
81afc537-ed7a-4cc8-afbe-b5d62c13d1ef	GAS-0000147	2.00	YOGURT	Alimentación	2026-04-17 19:54:54.591+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 19:54:54.591+00	2026-04-17 19:54:54.591+00
ebeb9945-8936-4ad0-b565-c96adc77a0d5	GAS-0000148	58.00	MESA BLANCA 	Suministros	2026-04-17 19:55:19.276+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 19:55:19.276+00	2026-04-17 19:55:19.276+00
479cb8c9-d4e2-4a13-98fe-0c4c4eadfe52	GAS-0000149	1.00	FUNDA DE SAL	Suministros	2026-04-17 19:56:40.044+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 19:56:40.044+00	2026-04-17 19:56:40.044+00
1bea968d-e708-4692-947b-fe36903c772d	GAS-0000150	7.00	GASTOS COMIDA COLORADO	Alimentación	2026-04-17 19:56:58.762+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 19:56:58.762+00	2026-04-17 19:56:58.762+00
97394dbb-c761-4dfc-b5ac-00a024d32441	GAS-0000151	5.00	LONGANIZA	Alimentación	2026-04-17 19:57:11.269+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 19:57:11.269+00	2026-04-17 19:57:11.269+00
4a23ac78-cc16-473b-8d12-aad5dc3d7b7e	GAS-0000152	1.75	AGUA POMA	Alimentación	2026-04-17 19:57:31.468+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 19:57:31.468+00	2026-04-17 19:57:31.468+00
c06849b5-9ad4-4e83-b050-b8d53ed5296b	GAS-0000153	7.70	AGUA BIDONES	Suministros	2026-04-17 20:17:39.742+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 20:17:39.742+00	2026-04-17 20:17:39.742+00
f5b5eedb-e73f-49ac-809b-6b8f209ea7f8	GAS-0000154	7.50	COMBUSTIBLE	Combustible	2026-04-17 20:28:15.659+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 20:28:15.659+00	2026-04-17 20:28:15.659+00
74a1bd7f-a3f8-460a-8b08-a4a711577d36	GAS-0000155	0.50	JORDAN	Varios	2026-04-17 20:28:27.245+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 20:28:27.245+00	2026-04-17 20:28:27.245+00
75c8658d-50fa-4c26-88b4-31651fcea41d	GAS-0000156	90.00	PRESTAMO A ROSA	Varios	2026-04-17 21:33:44.344+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 21:33:44.344+00	2026-04-17 21:33:44.344+00
2b4ac0d2-50ab-4704-a5ce-d30e759c03a5	GAS-0000157	0.50	LUSTRE	Varios	2026-04-17 22:10:56.836+00	636913d0-a933-4f98-92a2-085fc3a49824	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-17 22:10:56.837+00	2026-04-17 22:10:56.837+00
b90aa842-533a-4eba-8bd7-e1e5aaf92bf9	GAS-0000158	1.00	PRESTADO A MILTON 	Varios	2026-04-18 16:48:41.052+00	6c8c3740-71f5-4332-be60-6092a6a4c4a9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 16:48:41.052+00	2026-04-18 16:48:41.052+00
ac9ca24a-f373-481d-a9c7-bcc416a9fd5e	GAS-0000159	5.00	MARQUITOS	Varios	2026-04-18 16:49:01.51+00	6c8c3740-71f5-4332-be60-6092a6a4c4a9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 16:49:01.51+00	2026-04-18 16:49:01.51+00
676174e6-08a9-48d3-95b3-521d24c4eb84	GAS-0000160	15.00	JIPSON	Varios	2026-04-18 16:49:13.555+00	6c8c3740-71f5-4332-be60-6092a6a4c4a9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 16:49:13.555+00	2026-04-18 16:49:13.555+00
af2b884c-2b9c-4c36-bf68-2fe7eb58a0e7	GAS-0000161	12.00	CARBON	Varios	2026-04-18 16:49:22.096+00	6c8c3740-71f5-4332-be60-6092a6a4c4a9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 16:49:22.096+00	2026-04-18 16:49:22.096+00
4800a27a-a970-4f9a-90fa-2298648fc3fd	GAS-0000162	16.50	GASOLINA COLORADO 	Combustible	2026-04-18 16:49:59.316+00	6c8c3740-71f5-4332-be60-6092a6a4c4a9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 16:49:59.316+00	2026-04-18 16:49:59.316+00
3ccccad2-7cef-4c47-a1aa-7122135399ea	GAS-0000163	6.00	COMIDA COLORADO	Alimentación	2026-04-18 16:50:19.135+00	6c8c3740-71f5-4332-be60-6092a6a4c4a9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 16:50:19.135+00	2026-04-18 16:50:19.135+00
59b373b9-3806-4a10-a12d-dd715b486f84	GAS-0000164	150.00	PRESTAMO EDUARDO ZAMBRANO 18 ABRIL	Varios	2026-04-18 16:51:16.147+00	6c8c3740-71f5-4332-be60-6092a6a4c4a9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 16:51:16.147+00	2026-04-18 16:51:16.147+00
7b728986-e086-4d10-939d-2ff3b6079c74	GAS-0000165	20.00	BRYAN TRABAJO DEL JUEVES  	Varios	2026-04-18 18:21:42.243+00	6c8c3740-71f5-4332-be60-6092a6a4c4a9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 18:21:42.243+00	2026-04-18 18:21:42.243+00
8008951e-d4c3-4a0e-bd13-0c36bc998c42	GAS-0000166	2.50	COMIDA HULK 	Alimentación	2026-04-18 20:17:07.245+00	6c8c3740-71f5-4332-be60-6092a6a4c4a9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 20:17:07.246+00	2026-04-18 20:17:07.246+00
4605ce9d-f0da-4c9d-afeb-82e01f104b0a	GAS-0000167	1.00	COLA DE 1	Suministros	2026-04-18 20:17:22.248+00	6c8c3740-71f5-4332-be60-6092a6a4c4a9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 20:17:22.248+00	2026-04-18 20:17:22.248+00
749ea495-3571-454b-88a1-b21078221f36	GAS-0000168	5.00	PAGO DE SEMANA A JOSE 	Varios	2026-04-18 20:26:52.14+00	6c8c3740-71f5-4332-be60-6092a6a4c4a9	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-18 20:26:52.141+00	2026-04-18 20:26:52.141+00
fe339e01-b169-4a85-af13-a32dc7a44b79	GAS-0000169	80.00	PAGO DE LA SEMANA DE MILTON 	Varios	2026-04-20 13:11:12.854+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 13:11:12.854+00	2026-04-20 13:11:12.854+00
10ced3f4-7056-49c3-8bba-2c4de70f206b	GAS-0000170	50.80	PAGO DE LA SEMANA DE JORDAN 	Varios	2026-04-20 13:12:20.217+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 13:12:20.217+00	2026-04-20 13:12:20.217+00
2800cbc2-6338-4ef5-8488-0c624d30d7dc	GAS-0000171	10.00	DEVOLUCION DE DINERO QUE SE LE PRESTO A MILTON 	Varios	2026-04-20 13:14:18.742+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 13:14:18.742+00	2026-04-20 13:14:18.742+00
b21de181-1aaf-4d1f-a595-151bc7691280	GAS-0000172	10.00	MAS 10 DEL PAGO DE LA SEMANA DE MILTON 	Varios	2026-04-20 13:14:47.449+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 13:14:47.449+00	2026-04-20 13:14:47.449+00
9d97f3fd-2ce4-4145-8201-5a2d4a7ebfa2	GAS-0000173	3.00	JIPSON	Varios	2026-04-20 18:34:16.547+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 18:34:16.547+00	2026-04-20 18:34:16.547+00
bfcae1c4-7a0f-4982-97ea-d6c095643e4e	GAS-0000174	5.00	MARCOS 	Varios	2026-04-20 18:34:43.249+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 18:34:43.249+00	2026-04-20 18:34:43.249+00
144da6de-cb57-4ea6-87d3-7baa16e5238c	GAS-0000175	5.00	COMBUSTIBLE DE MOTO	Varios	2026-04-20 18:34:59.561+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 18:34:59.561+00	2026-04-20 18:34:59.561+00
a7aee9d9-fe50-4b53-b028-9b3289c007cc	GAS-0000176	1.00	JORDAN 	Varios	2026-04-20 18:35:54.543+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 18:35:54.543+00	2026-04-20 18:35:54.543+00
d03b051d-a19f-45e7-bd65-0f3443045479	GAS-0000177	28.00	CHIFLE 	Varios	2026-04-20 18:36:09.068+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 18:36:09.068+00	2026-04-20 18:36:09.068+00
90557d73-7dd1-4a04-9b71-c980833626b2	GAS-0000178	30.00	PRESTAMO SILVINO BERMELLO 	Varios	2026-04-20 18:36:37.558+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 18:36:37.558+00	2026-04-20 18:36:37.558+00
3b7518a1-5545-4420-9d5f-53d75187e564	GAS-0000179	7.00	COMIDA COLORADO	Varios	2026-04-20 18:37:00.101+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 18:37:00.101+00	2026-04-20 18:37:00.101+00
6a5573c2-65d6-4d37-a7a1-b0d54a67c259	GAS-0000180	3.00	ALMUERZO	Varios	2026-04-20 19:35:07.341+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 19:35:07.342+00	2026-04-20 19:35:07.342+00
95b977f8-9065-4fd6-8a4d-45e150f69086	GAS-0000181	2.50	COMIDA DE HULK 	Varios	2026-04-20 19:35:39.958+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 19:35:39.958+00	2026-04-20 19:35:39.958+00
f9aab540-c0d4-449b-9244-975f03fb9aa8	GAS-0000182	20.00	FUNDAS Y YOGURT	Varios	2026-04-20 21:24:40.41+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 21:24:40.411+00	2026-04-20 21:24:40.411+00
f23aa53b-5805-42e3-8dc4-441e7655b3ec	GAS-0000183	10.00	RETIRO	Varios	2026-04-20 21:25:35.881+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 21:25:35.882+00	2026-04-20 21:25:35.882+00
5226ba99-ebc8-4138-a99a-7dbc51522b96	GAS-0000184	3.00	ALMUERZO VICENTE 	Varios	2026-04-20 21:53:47.45+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 21:53:47.45+00	2026-04-20 21:53:47.45+00
cbff50c2-7c68-4513-8185-fb3a239ba9f3	GAS-0000185	3.00	PARA JUEGO DE BINGO 	Varios	2026-04-20 22:24:56.249+00	4b0d8a84-a254-4e20-a4b0-09c251615301	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-20 22:24:56.249+00	2026-04-20 22:24:56.249+00
cadc02fa-e1f6-4e4d-8687-ef2ca0bd2073	GAS-0000186	2.50	JORDAN PRESTO EL LUNES 20 	Varios	2026-04-21 20:09:55.057+00	d1646688-7f88-4b32-9de5-bcc5cfe39c76	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-21 20:09:55.057+00	2026-04-21 20:09:55.057+00
f947d50f-fe4c-4a23-a4b2-1d05d603da7b	GAS-0000187	6.00	COMIDA COLORADO	Varios	2026-04-21 20:10:04.449+00	d1646688-7f88-4b32-9de5-bcc5cfe39c76	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-21 20:10:04.45+00	2026-04-21 20:10:04.45+00
9240fed3-f9f5-407b-9ef7-abf3a05153bb	GAS-0000188	2.00	JORDAN 	Varios	2026-04-21 20:10:13.728+00	d1646688-7f88-4b32-9de5-bcc5cfe39c76	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-21 20:10:13.728+00	2026-04-21 20:10:13.728+00
2d65a73f-0f51-4345-beeb-a5106b4a05f5	GAS-0000189	1.00	MILTON 	Varios	2026-04-21 20:10:22.064+00	d1646688-7f88-4b32-9de5-bcc5cfe39c76	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-21 20:10:22.064+00	2026-04-21 20:10:22.064+00
5648d8f9-2250-4984-affd-cd30cb4bd842	GAS-0000190	0.50	ARROZ	Alimentación	2026-04-21 20:10:31.151+00	d1646688-7f88-4b32-9de5-bcc5cfe39c76	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-21 20:10:31.151+00	2026-04-21 20:10:31.151+00
1e6ff5bf-d85a-4b64-8e45-84ee4599807e	GAS-0000191	10.00	POLLO Y COLA	Alimentación	2026-04-21 20:10:47.051+00	d1646688-7f88-4b32-9de5-bcc5cfe39c76	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-21 20:10:47.052+00	2026-04-21 20:10:47.052+00
0b27ed3c-58de-45d4-bf9b-5e0fc85d7ae5	GAS-0000192	42.20	PAGO DE AGUA 	Varios	2026-04-21 20:11:01.48+00	d1646688-7f88-4b32-9de5-bcc5cfe39c76	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-21 20:11:01.48+00	2026-04-21 20:11:01.48+00
ad4cbe00-38bd-4f27-951b-fe668fa3c32f	GAS-0000193	2.50	COMIDA HULK	Alimentación	2026-04-21 20:11:15.483+00	d1646688-7f88-4b32-9de5-bcc5cfe39c76	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-21 20:11:15.483+00	2026-04-21 20:11:15.483+00
8df38bfd-bac2-4114-8f1a-9518a8b600df	GAS-0000194	7.00	MARQUITOS	Varios	2026-04-22 16:26:58.734+00	4f2a405c-467e-451e-bee2-e445d332d1ff	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-22 16:26:58.735+00	2026-04-22 16:26:58.735+00
dc01a0ba-85d7-4d11-a937-73eefcf461d2	GAS-0000195	1000.00	ESCUELA 	Varios	2026-04-22 16:27:09.404+00	4f2a405c-467e-451e-bee2-e445d332d1ff	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-22 16:27:09.404+00	2026-04-22 16:27:09.404+00
bceceaf9-d2c8-417c-a180-8d8b0fde4fa4	GAS-0000196	1.00	YOGURT	Varios	2026-04-22 16:27:17.805+00	4f2a405c-467e-451e-bee2-e445d332d1ff	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-22 16:27:17.805+00	2026-04-22 16:27:17.805+00
0d699bb7-f9bb-4e22-9c19-2af28bd12950	GAS-0000197	1.00	JORDAN PRESTO EL MIERCOLES 22 	Varios	2026-04-22 16:27:35.875+00	4f2a405c-467e-451e-bee2-e445d332d1ff	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-22 16:27:35.875+00	2026-04-22 16:27:35.875+00
6831261a-1ef4-4ba0-8b2f-80e4e455990d	GAS-0000198	7.00	COMIDA COLORADO 	Varios	2026-04-22 16:27:55.544+00	4f2a405c-467e-451e-bee2-e445d332d1ff	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-22 16:27:55.544+00	2026-04-22 16:27:55.544+00
ada785a7-0be7-4631-8dd5-6a283519d7cd	GAS-0000199	3.00	ALMUERZO 	Alimentación	2026-04-22 22:08:31.846+00	4f2a405c-467e-451e-bee2-e445d332d1ff	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-22 22:08:31.847+00	2026-04-22 22:08:31.847+00
dd692976-1a59-47b7-8634-49ab36763ab6	GAS-0000200	2.50	COMIDA HULK 	Varios	2026-04-22 22:08:46.046+00	4f2a405c-467e-451e-bee2-e445d332d1ff	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-22 22:08:46.046+00	2026-04-22 22:08:46.046+00
7e5204c6-73dd-43a0-93cc-1c3876af396d	GAS-0000201	3.00	ALMUERZO DON VICENTE	Varios	2026-04-23 19:22:09.107+00	8c889ae9-fb24-4043-82da-6b7de9f477c7	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-23 19:22:09.107+00	2026-04-23 19:22:09.107+00
700a6e8e-2e81-41db-b769-8ddd76de54c2	GAS-0000202	5.00	COMBUSTIBLE	Combustible	2026-04-23 19:22:33.545+00	8c889ae9-fb24-4043-82da-6b7de9f477c7	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-23 19:22:33.546+00	2026-04-23 19:22:33.546+00
732e2b37-ce8d-40f0-b21c-937d2bfa31f9	GAS-0000203	3.00	DESAYUNO	Alimentación	2026-04-23 19:22:45.679+00	8c889ae9-fb24-4043-82da-6b7de9f477c7	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-23 19:22:45.679+00	2026-04-23 19:22:45.679+00
5dd5bfda-9d92-437d-b5d4-83db7014e013	GAS-0000204	7.00	ALMUERZO	Varios	2026-04-23 19:23:39.788+00	8c889ae9-fb24-4043-82da-6b7de9f477c7	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-23 19:23:39.788+00	2026-04-23 19:23:39.788+00
0ea0259d-4bb7-4de6-ab5e-273251919446	GAS-0000205	2.50	COMIDA HULK 	Varios	2026-04-23 19:24:49.836+00	8c889ae9-fb24-4043-82da-6b7de9f477c7	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-23 19:24:49.836+00	2026-04-23 19:24:49.836+00
d96017d7-dc3f-4c2e-aefb-3570ab66cff9	GAS-0000206	8.40	MARCADORES Y LAPICES	Varios	2026-04-23 21:45:34.908+00	8c889ae9-fb24-4043-82da-6b7de9f477c7	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-23 21:45:34.909+00	2026-04-23 21:45:34.909+00
78f633a3-1460-4486-ac8d-eda100b8649a	GAS-0000207	21.40	COMBUSTIBLE COLORADO	Combustible	2026-04-23 22:25:20.809+00	8c889ae9-fb24-4043-82da-6b7de9f477c7	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-23 22:25:20.81+00	2026-04-23 22:25:20.81+00
7ca8b7cf-efb2-4a73-a381-ebbcc565816d	GAS-0000208	3.00	COMIDA COLORADO	Alimentación	2026-04-23 22:25:37.373+00	8c889ae9-fb24-4043-82da-6b7de9f477c7	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-23 22:25:37.373+00	2026-04-23 22:25:37.373+00
978abbcd-4df7-4b2a-9c3b-e34de2d226ca	GAS-0000209	5.00	MARQUITOS	Varios	2026-04-24 16:23:33.55+00	14920715-dbb2-4c21-92cf-ef7e5c814643	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-24 16:23:33.551+00	2026-04-24 16:23:33.551+00
dd8ff10b-11d3-4a1e-8246-dbb5194bf004	GAS-0000210	6.00	COMIDA COLORADO 	Varios	2026-04-24 16:23:54.362+00	14920715-dbb2-4c21-92cf-ef7e5c814643	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-24 16:23:54.362+00	2026-04-24 16:23:54.362+00
f39d5ef8-2f3e-47a7-88c8-dd872d812006	GAS-0000211	2.00	PAN Y POLACA	Alimentación	2026-04-24 16:24:46.747+00	14920715-dbb2-4c21-92cf-ef7e5c814643	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-24 16:24:46.748+00	2026-04-24 16:24:46.748+00
bf162c54-1fa6-4c66-be87-26cf4d820f96	GAS-0000212	10.50	ALMUERZOS	Varios	2026-04-24 17:40:49.182+00	14920715-dbb2-4c21-92cf-ef7e5c814643	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-24 17:40:49.182+00	2026-04-24 17:40:49.182+00
d38f191e-9844-42ac-ad91-28bb9fc4beac	GAS-0000213	2.50	COMIDA DE HULK	Alimentación	2026-04-24 18:53:37.34+00	14920715-dbb2-4c21-92cf-ef7e5c814643	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-24 18:53:37.34+00	2026-04-24 18:53:37.34+00
d28af719-2ea1-4c83-b2df-93498040c98d	GAS-0000214	47.00	UNIFORMES DE LOS NIÑOS	Varios	2026-04-24 18:53:52.544+00	14920715-dbb2-4c21-92cf-ef7e5c814643	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-24 18:53:52.544+00	2026-04-24 18:53:52.544+00
aa8d5d40-57be-48d2-b3fa-246e8dad035b	GAS-0000215	20.00	DETERGENTE , SUAVITAL 	Varios	2026-04-24 18:54:13.963+00	14920715-dbb2-4c21-92cf-ef7e5c814643	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-24 18:54:13.964+00	2026-04-24 18:54:13.964+00
871d46a4-ee22-4e69-82b9-ba485c6d4014	GAS-0000216	20.00	PAÑALES 	Varios	2026-04-24 18:54:25.945+00	14920715-dbb2-4c21-92cf-ef7e5c814643	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-24 18:54:25.945+00	2026-04-24 18:54:25.945+00
a0707224-d2e3-4c3c-8048-1a56792a263f	GAS-0000217	10.00	MERIENDA KAROL	Varios	2026-04-24 22:40:19.405+00	14920715-dbb2-4c21-92cf-ef7e5c814643	436e223e-918f-4b80-b807-69d1ab32a934	2026-04-24 22:40:19.407+00	2026-04-24 22:40:19.407+00
\.


--
-- Data for Name: LiquidacionAnticipos; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."LiquidacionAnticipos" (id, "montoAplicado", "AnticipoId", "LiquidacionId", "createdAt", "updatedAt") FROM stdin;
03fe0ea3-7937-4e80-a4af-39e47fd9e3d2	1000.00	967b2d2d-a86a-4241-b535-0e5c0219794c	1880d29e-9759-46e7-94a0-f581edec626f	2026-03-28 20:29:39.107+00	2026-03-28 20:29:39.107+00
\.


--
-- Data for Name: Liquidaciones; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Liquidaciones" (id, codigo, fecha, "totalLiquidacion", "totalRetencion", "totalAPagar", "abonoAnticipo", "pagoEfectivo", "pagoCheque", "pagoTransferencia", "montoAbonado", "montoPorPagar", estado, "UsuarioId", "ProductorId", "createdAt", "updatedAt") FROM stdin;
d94a9e3c-c7f7-4537-aa28-6c774b56b9e2	LIQ-0000022	2026-03-31 18:50:04.193+00	17.00	0.51	16.49	0.00	16.49	0.00	0.00	16.49	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-31 18:50:04.194+00	2026-03-31 18:50:04.377+00
1880d29e-9759-46e7-94a0-f581edec626f	LIQ-0000001	2026-03-28 20:29:39.033+00	4080.00	122.40	3957.60	1000.00	2957.60	0.00	0.00	2957.60	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-28 20:29:39.033+00	2026-03-30 14:25:43.39+00
3ad71b26-bce7-4b79-b716-cc0656624abc	LIQ-0000002	2026-03-30 18:15:48.956+00	58.80	1.76	57.04	0.00	57.04	0.00	0.00	57.04	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	881c21da-80e1-40c5-87b3-6896cfc21c2f	2026-03-30 18:15:48.956+00	2026-03-30 18:15:49.139+00
cad6002c-87ce-498c-9816-14ae8acaf491	LIQ-0000003	2026-03-30 18:17:22.317+00	8.00	0.24	7.76	0.00	7.76	0.00	0.00	7.76	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	881c21da-80e1-40c5-87b3-6896cfc21c2f	2026-03-30 18:17:22.317+00	2026-03-30 18:17:22.5+00
68c3258a-229a-4522-ba8e-7db2eae69ee0	LIQ-0000004	2026-03-30 18:26:08.683+00	3.09	0.09	3.00	0.00	3.00	0.00	0.00	3.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	881c21da-80e1-40c5-87b3-6896cfc21c2f	2026-03-30 18:26:08.683+00	2026-03-30 18:26:08.91+00
f77a9c72-e8af-4f45-a5f6-28a60e896aab	LIQ-0000005	2026-03-30 18:49:52.401+00	50.00	1.50	48.50	0.00	48.50	0.00	0.00	48.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	881c21da-80e1-40c5-87b3-6896cfc21c2f	2026-03-30 18:49:52.401+00	2026-03-30 18:49:52.553+00
04926d47-b75e-4494-b028-c557092749f2	LIQ-0000006	2026-03-30 18:51:34.053+00	12.00	0.36	11.64	0.00	11.64	0.00	0.00	11.64	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	881c21da-80e1-40c5-87b3-6896cfc21c2f	2026-03-30 18:51:34.053+00	2026-03-30 18:51:34.243+00
c72da676-f391-4a97-9df4-51ebf763681d	LIQ-0000007	2026-03-30 19:23:06.804+00	53.25	1.59	51.66	0.00	51.66	0.00	0.00	51.66	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	881c21da-80e1-40c5-87b3-6896cfc21c2f	2026-03-30 19:23:06.804+00	2026-03-30 19:23:06.976+00
0defab9b-1eae-4b52-a773-54aa75efdf8d	LIQ-0000008	2026-03-30 19:31:50.623+00	12.00	0.00	12.00	0.00	12.00	0.00	0.00	12.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-30 19:31:50.623+00	2026-03-30 19:31:50.742+00
e5eb4c2e-5076-461b-8e20-4eae8c3d1720	LIQ-0000009	2026-03-30 19:33:05.885+00	28.00	0.00	28.00	0.00	28.00	0.00	0.00	28.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-30 19:33:05.885+00	2026-03-30 19:33:06.023+00
d6f467b7-7c86-425a-bbd7-3cc1ab61d632	LIQ-0000010	2026-03-30 19:33:57.784+00	8.25	0.00	8.25	0.00	8.25	0.00	0.00	8.25	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-30 19:33:57.784+00	2026-03-30 19:33:57.906+00
c052a8fa-8ecf-4788-9797-cd89716613ca	LIQ-0000011	2026-03-30 19:35:13.38+00	8.25	0.00	8.25	0.00	8.25	0.00	0.00	8.25	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-30 19:35:13.38+00	2026-03-30 19:35:13.52+00
0f0092ee-4b0a-461a-9af3-ec2c7bd200a2	LIQ-0000012	2026-03-30 20:01:25.462+00	17.00	0.51	16.49	0.00	16.49	0.00	0.00	16.49	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-30 20:01:25.462+00	2026-03-30 20:01:25.637+00
5a59992c-c07b-4dbd-878e-b135d935af97	LIQ-0000013	2026-03-30 20:17:53.127+00	7.05	0.21	6.84	0.00	6.84	0.00	0.00	6.84	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-30 20:17:53.127+00	2026-03-30 20:18:15.509+00
3d736b6a-9010-4739-9a0c-9097cece7479	LIQ-0000014	2026-03-30 21:45:09.602+00	10.00	0.30	9.70	0.00	9.70	0.00	0.00	9.70	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-30 21:45:09.603+00	2026-03-30 21:45:10.301+00
134bc834-706e-42ec-b29b-3a5a91b99608	LIQ-0000015	2026-03-31 16:20:54.239+00	508.25	15.24	493.01	0.00	493.01	0.00	0.00	493.01	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	b6ff72fa-3ed3-4809-9e95-501b809c9950	2026-03-31 16:20:54.24+00	2026-03-31 16:20:54.401+00
be8cf9ab-0795-4b3f-9722-bf90ab57c052	LIQ-0000016	2026-03-31 16:24:54.971+00	15.75	0.00	15.75	0.00	15.75	0.00	0.00	15.75	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-31 16:24:54.972+00	2026-03-31 16:24:55.115+00
cd6b4a6d-2166-4e85-afb9-b64e79062b07	LIQ-0000017	2026-03-31 16:25:32.529+00	10.50	0.00	10.50	0.00	10.50	0.00	0.00	10.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-31 16:25:32.529+00	2026-03-31 16:25:32.645+00
6696b84e-21f1-4ba4-81cd-7cf1a2f43851	LIQ-0000018	2026-03-31 16:26:27.654+00	53.90	1.61	52.29	0.00	52.29	0.00	0.00	52.29	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-31 16:26:27.654+00	2026-03-31 16:26:27.83+00
c8df8476-b074-45a0-be38-cc3d71dede51	LIQ-0000019	2026-03-31 16:26:57.551+00	15.75	0.00	15.75	0.00	15.75	0.00	0.00	15.75	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-31 16:26:57.551+00	2026-03-31 16:26:57.677+00
8bf56696-2264-43fc-a5a8-e2c49d842f66	LIQ-0000020	2026-03-31 16:27:43.284+00	15.00	0.00	15.00	0.00	15.00	0.00	0.00	15.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-31 16:27:43.284+00	2026-03-31 16:27:43.399+00
7fb3f4dd-a740-45a5-b8ca-75b20cfd95f6	LIQ-0000021	2026-03-31 16:54:54.682+00	15.96	0.47	15.49	0.00	15.49	0.00	0.00	15.49	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-31 16:54:54.682+00	2026-03-31 16:54:55.303+00
90c9ac96-b9ca-4c87-813e-0c731f8b0b91	LIQ-0000023	2026-03-31 20:08:27.558+00	8.80	0.26	8.54	0.00	8.54	0.00	0.00	8.54	0.00	Pendiente	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-31 20:08:27.558+00	2026-03-31 20:08:27.742+00
3dca3d13-3fc2-4a48-a2db-50a70d74d1e1	LIQ-0000024	2026-03-31 20:10:31.36+00	115.80	3.47	112.33	0.00	112.33	0.00	0.00	112.33	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-31 20:10:31.36+00	2026-03-31 20:10:31.543+00
8cd4debf-f52b-4613-80f7-d27977f59471	LIQ-0000025	2026-03-31 21:57:18.787+00	5.50	0.16	5.34	0.00	5.34	0.00	0.00	5.34	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-03-31 21:57:18.788+00	2026-03-31 21:57:19.282+00
baf304ef-a46f-4a39-84a4-98f63deb9ede	LIQ-0000026	2026-04-01 12:52:56.138+00	2.20	0.06	2.14	0.00	2.14	0.00	0.00	2.14	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 12:52:56.138+00	2026-04-01 12:52:56.284+00
23561d0c-1737-4f0c-9b31-29d039182a16	LIQ-0000027	2026-04-01 15:37:34.873+00	18.30	0.54	17.76	0.00	17.76	0.00	0.00	17.76	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:37:34.874+00	2026-04-01 15:37:35.084+00
69b4a9c8-234c-4850-849f-130fdef14c67	LIQ-0000028	2026-04-01 15:38:15.629+00	15.89	0.47	15.42	0.00	15.42	0.00	0.00	15.42	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:38:15.629+00	2026-04-01 15:38:15.826+00
bddb15b5-aa49-43a7-a62c-e4a92f1e000a	LIQ-0000029	2026-04-01 15:39:10.086+00	41.10	1.23	39.87	0.00	39.87	0.00	0.00	39.87	0.00	Pendiente	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:39:10.086+00	2026-04-01 15:39:10.246+00
4824eacd-4389-47df-a085-c0222794e52e	LIQ-0000030	2026-04-01 15:39:52.005+00	29.70	0.89	28.81	0.00	28.81	0.00	0.00	28.81	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:39:52.005+00	2026-04-01 15:39:52.172+00
b4c9a09a-3782-4879-ad81-c5f5f20667d0	LIQ-0000031	2026-04-01 15:40:46.569+00	88.20	2.64	85.56	0.00	85.56	0.00	0.00	85.56	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:40:46.569+00	2026-04-01 15:40:46.72+00
8f65a2f2-2401-46e6-82e5-1241d3bd36f1	LIQ-0000032	2026-04-01 15:41:30.495+00	39.90	1.19	38.71	0.00	38.71	0.00	0.00	38.71	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:41:30.495+00	2026-04-01 15:41:30.686+00
dadb1d62-837e-4e4f-8a71-b8b8bbded5bf	LIQ-0000033	2026-04-01 15:43:10.151+00	12.60	0.37	12.23	0.00	12.23	0.00	0.00	12.23	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:43:10.151+00	2026-04-01 15:43:10.309+00
dc3ea860-98c2-40ff-acbd-850c8524a575	LIQ-0000034	2026-04-01 15:44:02.249+00	25.20	0.75	24.45	0.00	24.45	0.00	0.00	24.45	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:44:02.249+00	2026-04-01 15:44:02.449+00
887d9dba-9dcf-4e4b-b2d0-9239925893f1	LIQ-0000035	2026-04-01 15:50:12.244+00	4.50	0.13	4.37	0.00	4.37	0.00	0.00	4.37	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:50:12.244+00	2026-04-01 15:50:12.443+00
795a999f-1d86-410a-8b1c-8f206cb34739	LIQ-0000036	2026-04-01 15:52:00.301+00	96.80	2.90	93.90	0.00	93.90	0.00	0.00	93.90	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:52:00.302+00	2026-04-01 15:52:00.522+00
054646cf-7984-4119-b0a5-76465fd4a94b	LIQ-0000037	2026-04-01 15:52:31.672+00	4.90	0.14	4.76	0.00	4.76	0.00	0.00	4.76	0.00	Pendiente	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:52:31.673+00	2026-04-01 15:52:31.842+00
05a973d5-5a1a-40e4-8a9a-15b26c551ead	LIQ-0000038	2026-04-01 15:53:10.071+00	44.00	1.31	42.69	0.00	42.69	0.00	0.00	42.69	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:53:10.071+00	2026-04-01 15:53:10.285+00
c86bc212-15bd-4485-b141-1ad397f149c7	LIQ-0000039	2026-04-01 15:55:27.149+00	87.74	2.63	85.11	0.00	85.11	0.00	0.00	85.11	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:55:27.149+00	2026-04-01 15:55:27.38+00
81b9240f-5741-44d4-9e78-e3c9329caa87	LIQ-0000040	2026-04-01 15:55:58.025+00	137.00	4.10	132.90	0.00	132.90	0.00	0.00	132.90	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:55:58.025+00	2026-04-01 15:55:58.214+00
c055b336-8dcf-4b91-a06b-4aa31715ae71	LIQ-0000041	2026-04-01 15:56:26.633+00	412.16	12.36	399.80	0.00	399.80	0.00	0.00	399.80	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:56:26.634+00	2026-04-01 15:56:26.814+00
f4f87733-e27b-4bb4-9c18-cc40599dfd6c	LIQ-0000042	2026-04-01 15:57:10.084+00	266.20	7.98	258.22	0.00	258.22	0.00	0.00	258.22	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:57:10.084+00	2026-04-01 15:57:10.32+00
01ede9d5-7ee9-4b98-9997-44e6f29ed035	LIQ-0000043	2026-04-01 15:58:00.797+00	26.40	0.79	25.61	0.00	25.61	0.00	0.00	25.61	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 15:58:00.797+00	2026-04-01 15:58:00.956+00
55f203d3-1174-4f15-a706-87515925824f	LIQ-0000044	2026-04-01 16:04:23.567+00	136.00	0.00	136.00	0.00	136.00	0.00	0.00	136.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 16:04:23.567+00	2026-04-01 16:04:23.773+00
d7b18cc4-fd77-46f5-962c-f8acf048b442	LIQ-0000045	2026-04-01 16:04:57.641+00	4.25	0.00	4.25	0.00	4.25	0.00	0.00	4.25	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 16:04:57.641+00	2026-04-01 16:04:57.761+00
49874bd9-fcda-42e3-8871-ba321affac26	LIQ-0000046	2026-04-01 16:05:23.374+00	51.00	0.00	51.00	0.00	51.00	0.00	0.00	51.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 16:05:23.374+00	2026-04-01 16:05:23.547+00
ee40c86f-414a-40a6-8667-7f3dd5e13296	LIQ-0000047	2026-04-01 16:05:57.249+00	3.75	0.00	3.75	0.00	3.75	0.00	0.00	3.75	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 16:05:57.25+00	2026-04-01 16:05:57.373+00
1489dac4-044a-4399-8066-e13b43f992cc	LIQ-0000048	2026-04-01 16:07:24.799+00	61.20	1.19	60.01	0.00	60.01	0.00	0.00	60.01	0.00	Pendiente	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 16:07:24.799+00	2026-04-01 16:07:24.978+00
8742caf3-959f-43d8-8a05-0352314b8e31	LIQ-0000049	2026-04-01 16:08:10.986+00	15.30	0.00	15.30	0.00	15.30	0.00	0.00	15.30	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 16:08:10.986+00	2026-04-01 16:08:11.164+00
fe00a0c3-9527-4996-91b2-035e9239b6ba	LIQ-0000050	2026-04-01 18:37:18.584+00	3.30	0.09	3.21	0.00	3.21	0.00	0.00	3.21	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 18:37:18.585+00	2026-04-01 18:37:18.798+00
21495ead-f14f-496c-b748-842624cbe49f	LIQ-0000051	2026-04-01 19:13:04.732+00	1.12	0.03	1.09	0.00	1.09	0.00	0.00	1.09	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-01 19:13:04.733+00	2026-04-01 19:13:04.892+00
bab432c2-66b0-40ec-80c7-e861280ac66f	LIQ-0000052	2026-04-02 16:09:10.634+00	85.00	0.00	85.00	0.00	85.00	0.00	0.00	85.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-02 16:09:10.635+00	2026-04-02 16:09:10.774+00
3045ce34-5174-4192-aa1d-5747347c5660	LIQ-0000053	2026-04-02 16:09:35.34+00	5.09	0.00	5.09	0.00	5.09	0.00	0.00	5.09	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-02 16:09:35.34+00	2026-04-02 16:09:35.509+00
54185ec0-63be-4fe8-b541-13278c09ceeb	LIQ-0000054	2026-04-02 16:10:02.167+00	5.09	0.00	5.09	0.00	5.09	0.00	0.00	5.09	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-02 16:10:02.167+00	2026-04-02 16:10:02.385+00
016c39b8-956f-4547-a593-940acaf1be49	LIQ-0000055	2026-04-02 16:10:35.988+00	127.50	0.00	127.50	0.00	127.50	0.00	0.00	127.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-02 16:10:35.988+00	2026-04-02 16:10:36.109+00
d46aa130-66fc-4a17-b02c-f850b3c6f1b0	LIQ-0000056	2026-04-02 18:06:26.124+00	25.30	0.75	24.55	0.00	24.55	0.00	0.00	24.55	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-02 18:06:26.125+00	2026-04-02 18:06:26.342+00
cdd3912d-ea0f-4b02-bd81-33b128d58868	LIQ-0000057	2026-04-02 20:31:55.391+00	27.36	0.82	26.54	0.00	26.54	0.00	0.00	26.54	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	c1a349f2-0ff5-4a39-acf0-78f61c45b817	2026-04-02 20:31:55.392+00	2026-04-02 20:31:55.595+00
cdda056e-0ef1-4332-b17a-15dc665fa2dd	LIQ-0000058	2026-04-02 22:09:00.404+00	11.00	0.32	10.68	0.00	10.68	0.00	0.00	10.68	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-02 22:09:00.404+00	2026-04-02 22:09:00.613+00
d04e84ff-5e93-46fb-abce-5659d65237e3	LIQ-0000059	2026-04-04 17:34:38.801+00	17.60	0.52	17.08	0.00	17.08	0.00	0.00	17.08	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-04 17:34:38.802+00	2026-04-04 17:34:39.07+00
93cbd3b9-5a95-42a3-b039-320c0aba4fd6	LIQ-0000060	2026-04-04 17:35:37.358+00	26.56	0.79	25.77	0.00	25.77	0.00	0.00	25.77	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-04 17:35:37.358+00	2026-04-04 17:35:37.707+00
065d9815-6f19-4477-a78f-07e17361ee45	LIQ-0000061	2026-04-04 17:36:21.945+00	20.90	0.62	20.28	0.00	20.28	0.00	0.00	20.28	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-04 17:36:21.945+00	2026-04-04 17:36:22.175+00
5a70e473-2d52-4ec9-971d-35c0f4171ce2	LIQ-0000062	2026-04-04 17:37:10.248+00	16.00	0.48	15.52	0.00	15.52	0.00	0.00	15.52	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-04 17:37:10.248+00	2026-04-04 17:37:10.427+00
e7b985bf-abef-4ef6-944f-044b827cee3b	LIQ-0000063	2026-04-04 17:37:49.087+00	61.60	1.84	59.76	0.00	59.76	0.00	0.00	59.76	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-04 17:37:49.088+00	2026-04-04 17:37:49.29+00
596a6bc1-c5da-4b85-bdd8-273b49fd090a	LIQ-0000064	2026-04-04 18:09:44.887+00	17.60	0.52	17.08	0.00	17.08	0.00	0.00	17.08	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-04 18:09:44.888+00	2026-04-04 18:09:45.15+00
2717e06c-3efb-477c-9b8d-48950bcc01ed	LIQ-0000065	2026-04-04 19:26:59.13+00	5.50	0.16	5.34	0.00	5.34	0.00	0.00	5.34	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-04 19:26:59.13+00	2026-04-04 19:26:59.28+00
06b6b10f-fa1a-4eb2-a0bc-cb443fc0adb6	LIQ-0000066	2026-04-06 18:36:38.836+00	90.00	2.70	87.30	0.00	87.30	0.00	0.00	87.30	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-06 18:36:38.837+00	2026-04-06 18:36:39.032+00
28002cf7-4edd-4828-9372-4a425fb67ca6	LIQ-0000067	2026-04-06 18:37:09.84+00	14.04	0.42	13.62	0.00	13.62	0.00	0.00	13.62	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-06 18:37:09.84+00	2026-04-06 18:37:10.037+00
10d0016e-583a-4083-bbd1-49572a3aef62	LIQ-0000068	2026-04-06 18:38:06.837+00	137.28	4.11	133.17	0.00	133.17	0.00	0.00	133.17	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-06 18:38:06.837+00	2026-04-06 18:38:07+00
ec773a21-2b56-4db6-b446-72a81b7aea18	LIQ-0000069	2026-04-06 18:38:39.791+00	71.50	2.14	69.36	0.00	69.36	0.00	0.00	69.36	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-06 18:38:39.791+00	2026-04-06 18:38:39.967+00
e7ae8105-8d22-4f98-b8e8-ead4f69c3365	LIQ-0000070	2026-04-06 18:39:06.409+00	8.00	0.24	7.76	0.00	7.76	0.00	0.00	7.76	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-06 18:39:06.409+00	2026-04-06 18:39:06.601+00
e80a85ed-9b71-4899-bfa9-9cdd0861ca69	LIQ-0000071	2026-04-06 18:40:18.647+00	5.75	0.17	5.58	0.00	5.58	0.00	0.00	5.58	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-06 18:40:18.647+00	2026-04-06 18:40:18.872+00
86a549d7-e3b2-4ebb-8954-6c3e4b749b28	LIQ-0000072	2026-04-06 18:40:47.765+00	9.60	0.28	9.32	0.00	9.32	0.00	0.00	9.32	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-06 18:40:47.765+00	2026-04-06 18:40:48.107+00
81aa3e21-aa4b-4231-871d-4b9067b5cddb	LIQ-0000073	2026-04-06 18:42:42.206+00	5.92	0.17	5.75	0.00	5.75	0.00	0.00	5.75	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-06 18:42:42.206+00	2026-04-06 18:42:42.433+00
5835b333-6037-42c7-adcc-663a14d0d204	LIQ-0000074	2026-04-06 18:46:27.251+00	68.60	2.05	66.55	0.00	66.55	0.00	0.00	66.55	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-06 18:46:27.251+00	2026-04-06 18:46:27.445+00
4696f995-2932-470f-84ee-ae40d844d021	LIQ-0000075	2026-04-06 21:41:06.671+00	71.50	2.14	69.36	0.00	69.36	0.00	0.00	69.36	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-06 21:41:06.672+00	2026-04-06 21:41:06.938+00
dc7555f5-e069-4f34-a0fe-e3a532804a4d	LIQ-0000076	2026-04-06 21:41:41.646+00	7.70	0.23	7.47	0.00	7.47	0.00	0.00	7.47	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-06 21:41:41.646+00	2026-04-06 21:41:41.972+00
c4385606-d15f-456c-a099-bab455d04346	LIQ-0000077	2026-04-07 19:33:15.096+00	12.60	0.37	12.23	0.00	12.23	0.00	0.00	12.23	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 19:33:15.096+00	2026-04-07 19:33:15.309+00
6a05b7b1-2e10-4a5c-868e-bc63f3efe2be	LIQ-0000078	2026-04-07 19:34:07.287+00	19.00	0.57	18.43	0.00	18.43	0.00	0.00	18.43	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 19:34:07.287+00	2026-04-07 19:34:07.532+00
84bae186-4931-471a-8ee6-738cf1905341	LIQ-0000079	2026-04-07 19:36:13.602+00	12.15	0.36	11.79	0.00	11.79	0.00	0.00	11.79	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 19:36:13.602+00	2026-04-07 19:36:13.771+00
22b82795-7b8c-4c20-92be-cb56668b93c8	LIQ-0000080	2026-04-07 19:36:52.345+00	11.85	0.35	11.50	0.00	11.50	0.00	0.00	11.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 19:36:52.345+00	2026-04-07 19:36:52.599+00
bfe4df9e-b36d-4370-9877-ab8e252a69f1	LIQ-0000081	2026-04-07 19:38:13.891+00	67.05	2.01	65.04	0.00	65.04	0.00	0.00	65.04	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 19:38:13.892+00	2026-04-07 19:38:14.047+00
5d233984-465f-4b49-be64-660a3fa88c65	LIQ-0000082	2026-04-07 20:42:14.055+00	22.05	0.66	21.39	0.00	21.39	0.00	0.00	21.39	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 20:42:14.055+00	2026-04-07 20:42:14.272+00
2e161662-209d-46fb-8677-0bba0be640e0	LIQ-0000083	2026-04-07 20:42:59.289+00	3.64	0.10	3.54	0.00	3.54	0.00	0.00	3.54	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 20:42:59.289+00	2026-04-07 20:42:59.525+00
c740b8c2-0f10-4fcb-a193-68acd3452f25	LIQ-0000084	2026-04-07 22:44:24.488+00	11.20	0.00	11.20	0.00	11.20	0.00	0.00	11.20	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 22:44:24.489+00	2026-04-07 22:44:24.695+00
5e55113b-1d10-4190-a9ee-1ff20cb75e0d	LIQ-0000085	2026-04-07 22:44:51.84+00	10.40	0.00	10.40	0.00	10.40	0.00	0.00	10.40	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 22:44:51.84+00	2026-04-07 22:44:52.006+00
02881b2a-e288-4113-be06-8ce7c6ea1cd0	LIQ-0000086	2026-04-07 22:45:11.841+00	24.80	0.00	24.80	0.00	24.80	0.00	0.00	24.80	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 22:45:11.841+00	2026-04-07 22:45:12.028+00
0339910b-aea0-44b9-87b6-ab7f6af6d477	LIQ-0000087	2026-04-07 22:45:56.277+00	66.40	0.00	66.40	0.00	66.40	0.00	0.00	66.40	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 22:45:56.277+00	2026-04-07 22:45:56.425+00
66dc7ca5-39e1-4a5a-b399-44be7a46d8ff	LIQ-0000088	2026-04-07 22:46:19.333+00	4.00	0.00	4.00	0.00	4.00	0.00	0.00	4.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 22:46:19.334+00	2026-04-07 22:46:19.529+00
78fe0c17-ae74-4f6e-ba63-5178dbe1e795	LIQ-0000089	2026-04-07 22:47:35.347+00	93.50	2.80	90.70	0.00	90.70	0.00	0.00	90.70	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-07 22:47:35.347+00	2026-04-07 22:47:35.767+00
5b5a40c7-aa0b-47aa-8674-495255dbc1a9	LIQ-0000090	2026-04-08 16:11:44.762+00	80.25	0.00	80.25	0.00	80.25	0.00	0.00	80.25	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 16:11:44.847+00	2026-04-08 16:11:45.35+00
5cf15759-709c-438c-92d6-cd71ee7803ad	LIQ-0000091	2026-04-08 16:12:23.665+00	30.00	0.00	30.00	0.00	30.00	0.00	0.00	30.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 16:12:23.665+00	2026-04-08 16:12:23.86+00
409e20c4-feff-4bf7-858f-d3bfe9b58511	LIQ-0000092	2026-04-08 16:15:26.343+00	95.70	2.67	93.03	0.00	93.03	0.00	0.00	93.03	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 16:15:26.344+00	2026-04-08 16:15:26.57+00
e112ef97-de9f-42eb-a22f-72b0365c072f	LIQ-0000093	2026-04-08 16:16:39.799+00	33.75	1.01	32.74	0.00	32.74	0.00	0.00	32.74	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 16:16:39.799+00	2026-04-08 16:16:40.054+00
8e1ea527-2f10-47fa-95bb-82af9eae7998	LIQ-0000094	2026-04-08 16:17:24.444+00	28.50	0.00	28.50	0.00	28.50	0.00	0.00	28.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 16:17:24.444+00	2026-04-08 16:17:24.697+00
deeb4df1-5c8b-4244-b958-6accfc2fbb85	LIQ-0000095	2026-04-08 16:25:28.53+00	18.75	0.71	18.04	0.00	18.04	0.00	0.00	18.04	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 16:25:28.53+00	2026-04-08 16:25:28.739+00
e790d87f-9bc7-4621-a37d-cdaf8ad2c629	LIQ-0000096	2026-04-08 16:27:12.144+00	10.50	0.42	10.08	0.00	10.08	0.00	0.00	10.08	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 16:27:12.145+00	2026-04-08 16:27:12.449+00
9e33ba84-caa3-4ca5-a5b2-0188c68665c8	LIQ-0000097	2026-04-08 16:28:26.457+00	7.80	0.23	7.57	0.00	7.56	0.00	0.00	7.56	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 16:28:26.457+00	2026-04-08 16:28:26.738+00
a7bba41e-8f96-42d8-b1f6-e67819522bf6	LIQ-0000098	2026-04-08 16:29:15.374+00	19.20	0.57	18.63	0.00	18.63	0.00	0.00	18.63	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 16:29:15.374+00	2026-04-08 16:29:15.842+00
1a92652e-e132-454f-8aa8-87bbfaadb849	LIQ-0000099	2026-04-08 20:34:14.572+00	85.80	2.57	83.23	0.00	83.23	0.00	0.00	83.23	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 20:34:14.573+00	2026-04-08 20:34:14.884+00
3ed15aeb-f2c9-44da-a609-793effc9d3bb	LIQ-0000100	2026-04-08 20:35:06.063+00	4.08	0.12	3.96	0.00	3.96	0.00	0.00	3.96	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 20:35:06.063+00	2026-04-08 20:35:06.325+00
88485edf-ddac-48ef-9312-72d75ea60641	LIQ-0000101	2026-04-08 20:36:14.38+00	7.80	0.23	7.57	0.00	7.57	0.00	0.00	7.57	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-08 20:36:14.38+00	2026-04-08 20:36:14.603+00
2038c79d-624a-493c-9cc0-11831f989d7e	LIQ-0000102	2026-04-09 19:09:29.711+00	3.00	0.00	3.00	0.00	3.00	0.00	0.00	3.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:09:29.712+00	2026-04-09 19:09:29.902+00
71e5f7c0-a37c-4cf3-891d-bab93ace7c34	LIQ-0000103	2026-04-09 19:09:51.242+00	30.00	0.00	30.00	0.00	30.00	0.00	0.00	30.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:09:51.242+00	2026-04-09 19:09:51.5+00
90b9dfc8-b67f-4b0b-ac24-ce8a28fdaba4	LIQ-0000104	2026-04-09 19:10:12.681+00	56.25	0.00	56.25	0.00	56.25	0.00	0.00	56.25	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:10:12.681+00	2026-04-09 19:10:12.898+00
8fe380d6-a684-43e4-97bd-26645759b872	LIQ-0000105	2026-04-09 19:10:53.475+00	1.10	0.03	1.07	0.00	1.07	0.00	0.00	1.07	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:10:53.475+00	2026-04-09 19:10:53.732+00
e821bcf4-2da4-45d1-83f6-561f42ad3e74	LIQ-0000106	2026-04-09 19:11:19.999+00	17.60	0.52	17.08	0.00	17.08	0.00	0.00	17.08	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:11:19.999+00	2026-04-09 19:11:20.158+00
9bf581c8-74dc-4155-afba-c8c2419b8189	LIQ-0000107	2026-04-09 19:11:53.124+00	15.40	0.46	14.94	0.00	14.94	0.00	0.00	14.94	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:11:53.124+00	2026-04-09 19:11:53.398+00
46d9469c-7130-458b-9f75-5a58469df3f4	LIQ-0000108	2026-04-09 19:14:17.843+00	1.15	0.00	1.15	0.00	1.15	0.00	0.00	1.15	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:14:17.844+00	2026-04-09 19:14:18.043+00
3317e5f2-edef-4b3d-9d53-a0fb5ab4d56f	LIQ-0000109	2026-04-09 19:14:55.943+00	53.90	1.61	52.29	0.00	52.29	0.00	0.00	52.29	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:14:55.944+00	2026-04-09 19:14:56.197+00
9fd5e4d3-9f41-4318-8e5b-029ea54a45cd	LIQ-0000110	2026-04-09 19:15:22.304+00	5.50	0.16	5.34	0.00	5.34	0.00	0.00	5.34	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:15:22.304+00	2026-04-09 19:15:22.546+00
00ab8e75-f5c8-4534-b0d3-2673744a50bb	LIQ-0000111	2026-04-09 19:16:09.488+00	96.60	2.89	93.71	0.00	93.71	0.00	0.00	93.71	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:16:09.488+00	2026-04-09 19:16:09.711+00
837efa01-6541-4a78-8ee3-9282a8d4415b	LIQ-0000112	2026-04-09 19:16:34.746+00	4.40	0.13	4.27	0.00	4.27	0.00	0.00	4.27	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:16:34.746+00	2026-04-09 19:16:35.304+00
ddbf5a6d-5eb4-40d5-9d4c-3d829b8a8723	LIQ-0000113	2026-04-09 19:17:12.443+00	56.10	1.68	54.42	0.00	54.42	0.00	0.00	54.42	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:17:12.443+00	2026-04-09 19:17:12.637+00
c9f81f62-d4b0-4cf0-8235-c3aac5075233	LIQ-0000114	2026-04-09 19:17:44.058+00	17.60	0.52	17.08	0.00	17.08	0.00	0.00	17.08	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 19:17:44.058+00	2026-04-09 19:17:44.335+00
5d438660-647b-4123-a48f-3f7d5437808a	LIQ-0000115	2026-04-09 21:57:24.104+00	24.31	0.72	23.59	0.00	23.59	0.00	0.00	23.59	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-09 21:57:24.105+00	2026-04-09 21:57:24.353+00
a1da7605-8d11-4b8e-af05-3ca015475a0d	LIQ-0000116	2026-04-10 16:14:13.18+00	4.40	0.13	4.27	0.00	4.27	0.00	0.00	4.27	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:14:13.18+00	2026-04-10 16:14:13.422+00
830ffdd2-1b8a-45c5-a934-256f9c6073aa	LIQ-0000117	2026-04-10 16:14:40.24+00	56.70	1.70	55.00	0.00	55.00	0.00	0.00	55.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:14:40.24+00	2026-04-10 16:14:40.497+00
4e3bd702-593e-4a19-b966-83e2dd821261	LIQ-0000118	2026-04-10 16:16:57.277+00	19.95	0.59	19.36	0.00	19.36	0.00	0.00	19.36	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:16:57.277+00	2026-04-10 16:16:57.467+00
50dbcfd4-e087-453c-b922-68ca0ddbb21c	LIQ-0000119	2026-04-10 16:17:26.735+00	17.60	0.52	17.08	0.00	17.08	0.00	0.00	17.08	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:17:26.735+00	2026-04-10 16:17:27.113+00
8954d1c6-c7b7-49c2-87c9-435c168284ad	LIQ-0000120	2026-04-10 16:18:06.929+00	67.84	2.03	65.81	0.00	65.81	0.00	0.00	65.81	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:18:06.929+00	2026-04-10 16:18:07.152+00
9f0a3290-1622-4e8a-a0b9-ddbdebc8f3b0	LIQ-0000121	2026-04-10 16:18:39.872+00	93.00	2.79	90.21	0.00	90.21	0.00	0.00	90.21	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:18:39.872+00	2026-04-10 16:18:40.168+00
625bfaeb-7b67-46ee-a21b-6d5c22303cc1	LIQ-0000122	2026-04-10 16:19:12.5+00	129.00	3.87	125.13	0.00	125.13	0.00	0.00	125.13	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:19:12.5+00	2026-04-10 16:19:12.728+00
5f19af89-3a98-4067-98aa-d3eb3d2aae69	LIQ-0000123	2026-04-10 16:20:04.232+00	71.40	2.14	69.26	0.00	69.26	0.00	0.00	69.26	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:20:04.232+00	2026-04-10 16:20:04.385+00
b71bc2b7-3c3e-4a2a-b7c5-b2c4d881c637	LIQ-0000124	2026-04-10 16:20:49.927+00	133.19	3.99	129.20	0.00	129.20	0.00	0.00	129.20	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:20:49.927+00	2026-04-10 16:20:50.139+00
e81b1f96-8857-4e5d-9457-7ec3755fbfc7	LIQ-0000125	2026-04-10 16:22:44.488+00	65.00	1.95	63.05	0.00	63.05	0.00	0.00	63.05	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:22:44.488+00	2026-04-10 16:22:44.792+00
07f2421a-8ba5-46b3-90ba-289fe4974550	LIQ-0000126	2026-04-10 16:23:18.093+00	86.00	2.58	83.42	0.00	83.42	0.00	0.00	83.42	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:23:18.093+00	2026-04-10 16:23:18.355+00
12355294-0beb-4b91-9c0d-fc4d538eba10	LIQ-0000127	2026-04-10 16:24:11.559+00	36.30	1.08	35.22	0.00	35.22	0.00	0.00	35.22	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:24:11.559+00	2026-04-10 16:24:11.826+00
709f105e-3324-4657-b633-ddf99c766c12	LIQ-0000128	2026-04-10 16:25:14.936+00	84.21	2.52	81.69	0.00	81.69	0.00	0.00	81.69	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:25:14.936+00	2026-04-10 16:25:15.127+00
d88e031a-881a-41d6-b9bb-41c8f0152081	LIQ-0000129	2026-04-10 16:25:48.291+00	31.85	0.95	30.90	0.00	30.90	0.00	0.00	30.90	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:25:48.291+00	2026-04-10 16:25:48.537+00
c0ea8911-398c-418e-9799-a42e033fdc00	LIQ-0000130	2026-04-10 16:27:19.253+00	39.10	1.17	37.93	0.00	37.93	0.00	0.00	37.93	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:27:19.253+00	2026-04-10 16:27:19.532+00
d852f1e2-5c4e-4876-8007-7f4a91e99220	LIQ-0000131	2026-04-10 16:28:09.866+00	88.06	2.64	85.42	0.00	85.42	0.00	0.00	85.42	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:28:09.866+00	2026-04-10 16:28:10.07+00
6ab595a7-a711-4cc3-a73c-04ec0b29dd07	LIQ-0000132	2026-04-10 16:28:52.049+00	34.29	1.02	33.27	0.00	33.27	0.00	0.00	33.27	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:28:52.049+00	2026-04-10 16:28:52.242+00
82163b3d-7b20-4727-840d-b6d850aaad44	LIQ-0000133	2026-04-10 16:29:43.058+00	22.10	0.66	21.44	0.00	21.44	0.00	0.00	21.44	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:29:43.058+00	2026-04-10 16:29:43.279+00
4349c9c3-ef2f-4c27-8dd8-58243a1cd8a0	LIQ-0000134	2026-04-10 16:30:28.757+00	43.86	1.31	42.55	0.00	42.55	0.00	0.00	42.55	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:30:28.757+00	2026-04-10 16:30:28.979+00
07c265e9-4e03-4b36-ae99-0175715b198c	LIQ-0000135	2026-04-10 16:31:09.168+00	16.66	0.49	16.17	0.00	16.17	0.00	0.00	16.17	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:31:09.168+00	2026-04-10 16:31:09.372+00
04cad26e-58b3-48d3-9118-8df35f56bd53	LIQ-0000136	2026-04-10 16:31:54.648+00	19.36	0.58	18.78	0.00	18.78	0.00	0.00	18.78	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 16:31:54.648+00	2026-04-10 16:31:54.928+00
37f8dcb4-3055-4a97-84ab-2197eb2e719e	LIQ-0000137	2026-04-10 20:29:11.435+00	6.60	0.19	6.41	0.00	6.41	0.00	0.00	6.41	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 20:29:11.436+00	2026-04-10 20:29:12.041+00
7ded42ff-2cc1-4e8f-9124-22f6282d6adb	LIQ-0000138	2026-04-10 20:30:02.245+00	96.60	2.89	93.71	0.00	93.71	0.00	0.00	93.71	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 20:30:02.245+00	2026-04-10 20:30:02.44+00
12bd36cf-e342-4463-9c45-e15899843ffb	LIQ-0000139	2026-04-10 20:30:33.047+00	24.65	0.73	23.92	0.00	23.92	0.00	0.00	23.92	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 20:30:33.047+00	2026-04-10 20:30:33.339+00
a633f8bb-f817-4f1c-a5f0-a134a272d943	LIQ-0000140	2026-04-10 22:24:11.744+00	20.80	0.00	20.80	0.00	20.80	0.00	0.00	20.80	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 22:24:11.744+00	2026-04-10 22:24:11.934+00
f837753a-2334-45a6-a75f-38d864a2242a	LIQ-0000141	2026-04-10 22:24:36.831+00	29.75	0.00	29.75	0.00	29.75	0.00	0.00	29.75	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 22:24:36.831+00	2026-04-10 22:24:36.994+00
b98aec14-45a9-4d58-8728-52d50c4024f1	LIQ-0000142	2026-04-10 22:25:02.642+00	8.00	0.00	8.00	0.00	8.00	0.00	0.00	8.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-10 22:25:02.642+00	2026-04-10 22:25:02.809+00
fc3782bc-e766-4698-b4f0-3025daffa24a	LIQ-0000143	2026-04-11 16:07:31.668+00	27.20	0.00	27.20	0.00	27.20	0.00	0.00	27.20	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:07:31.669+00	2026-04-11 16:07:31.883+00
157be795-e095-45d1-a125-5d03e1fe750c	LIQ-0000144	2026-04-11 16:08:34.841+00	31.45	0.00	31.45	0.00	31.45	0.00	0.00	31.45	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:08:34.841+00	2026-04-11 16:08:34.998+00
cc4660a0-af99-45af-97c6-bc6d9bf4cfe9	LIQ-0000145	2026-04-11 16:11:10.683+00	181.50	5.44	176.06	0.00	176.06	0.00	0.00	176.06	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:11:10.683+00	2026-04-11 16:11:10.918+00
23629c56-d241-4032-ae6a-0bfc1e653abb	LIQ-0000146	2026-04-11 16:13:54.265+00	20.39	0.38	20.01	0.00	20.01	0.00	0.00	20.01	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:13:54.265+00	2026-04-11 16:13:54.454+00
926b27ab-99be-4c99-9ed6-0f3864f31826	LIQ-0000147	2026-04-11 16:15:35.472+00	25.50	0.00	25.50	0.00	25.50	0.00	0.00	25.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:15:35.472+00	2026-04-11 16:15:35.862+00
51438f0a-a4a8-4865-b3c7-acc162f9d746	LIQ-0000148	2026-04-11 16:17:59.39+00	7.31	0.21	7.10	0.00	7.10	0.00	0.00	7.10	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:17:59.39+00	2026-04-11 16:17:59.692+00
e16c0f2d-b72a-44ea-81eb-a1b9df24834e	LIQ-0000149	2026-04-11 16:18:24.084+00	59.50	0.00	59.50	0.00	59.50	0.00	0.00	59.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:18:24.084+00	2026-04-11 16:18:24.247+00
5837d910-f8be-460f-91e2-267824f7e173	LIQ-0000150	2026-04-11 16:24:59.699+00	35.70	1.07	34.63	0.00	34.63	0.00	0.00	34.63	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:24:59.7+00	2026-04-11 16:24:59.85+00
11a5e154-0037-43c2-8020-97275123eaa1	LIQ-0000151	2026-04-11 16:25:24.755+00	88.00	2.63	85.37	0.00	85.37	0.00	0.00	85.37	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:25:24.756+00	2026-04-11 16:25:24.935+00
e4ad21de-af39-44fa-903f-41ec68fb2360	LIQ-0000152	2026-04-11 16:25:56.205+00	58.80	1.76	57.04	0.00	57.04	0.00	0.00	57.04	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:25:56.205+00	2026-04-11 16:25:56.444+00
4b239367-879c-4a04-a235-6163a10ce9cf	LIQ-0000153	2026-04-11 16:26:41.049+00	82.88	2.48	80.40	0.00	80.40	0.00	0.00	80.40	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:26:41.05+00	2026-04-11 16:26:41.23+00
f2185309-1778-4ca9-b746-3ca6315d2103	LIQ-0000154	2026-04-11 16:27:11.195+00	109.47	3.28	106.19	0.00	106.19	0.00	0.00	106.19	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:27:11.195+00	2026-04-11 16:27:11.428+00
bd5744d4-e242-4c53-bcf8-b01e8a44b8a9	LIQ-0000155	2026-04-11 16:28:44.585+00	94.76	2.84	91.92	0.00	91.92	0.00	0.00	91.92	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:28:44.586+00	2026-04-11 16:28:44.748+00
07ae510b-34a7-4c35-b37c-263970ad4fa7	LIQ-0000156	2026-04-11 16:29:26.645+00	87.40	2.62	84.78	0.00	84.78	0.00	0.00	84.78	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:29:26.646+00	2026-04-11 16:29:26.853+00
aa7e2867-b8b3-43ce-b063-5961a379074e	LIQ-0000157	2026-04-11 16:29:57.242+00	8.80	0.26	8.54	0.00	8.54	0.00	0.00	8.54	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:29:57.242+00	2026-04-11 16:29:57.47+00
016ffcfd-79bc-486a-85f5-d6f21990115e	LIQ-0000158	2026-04-11 16:30:22.24+00	4.40	0.13	4.27	0.00	4.27	0.00	0.00	4.27	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:30:22.24+00	2026-04-11 16:30:22.394+00
ecf0caba-d7cb-4e31-b0f8-86a2a343ba12	LIQ-0000159	2026-04-11 16:30:59.342+00	21.00	0.63	20.37	0.00	20.37	0.00	0.00	20.37	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:30:59.342+00	2026-04-11 16:30:59.567+00
1508acbd-9c09-4ad3-936c-7cec0e7d6e59	LIQ-0000160	2026-04-11 16:31:30.142+00	31.15	0.93	30.22	0.00	30.22	0.00	0.00	30.22	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:31:30.142+00	2026-04-11 16:31:30.359+00
cca8163b-d400-4dc0-ae6e-394842b18fd9	LIQ-0000161	2026-04-11 16:32:08.517+00	8.75	0.26	8.49	0.00	8.49	0.00	0.00	8.49	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:32:08.517+00	2026-04-11 16:32:08.736+00
218ddb97-b366-4043-b8d4-e81b1e419786	LIQ-0000162	2026-04-11 16:32:39.911+00	43.40	1.30	42.10	0.00	42.10	0.00	0.00	42.10	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:32:39.911+00	2026-04-11 16:32:40.192+00
8b35bb97-1711-477e-8d44-6882f7573602	LIQ-0000163	2026-04-11 16:33:12.586+00	85.05	2.55	82.50	0.00	82.50	0.00	0.00	82.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:33:12.586+00	2026-04-11 16:33:12.85+00
fc6606a1-35a7-4a15-a1e9-6a577d3b2c24	LIQ-0000164	2026-04-11 16:34:55.139+00	12.25	0.36	11.89	0.00	11.89	0.00	0.00	11.89	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:34:55.139+00	2026-04-11 16:34:55.441+00
74cbc184-c4f2-4f7d-a650-780259cea6d8	LIQ-0000165	2026-04-11 16:35:42.54+00	6.65	0.26	6.39	0.00	6.39	0.00	0.00	6.39	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:35:42.541+00	2026-04-11 16:35:42.731+00
41637e68-bdc3-4a7d-969d-da411f3e877d	LIQ-0000166	2026-04-11 16:36:12.747+00	48.30	1.44	46.86	0.00	46.86	0.00	0.00	46.86	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:36:12.75+00	2026-04-11 16:36:12.957+00
902e02cb-c728-40cb-8757-bd97f31953c1	LIQ-0000167	2026-04-11 16:36:59.372+00	22.40	0.67	21.73	0.00	21.73	0.00	0.00	21.73	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 16:36:59.372+00	2026-04-11 16:36:59.642+00
a71ea85c-07ef-43db-93b2-445f4eddd6d3	LIQ-0000168	2026-04-11 19:14:43.44+00	3.00	0.09	2.91	0.00	2.91	0.00	0.00	2.91	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 19:14:43.44+00	2026-04-11 19:14:43.716+00
f65cbfc1-5913-49d3-b968-de1a4bc0da69	LIQ-0000169	2026-04-11 19:15:56.357+00	1.78	0.05	1.73	0.00	1.73	0.00	0.00	1.73	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 19:15:56.357+00	2026-04-11 19:15:56.536+00
dbf51650-7dbc-411e-9cd6-b444528f2cbb	LIQ-0000170	2026-04-11 19:16:27.037+00	52.80	1.58	51.22	0.00	51.22	0.00	0.00	51.22	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 19:16:27.037+00	2026-04-11 19:16:27.298+00
84304428-f6c6-4956-b396-4d5b818808af	LIQ-0000171	2026-04-11 19:17:20.425+00	78.20	2.34	75.86	0.00	75.86	0.00	0.00	75.86	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 19:17:20.425+00	2026-04-11 19:17:20.738+00
d8c6abb6-ee1a-4016-b54a-708f54b3d609	LIQ-0000172	2026-04-11 19:17:43.648+00	3.30	0.09	3.21	0.00	3.21	0.00	0.00	3.21	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 19:17:43.648+00	2026-04-11 19:17:43.895+00
dfacc269-721e-461a-94cd-f9e18b214fd4	LIQ-0000173	2026-04-11 19:18:53.006+00	98.35	2.95	95.40	0.00	95.40	0.00	0.00	95.40	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 19:18:53.006+00	2026-04-11 19:18:53.283+00
bd837d16-1d14-426f-81f1-d035d3d5fb96	LIQ-0000174	2026-04-11 19:22:03.471+00	2.10	0.06	2.04	0.00	2.04	0.00	0.00	2.04	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 19:22:03.472+00	2026-04-11 19:22:03.67+00
95936f96-2bf7-40b6-a24f-47de1d8e3e69	LIQ-0000175	2026-04-11 19:31:28.593+00	6.60	0.19	6.41	0.00	6.41	0.00	0.00	6.41	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 19:31:28.593+00	2026-04-11 19:31:28.782+00
09dca7b0-84a3-4ce2-8c18-f86e95abb2f3	LIQ-0000176	2026-04-11 19:33:16.1+00	5.50	0.16	5.34	0.00	5.34	0.00	0.00	5.34	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 19:33:16.1+00	2026-04-11 19:33:16.317+00
14f054d6-0cb6-4eaf-92d2-054b081169d3	LIQ-0000177	2026-04-11 20:27:25.991+00	27.20	0.81	26.39	0.00	26.39	0.00	0.00	26.39	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 20:27:25.992+00	2026-04-11 20:27:26.239+00
53c280c1-4c05-4da3-87f7-dd1d18c4cd24	LIQ-0000178	2026-04-11 20:28:02.703+00	34.34	1.20	33.14	0.00	33.14	0.00	0.00	33.14	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-11 20:28:02.704+00	2026-04-11 20:28:02.874+00
902a193d-ed2e-41c9-981d-911b0753dbca	LIQ-0000179	2026-04-13 16:09:34.484+00	192.10	0.00	192.10	0.00	192.10	0.00	0.00	192.10	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-13 16:09:34.485+00	2026-04-13 16:09:35.046+00
bf0a6579-cc20-4be4-ad80-8b9721bf03b5	LIQ-0000180	2026-04-13 16:09:53.54+00	17.00	0.00	17.00	0.00	17.00	0.00	0.00	17.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-13 16:09:53.54+00	2026-04-13 16:09:54.141+00
260cadeb-d758-4dfd-a5ce-18a9b4697509	LIQ-0000181	2026-04-13 16:10:16.361+00	5.09	0.00	5.09	0.00	5.09	0.00	0.00	5.09	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-13 16:10:16.362+00	2026-04-13 16:10:16.542+00
cca2015e-3f7f-4aac-9958-a733cb5ceab4	LIQ-0000182	2026-04-13 16:12:17.544+00	12.07	0.00	12.07	0.00	12.07	0.00	0.00	12.07	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-13 16:12:17.544+00	2026-04-13 16:12:17.841+00
a2d0777c-5295-4e48-963f-7ae996c49675	LIQ-0000183	2026-04-13 16:12:57.835+00	12.07	0.00	12.07	0.00	12.07	0.00	0.00	12.07	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-13 16:12:57.835+00	2026-04-13 16:12:57.97+00
18aed61e-be70-4f7c-b4a1-45797609b722	LIQ-0000184	2026-04-13 16:13:44.437+00	17.00	0.00	17.00	0.00	17.00	0.00	0.00	17.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-13 16:13:44.437+00	2026-04-13 16:13:44.7+00
d72955ba-e4b5-4dda-9232-2f039c208f87	LIQ-0000185	2026-04-13 16:14:09.707+00	5.09	0.00	5.09	0.00	5.09	0.00	0.00	5.09	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-13 16:14:09.708+00	2026-04-13 16:14:09.914+00
48fcd185-9610-4105-83ee-b0b4b6bc1069	LIQ-0000186	2026-04-13 16:14:52.546+00	4.25	0.00	4.25	0.00	4.25	0.00	0.00	4.25	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-13 16:14:52.546+00	2026-04-13 16:14:52.805+00
acfea689-bac9-4760-ae78-4cc81086eee6	LIQ-0000187	2026-04-13 19:27:28.905+00	15.30	0.45	14.85	0.00	14.85	0.00	0.00	14.85	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-13 19:27:28.905+00	2026-04-13 19:27:29.194+00
78bb89a1-cd2e-43aa-85e0-5ac080896693	LIQ-0000188	2026-04-14 20:12:18.587+00	4.76	0.14	4.62	0.00	4.62	0.00	0.00	4.62	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-14 20:12:18.588+00	2026-04-14 20:12:18.875+00
3d6ff5f1-d5dc-4b9a-a1ca-2f16eee4239c	LIQ-0000189	2026-04-14 20:13:46.46+00	23.63	0.70	22.93	0.00	22.93	0.00	0.00	22.93	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-14 20:13:46.46+00	2026-04-14 20:13:46.793+00
c1305d34-8057-46c6-9b89-f2939109cd84	LIQ-0000190	2026-04-14 20:14:15.284+00	7.02	0.21	6.81	0.00	6.81	0.00	0.00	6.81	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-14 20:14:15.284+00	2026-04-14 20:14:15.547+00
b2487492-c533-48f5-8b17-bf4f817202fe	LIQ-0000191	2026-04-14 20:15:13.751+00	9.60	0.28	9.32	0.00	9.32	0.00	0.00	9.32	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-14 20:15:13.751+00	2026-04-14 20:15:14.005+00
d0d12eec-5582-4659-a1bd-398e6cd2b4c3	LIQ-0000192	2026-04-15 16:02:11.042+00	34.00	0.00	34.00	0.00	34.00	0.00	0.00	34.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 16:02:11.043+00	2026-04-15 16:02:11.433+00
7d5e2751-ebe1-412c-8799-0e2fe4ad828a	LIQ-0000193	2026-04-15 16:02:32.537+00	22.10	0.00	22.10	0.00	22.10	0.00	0.00	22.10	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 16:02:32.537+00	2026-04-15 16:02:32.934+00
82b1cd97-25d9-40f3-a423-ed51512e602b	LIQ-0000194	2026-04-15 16:03:01.54+00	76.00	0.00	76.00	0.00	76.00	0.00	0.00	76.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 16:03:01.543+00	2026-04-15 16:03:01.804+00
0c7896b7-026f-4657-a71b-fa39d786b5d4	LIQ-0000195	2026-04-15 16:04:46.234+00	32.00	0.96	31.04	0.00	31.04	0.00	0.00	31.04	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 16:04:46.234+00	2026-04-15 16:04:46.488+00
af6fc6ae-23fc-464d-b9c2-a3906a522ce7	LIQ-0000196	2026-04-15 16:05:10.532+00	319.70	9.59	310.11	0.00	310.11	0.00	0.00	310.11	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 16:05:10.533+00	2026-04-15 16:05:10.737+00
e23f71a4-8fc5-4a29-a2ad-2d767a4ef514	LIQ-0000197	2026-04-15 16:06:00.937+00	79.34	2.38	76.96	0.00	76.96	0.00	0.00	76.96	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 16:06:00.937+00	2026-04-15 16:06:01.189+00
74495e5b-2fe9-411b-9453-2ce1f5547dc8	LIQ-0000198	2026-04-15 16:06:34.848+00	349.60	10.48	339.12	0.00	339.12	0.00	0.00	339.12	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 16:06:34.848+00	2026-04-15 16:06:35.15+00
8a6da259-b130-4eeb-a4bf-ebf3c4f051f7	LIQ-0000199	2026-04-15 16:07:23.841+00	93.15	2.79	90.36	0.00	90.36	0.00	0.00	90.36	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 16:07:23.841+00	2026-04-15 16:07:24.091+00
9181b938-79d1-4d89-861b-4b4d7ca0ad82	LIQ-0000200	2026-04-15 16:07:57.934+00	22.44	0.67	21.77	0.00	21.77	0.00	0.00	21.77	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 16:07:57.934+00	2026-04-15 16:07:58.214+00
bd30dec7-f10c-4051-bccd-4f1f46572b2c	LIQ-0000201	2026-04-15 16:08:28.436+00	8.26	0.24	8.02	0.00	8.02	0.00	0.00	8.02	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 16:08:28.436+00	2026-04-15 16:08:28.72+00
d65eee05-a62e-42b3-8572-ed10fabb33e2	LIQ-0000202	2026-04-15 16:08:57.636+00	334.95	10.04	324.91	0.00	324.91	0.00	0.00	324.91	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 16:08:57.636+00	2026-04-15 16:08:57.927+00
e6e5da9b-6a8a-4041-b7b6-811ca18f2d82	LIQ-0000203	2026-04-15 19:43:18.596+00	33.63	1.00	32.63	0.00	32.63	0.00	0.00	32.63	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 19:43:18.596+00	2026-04-15 19:43:18.925+00
5366474c-53fd-450b-9fc6-a8a0183dcff9	LIQ-0000204	2026-04-15 22:51:10.347+00	1806.00	0.00	1806.00	0.00	0.00	0.00	1806.00	1806.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 22:51:10.348+00	2026-04-15 22:51:10.613+00
8b94e1b5-11c6-4b90-99fe-62d49f41eec5	LIQ-0000205	2026-04-15 22:52:12.492+00	7399.35	0.00	7399.35	0.00	0.00	0.00	7399.35	7399.35	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 22:52:12.493+00	2026-04-15 22:52:12.777+00
6e5eac28-3e5c-4e8a-82c0-78cd93877833	LIQ-0000206	2026-04-15 22:53:03.752+00	7242.75	0.00	7242.75	0.00	0.00	0.00	7242.75	7242.75	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-15 22:53:03.752+00	2026-04-15 22:53:03.998+00
f269a614-bf4a-4614-a9aa-b41c69b6403b	LIQ-0000207	2026-04-16 12:39:56.549+00	119.00	0.00	119.00	0.00	0.00	0.00	119.00	119.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 12:39:56.55+00	2026-04-16 12:39:56.745+00
0bdc6e2c-4a7f-4bca-89fe-b8694e0a80dc	LIQ-0000208	2026-04-16 12:41:08.292+00	1653.40	0.00	1653.40	0.00	0.00	0.00	1653.40	1653.40	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 12:41:08.292+00	2026-04-16 12:41:08.497+00
d6a47427-cf54-48c6-a885-61785b38ae3f	LIQ-0000209	2026-04-16 12:42:19.255+00	1650.60	0.00	1650.60	0.00	1650.60	0.00	0.00	1650.60	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 12:42:19.255+00	2026-04-16 12:42:19.519+00
65884b08-086c-4d49-918a-84c5f98c8c57	LIQ-0000210	2026-04-16 16:34:05.043+00	10.98	0.00	10.98	0.00	10.98	0.00	0.00	10.98	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:34:05.043+00	2026-04-16 16:34:05.541+00
4e9cf48c-0a13-42b2-bb4f-910fd61b135f	LIQ-0000211	2026-04-16 16:34:26.745+00	4.50	0.00	4.50	0.00	4.50	0.00	0.00	4.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:34:26.745+00	2026-04-16 16:34:27.244+00
647fed1e-6167-4a70-ad18-3fb410fff60c	LIQ-0000212	2026-04-16 16:34:49.612+00	19.00	0.00	19.00	0.00	19.00	0.00	0.00	19.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:34:49.612+00	2026-04-16 16:34:50.105+00
376ed702-c5fb-4d4d-ac7c-5f36684cebbc	LIQ-0000213	2026-04-16 16:35:29.247+00	59.85	1.79	58.06	0.00	58.06	0.00	0.00	58.06	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:35:29.247+00	2026-04-16 16:35:29.444+00
3f326730-6a51-4bda-badb-8f4089a983b5	LIQ-0000214	2026-04-16 16:35:56.479+00	9.00	0.00	9.00	0.00	9.00	0.00	0.00	9.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:35:56.48+00	2026-04-16 16:35:56.741+00
5b6809e6-b56d-4099-b7bb-780a1c9205f2	LIQ-0000215	2026-04-16 16:36:25.557+00	5.40	0.00	5.40	0.00	5.40	0.00	0.00	5.40	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:36:25.557+00	2026-04-16 16:36:25.82+00
35bae7ed-622a-4a90-99be-5fb97c07022e	LIQ-0000216	2026-04-16 16:36:57.746+00	90.00	0.00	90.00	0.00	90.00	0.00	0.00	90.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:36:57.746+00	2026-04-16 16:36:58.042+00
9177334c-93f4-4154-9faf-219617475daf	LIQ-0000217	2026-04-16 16:43:13.671+00	1033.75	31.01	1002.74	0.00	1002.74	0.00	0.00	1002.74	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:43:13.671+00	2026-04-16 16:43:13.971+00
45133d31-e01d-41af-9e7c-46ce2340f356	LIQ-0000218	2026-04-16 16:43:51.853+00	200.00	6.00	194.00	0.00	194.00	0.00	0.00	194.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:43:51.853+00	2026-04-16 16:43:52.082+00
0b0d98cd-0470-4d17-94d9-c8e6cabd9d1c	LIQ-0000219	2026-04-16 16:44:21.621+00	29.60	0.88	28.72	0.00	28.72	0.00	0.00	28.72	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:44:21.621+00	2026-04-16 16:44:21.829+00
9e347876-444c-4b38-b26e-aa012d2c8655	LIQ-0000220	2026-04-16 16:45:20.65+00	37.50	1.12	36.38	0.00	36.38	0.00	0.00	36.38	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:45:20.65+00	2026-04-16 16:45:20.938+00
7101732f-34c2-4108-b853-03c383cfbad2	LIQ-0000221	2026-04-16 16:45:57.182+00	13.75	0.41	13.34	0.00	13.34	0.00	0.00	13.34	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 16:45:57.182+00	2026-04-16 16:45:57.477+00
1898e34a-05ea-405e-8177-38b73987222b	LIQ-0000222	2026-04-16 19:27:38.243+00	4.40	0.35	4.05	0.00	4.05	0.00	0.00	4.05	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 19:27:38.243+00	2026-04-16 19:27:38.533+00
78a65d0a-c9f1-4acf-9a3c-4f0e9851d467	LIQ-0000223	2026-04-16 19:28:46.147+00	6.00	0.18	5.82	0.00	5.82	0.00	0.00	5.82	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 19:28:46.147+00	2026-04-16 19:28:46.399+00
929daac0-58c5-48d1-bd58-0d0b1d985ed8	LIQ-0000224	2026-04-16 19:29:17.773+00	12.00	0.36	11.64	0.00	11.64	0.00	0.00	11.64	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 19:29:17.774+00	2026-04-16 19:29:18.013+00
b28e9ac1-16a3-4333-a24a-ce911ad6eeab	LIQ-0000225	2026-04-16 19:30:57.003+00	48.10	1.44	46.66	0.00	46.66	0.00	0.00	46.66	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 19:30:57.004+00	2026-04-16 19:30:57.341+00
ed4c2a48-34a7-430e-b2f8-a6337d659320	LIQ-0000226	2026-04-16 19:31:29.756+00	32.40	0.97	31.43	0.00	31.43	0.00	0.00	31.43	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 19:31:29.756+00	2026-04-16 19:31:29.981+00
13dfbef0-8451-47f3-a4d5-dba983013b1f	LIQ-0000227	2026-04-16 20:22:44.841+00	12.50	0.37	12.13	0.00	12.13	0.00	0.00	12.13	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 20:22:44.842+00	2026-04-16 20:22:45.029+00
73971e47-e776-456d-8e02-1ae86daa3d82	LIQ-0000228	2026-04-16 22:22:21.275+00	9.60	0.28	9.32	0.00	9.32	0.00	0.00	9.32	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-16 22:22:21.276+00	2026-04-16 22:22:21.574+00
d311e19b-1885-477f-9ee7-221d667d1065	LIQ-0000229	2026-04-17 15:41:56.646+00	4.50	0.00	4.50	0.00	4.50	0.00	0.00	4.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 15:41:56.646+00	2026-04-17 15:41:56.904+00
8f8d37f7-8498-4822-9551-0ca29e57a0f5	LIQ-0000230	2026-04-17 15:43:02.242+00	130.80	3.79	127.01	0.00	127.01	0.00	0.00	127.01	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 15:43:02.242+00	2026-04-17 15:43:02.493+00
fb1a4c30-6281-48b6-83c7-5e6acbc9a435	LIQ-0000231	2026-04-17 15:43:37.748+00	21.85	0.00	21.85	0.00	21.85	0.00	0.00	21.85	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 15:43:37.748+00	2026-04-17 15:43:38.107+00
ab72416a-f3c2-4b65-bd9c-66791ef70c3e	LIQ-0000232	2026-04-17 16:12:41.647+00	14.35	0.43	13.92	0.00	13.92	0.00	0.00	13.92	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 16:12:41.647+00	2026-04-17 16:12:41.94+00
d2cac3c2-1e4b-4cd9-8253-0571e733a7e4	LIQ-0000233	2026-04-17 16:13:57.238+00	30.95	0.92	30.03	0.00	30.03	0.00	0.00	30.03	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 16:13:57.238+00	2026-04-17 16:13:57.438+00
7a1445ae-105c-4023-8a05-31d0784f1ad0	LIQ-0000234	2026-04-17 16:14:35.644+00	18.36	0.55	17.81	0.00	17.81	0.00	0.00	17.81	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 16:14:35.644+00	2026-04-17 16:14:35.934+00
88afea12-c8a8-4a0c-9bc0-6d0442792b93	LIQ-0000235	2026-04-17 16:15:05.844+00	28.08	0.84	27.24	0.00	27.24	0.00	0.00	27.24	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 16:15:05.844+00	2026-04-17 16:15:06.128+00
3d72c113-936d-4a86-8b19-cd2efc218a19	LIQ-0000236	2026-04-17 16:20:03.242+00	150.00	4.50	145.50	0.00	145.50	0.00	0.00	145.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 16:20:03.242+00	2026-04-17 16:20:03.698+00
84baf8e2-2d16-4de9-b738-2b55989191c6	LIQ-0000237	2026-04-17 16:20:33.85+00	32.50	0.97	31.53	0.00	31.53	0.00	0.00	31.53	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 16:20:33.851+00	2026-04-17 16:20:34.064+00
59c220f7-024e-47e9-a564-32754a11b962	LIQ-0000238	2026-04-17 16:21:01.39+00	180.56	5.41	175.15	0.00	175.15	0.00	0.00	175.15	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 16:21:01.39+00	2026-04-17 16:21:01.603+00
e242f9ec-5324-4ef7-97ea-3bdf81e7f87e	LIQ-0000239	2026-04-17 16:21:31.773+00	12.00	0.36	11.64	0.00	11.64	0.00	0.00	11.64	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 16:21:31.773+00	2026-04-17 16:21:32.052+00
2fcea9a0-5200-4441-997c-26c44e8b41ed	LIQ-0000240	2026-04-17 16:22:12.159+00	79.52	2.38	77.14	0.00	77.14	0.00	0.00	77.14	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 16:22:12.159+00	2026-04-17 16:22:12.391+00
677d15a3-4a1c-4cca-b0da-17adf72ad624	LIQ-0000241	2026-04-17 16:23:29.303+00	41.44	1.24	40.20	0.00	40.20	0.00	0.00	40.20	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 16:23:29.303+00	2026-04-17 16:23:29.57+00
3175c88b-c5b5-4a1c-8d7b-0ace14981b36	LIQ-0000242	2026-04-17 16:24:29.264+00	19.60	0.58	19.02	0.00	19.02	0.00	0.00	19.02	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 16:24:29.265+00	2026-04-17 16:24:29.641+00
35760561-bdbb-4985-9d11-be4f2c49916e	LIQ-0000243	2026-04-17 19:53:04.246+00	16.90	0.50	16.40	0.00	16.40	0.00	0.00	16.40	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 19:53:04.247+00	2026-04-17 19:53:04.498+00
522ee860-5a1f-4e23-a9ac-971b4f2a2565	LIQ-0000244	2026-04-17 20:07:50.654+00	21.20	0.82	20.38	0.00	20.38	0.00	0.00	20.38	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-17 20:07:50.654+00	2026-04-17 20:07:50.929+00
7bef2f49-872b-445c-ab00-a409bfecffe5	LIQ-0000245	2026-04-18 16:11:23.664+00	42.75	0.00	42.75	0.00	42.75	0.00	0.00	42.75	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:11:23.665+00	2026-04-18 16:11:23.977+00
737ebdb0-c3ae-4f5e-887d-07f937e74d38	LIQ-0000246	2026-04-18 16:13:30.381+00	320.00	3.20	316.80	0.00	140.00	0.00	176.80	316.80	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:13:30.381+00	2026-04-18 16:13:30.63+00
b39d997e-e876-43f9-955f-5991532f7a18	LIQ-0000247	2026-04-18 16:14:15.96+00	108.00	3.24	104.76	0.00	104.76	0.00	0.00	104.76	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:14:15.96+00	2026-04-18 16:14:16.337+00
c8fc6f50-b67d-4b44-a00d-cc031c72bf42	LIQ-0000248	2026-04-18 16:18:55.24+00	26.22	0.78	25.44	0.00	25.44	0.00	0.00	25.44	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:18:55.24+00	2026-04-18 16:18:55.77+00
06219581-3a21-48da-b0d4-3acd17bffa64	LIQ-0000249	2026-04-18 16:19:35.444+00	16.38	0.49	15.89	0.00	15.89	0.00	0.00	15.89	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:19:35.445+00	2026-04-18 16:19:35.639+00
7d242942-ea20-46bb-9dc8-807f7aaca232	LIQ-0000250	2026-04-18 16:20:06.046+00	12.87	0.38	12.49	0.00	12.49	0.00	0.00	12.49	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:20:06.046+00	2026-04-18 16:20:06.335+00
ece59cf2-3944-486f-89f6-48f5b4864016	LIQ-0000251	2026-04-18 16:21:45.246+00	20.14	0.60	19.54	0.00	19.54	0.00	0.00	19.54	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:21:45.246+00	2026-04-18 16:21:45.462+00
2b235a91-edf8-4444-889e-b8a7b2d0142b	LIQ-0000252	2026-04-18 16:22:19.929+00	23.79	0.71	23.08	0.00	23.08	0.00	0.00	23.08	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:22:19.929+00	2026-04-18 16:22:20.257+00
26e2dc5b-a438-4819-9b51-8131f14d7ac2	LIQ-0000253	2026-04-18 16:23:39.202+00	10.53	0.31	10.22	0.00	10.22	0.00	0.00	10.22	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:23:39.202+00	2026-04-18 16:23:39.504+00
9c21c4c1-d702-47e4-bf48-7b92767dbe07	LIQ-0000254	2026-04-18 16:24:12.252+00	2.34	0.07	2.27	0.00	2.27	0.00	0.00	2.27	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:24:12.252+00	2026-04-18 16:24:12.542+00
4aa22d95-6cb6-4341-9c47-c47e0ae150a9	LIQ-0000255	2026-04-18 16:25:05.471+00	37.83	1.13	36.70	0.00	36.70	0.00	0.00	36.70	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:25:05.472+00	2026-04-18 16:25:05.743+00
75c1bb81-1cd8-4434-8f98-f67fb50f70fc	LIQ-0000256	2026-04-18 16:26:23.048+00	36.27	1.08	35.19	0.00	35.19	0.00	0.00	35.19	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:26:23.048+00	2026-04-18 16:26:23.542+00
0eeb106a-003f-4618-82f3-5201f43d22e2	LIQ-0000257	2026-04-18 16:26:55.806+00	11.31	0.33	10.98	0.00	10.98	0.00	0.00	10.98	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:26:55.806+00	2026-04-18 16:26:56.125+00
8491f063-b461-4709-b494-3a35116fa3be	LIQ-0000258	2026-04-18 16:27:56.548+00	26.80	0.80	26.00	0.00	26.00	0.00	0.00	26.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:27:56.548+00	2026-04-18 16:27:56.757+00
46609806-072b-4199-8d5f-0c47be5ca08d	LIQ-0000259	2026-04-18 16:28:33.742+00	66.00	1.98	64.02	0.00	64.02	0.00	0.00	64.02	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:28:33.742+00	2026-04-18 16:28:33.929+00
bddec045-db74-4cb6-b366-12b5cef1a19f	LIQ-0000260	2026-04-18 16:31:03.5+00	22.54	0.67	21.87	0.00	21.87	0.00	0.00	21.87	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:31:03.5+00	2026-04-18 16:31:03.822+00
89453b82-bb65-43c2-8f63-d395d0801997	LIQ-0000261	2026-04-18 16:31:32.346+00	128.75	3.86	124.89	0.00	124.89	0.00	0.00	124.89	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:31:32.346+00	2026-04-18 16:31:32.542+00
4dacbd86-8125-48b1-b9d9-f33e933f1006	LIQ-0000262	2026-04-18 16:33:15.847+00	36.30	1.08	35.22	0.00	35.22	0.00	0.00	35.22	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:33:15.847+00	2026-04-18 16:33:16.066+00
01cbd0fa-c76f-4459-af38-a7a6025f6ab8	LIQ-0000263	2026-04-18 16:33:38.99+00	61.60	1.84	59.76	0.00	59.76	0.00	0.00	59.76	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:33:38.99+00	2026-04-18 16:33:39.165+00
8c4718bd-66c6-4d23-aa8a-0cbe212ab339	LIQ-0000264	2026-04-18 16:34:09.551+00	195.88	5.87	190.01	0.00	190.01	0.00	0.00	190.01	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:34:09.551+00	2026-04-18 16:34:09.767+00
1bce7280-5365-4ecc-a175-a5dcb67f23ce	LIQ-0000265	2026-04-18 16:34:30.374+00	38.00	1.14	36.86	0.00	36.86	0.00	0.00	36.86	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:34:30.374+00	2026-04-18 16:34:30.758+00
5d1e961b-e7b4-4257-93d2-3b19b7eab8f4	LIQ-0000266	2026-04-18 16:34:56.364+00	74.25	2.22	72.03	0.00	72.03	0.00	0.00	72.03	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:34:56.364+00	2026-04-18 16:34:56.658+00
22d87bb3-e0ed-4d1a-8b24-d0e32ad0e52f	LIQ-0000267	2026-04-18 16:35:26.052+00	30.60	0.91	29.69	0.00	29.69	0.00	0.00	29.69	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:35:26.052+00	2026-04-18 16:35:26.402+00
fa088413-7613-4d7a-910e-8d16e50c9580	LIQ-0000268	2026-04-18 16:36:06.661+00	50.60	1.51	49.09	0.00	49.09	0.00	0.00	49.09	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:36:06.662+00	2026-04-18 16:36:06.938+00
fcee95bb-fcc4-4898-91b0-b49d30d91309	LIQ-0000269	2026-04-18 16:36:30.342+00	118.75	3.56	115.19	0.00	115.19	0.00	0.00	115.19	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:36:30.342+00	2026-04-18 16:36:30.587+00
ee3ceb34-e020-4952-8c86-010b33c9de58	LIQ-0000270	2026-04-18 16:36:56.147+00	17.50	0.52	16.98	0.00	16.98	0.00	0.00	16.98	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:36:56.147+00	2026-04-18 16:36:56.374+00
ac8e1480-812b-4c9e-9e5f-9b91573e7e37	LIQ-0000271	2026-04-18 16:38:42.59+00	17.60	0.52	17.08	0.00	17.08	0.00	0.00	17.08	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:38:42.591+00	2026-04-18 16:38:42.904+00
5b45257c-2f69-420b-858f-bca62a5b785d	LIQ-0000272	2026-04-18 16:39:12.047+00	122.19	3.66	118.53	0.00	118.53	0.00	0.00	118.53	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:39:12.047+00	2026-04-18 16:39:12.332+00
82673a06-e607-4178-9e1c-f89f061dc1f3	LIQ-0000273	2026-04-18 16:39:36.342+00	33.90	1.01	32.89	0.00	32.89	0.00	0.00	32.89	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:39:36.343+00	2026-04-18 16:39:36.541+00
ed7748e2-6547-4e34-84a2-6b7ea2faec6c	LIQ-0000274	2026-04-18 16:40:05.886+00	4.80	0.14	4.66	0.00	4.66	0.00	0.00	4.66	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:40:05.886+00	2026-04-18 16:40:06.138+00
f880026c-1808-4d42-8fab-b47cb0822f5e	LIQ-0000275	2026-04-18 16:40:33.75+00	11.88	0.35	11.53	0.00	11.53	0.00	0.00	11.53	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:40:33.75+00	2026-04-18 16:40:34.041+00
9a462d6c-77bc-480a-aa15-8c4de3497284	LIQ-0000276	2026-04-18 16:41:00.75+00	71.30	2.13	69.17	0.00	69.17	0.00	0.00	69.17	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:41:00.75+00	2026-04-18 16:41:01.031+00
633033db-dc94-4eef-b96a-52e4edda90fd	LIQ-0000277	2026-04-18 16:41:16.835+00	7.50	0.22	7.28	0.00	7.28	0.00	0.00	7.28	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:41:16.835+00	2026-04-18 16:41:17.095+00
fdcf167b-b29e-40f0-8348-f3a2b41c25ed	LIQ-0000278	2026-04-18 16:41:55.36+00	70.40	2.11	68.29	0.00	68.29	0.00	0.00	68.29	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:41:55.36+00	2026-04-18 16:41:55.639+00
10443cbe-8ece-40ea-bc7b-bba19fb5f68c	LIQ-0000279	2026-04-18 16:42:23.965+00	436.60	13.09	423.51	0.00	423.51	0.00	0.00	423.51	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:42:23.965+00	2026-04-18 16:42:24.251+00
548f96fe-1a92-4a9a-9e53-6727b6a9e44f	LIQ-0000280	2026-04-18 16:42:49.253+00	15.00	0.45	14.55	0.00	14.55	0.00	0.00	14.55	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:42:49.253+00	2026-04-18 16:42:49.528+00
5d8e4307-2675-4c58-a33d-6b3d0e0cb557	LIQ-0000281	2026-04-18 16:43:18.853+00	226.56	6.79	219.77	0.00	219.77	0.00	0.00	219.77	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:43:18.854+00	2026-04-18 16:43:19.144+00
2869b678-ff7d-46fc-91e2-fdaf54761817	LIQ-0000282	2026-04-18 16:44:01.668+00	18.75	0.56	18.19	0.00	18.19	0.00	0.00	18.19	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:44:01.669+00	2026-04-18 16:44:02.03+00
6a787954-25ef-44cc-bd11-72f07d2a5b31	LIQ-0000283	2026-04-18 16:44:45.349+00	1271.20	0.00	1271.20	0.00	0.00	0.00	1271.20	1271.20	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 16:44:45.349+00	2026-04-18 16:44:45.542+00
84f8406d-a951-49bf-a2f2-cc2973ecd9dc	LIQ-0000284	2026-04-18 18:20:23.04+00	55.90	1.67	54.23	0.00	54.23	0.00	0.00	54.23	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 18:20:23.041+00	2026-04-18 18:20:23.639+00
6a196a2a-54e1-4563-ac5e-4c010a921742	LIQ-0000285	2026-04-18 18:39:30.945+00	6.00	0.18	5.82	0.00	5.82	0.00	0.00	5.82	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 18:39:30.946+00	2026-04-18 18:39:31.256+00
b4a23599-2866-40a5-a02f-5ced779e1cc4	LIQ-0000286	2026-04-18 19:10:24.841+00	23.10	0.69	22.41	0.00	22.41	0.00	0.00	22.41	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-18 19:10:24.842+00	2026-04-18 19:10:25.171+00
ec6a3dd4-1882-43b5-906c-1229f1aac3d8	LIQ-0000287	2026-04-20 18:25:58.652+00	9.50	0.00	9.50	0.00	9.50	0.00	0.00	9.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:25:58.653+00	2026-04-20 18:25:58.906+00
cb146e0b-6fdc-4bc5-81b2-66576dc0ba9f	LIQ-0000288	2026-04-20 18:26:21.342+00	210.90	0.00	210.90	0.00	210.90	0.00	0.00	210.90	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:26:21.343+00	2026-04-20 18:26:21.597+00
077c94da-c72e-4b45-8547-07b6ca0e7bfe	LIQ-0000289	2026-04-20 18:26:45.961+00	14.25	0.00	14.25	0.00	14.25	0.00	0.00	14.25	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:26:45.961+00	2026-04-20 18:26:46.229+00
f8ef0cd1-3968-4f51-a8ce-bde6194e7e85	LIQ-0000290	2026-04-20 18:27:16.831+00	9.80	0.29	9.51	0.00	9.51	0.00	0.00	9.51	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:27:16.832+00	2026-04-20 18:27:17.208+00
29299a2d-1daa-4ea4-9c6e-e35e15eee98e	LIQ-0000291	2026-04-20 18:28:00.945+00	15.60	0.46	15.14	0.00	15.14	0.00	0.00	15.14	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:28:00.946+00	2026-04-20 18:28:01.205+00
838d4d03-2adc-4946-b4b1-3c9d0d0de69f	LIQ-0000292	2026-04-20 18:28:27.043+00	37.40	1.12	36.28	0.00	36.28	0.00	0.00	36.28	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:28:27.043+00	2026-04-20 18:28:27.333+00
7d3ab548-3f06-405c-9354-fc2a1ada48d7	LIQ-0000293	2026-04-20 18:28:54.445+00	24.57	0.73	23.84	0.00	23.84	0.00	0.00	23.84	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:28:54.445+00	2026-04-20 18:28:55.043+00
9e5f4d44-482a-489d-84c0-974183ba4a8f	LIQ-0000294	2026-04-20 18:29:25.363+00	11.07	0.33	10.74	0.00	10.74	0.00	0.00	10.74	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:29:25.364+00	2026-04-20 18:29:25.658+00
a58c3a78-bc1f-428c-bfb8-1bf34ebb6095	LIQ-0000295	2026-04-20 18:29:51.747+00	142.67	4.28	138.39	0.00	138.39	0.00	0.00	138.39	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:29:51.747+00	2026-04-20 18:29:51.945+00
8f283c32-8456-4bda-a012-2a8ca23c8a0c	LIQ-0000296	2026-04-20 18:30:34.852+00	2.40	0.07	2.33	0.00	2.33	0.00	0.00	2.33	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:30:34.852+00	2026-04-20 18:30:35.175+00
c4e1ee5c-96a3-437f-b489-fdbc3302e592	LIQ-0000297	2026-04-20 18:31:06.659+00	293.70	8.81	284.89	0.00	284.89	0.00	0.00	284.89	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:31:06.659+00	2026-04-20 18:31:06.983+00
aaa2bb63-6f82-4d5f-a444-11caa0eb7b1a	LIQ-0000298	2026-04-20 18:31:31.65+00	273.75	8.21	265.54	0.00	265.54	0.00	0.00	265.54	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:31:31.65+00	2026-04-20 18:31:31.949+00
88084d5f-78fa-4a7d-b97c-0c6103237e06	LIQ-0000299	2026-04-20 18:32:26.082+00	2.40	0.07	2.33	0.00	2.33	0.00	0.00	2.33	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:32:26.082+00	2026-04-20 18:32:26.353+00
e9baae56-4a3c-4d22-bfaa-fe8e2eac324b	LIQ-0000300	2026-04-20 18:32:46.942+00	7.80	0.23	7.57	0.00	7.57	0.00	0.00	7.57	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:32:46.942+00	2026-04-20 18:32:47.132+00
93cd60f0-6173-4813-bba1-9db69ed604d0	LIQ-0000301	2026-04-20 18:53:46.556+00	56.40	1.69	54.71	0.00	54.71	0.00	0.00	54.71	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 18:53:46.556+00	2026-04-20 18:53:46.811+00
f492a289-02ac-4fbd-a052-475254942c08	LIQ-0000302	2026-04-20 19:37:05.148+00	11.39	0.56	10.83	0.00	10.83	0.00	0.00	10.83	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 19:37:05.149+00	2026-04-20 19:37:05.444+00
abb6dda1-7878-4213-a278-f4741521a8e2	LIQ-0000303	2026-04-20 19:37:32.845+00	15.00	0.45	14.55	0.00	14.55	0.00	0.00	14.55	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-20 19:37:32.846+00	2026-04-20 19:37:33.472+00
f72e8890-194e-4bcf-b4aa-d4d622ba969e	LIQ-0000304	2026-04-21 14:32:20.446+00	10.80	0.00	10.80	0.00	10.80	0.00	0.00	10.80	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-21 14:32:20.447+00	2026-04-21 14:32:20.94+00
19888698-c282-4f42-bc96-26a83904054e	LIQ-0000305	2026-04-21 14:32:44.24+00	54.00	0.00	54.00	0.00	54.00	0.00	0.00	54.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-21 14:32:44.24+00	2026-04-21 14:32:44.738+00
65638a21-f9bd-4f9d-b865-5063b0d88350	LIQ-0000306	2026-04-21 14:33:07.841+00	36.00	0.00	36.00	0.00	36.00	0.00	0.00	36.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-21 14:33:07.841+00	2026-04-21 14:33:08.148+00
6eb4b6eb-7aaf-4b79-ab9f-8d7badaa6a10	LIQ-0000307	2026-04-21 14:33:51.847+00	14.40	0.00	14.40	0.00	14.40	0.00	0.00	14.40	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-21 14:33:51.847+00	2026-04-21 14:33:52.15+00
4062d69a-e302-42e4-af7c-c2a9ee2304c6	LIQ-0000308	2026-04-21 20:05:24.451+00	16.10	0.48	15.62	0.00	15.62	0.00	0.00	15.62	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-21 20:05:24.452+00	2026-04-21 20:05:25.148+00
3f244ee8-955b-4805-ae87-396335d8e5ed	LIQ-0000309	2026-04-21 20:05:50.323+00	1.15	0.03	1.12	0.00	1.12	0.00	0.00	1.12	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-21 20:05:50.323+00	2026-04-21 20:05:50.921+00
d2ac5cac-554f-4fa4-b146-8471735f6305	LIQ-0000310	2026-04-21 21:44:26.152+00	4.60	0.13	4.47	0.00	4.47	0.00	0.00	4.47	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-21 21:44:26.153+00	2026-04-21 21:44:26.538+00
10c420f8-2bd8-44c1-8513-10f87eecbc65	LIQ-0000311	2026-04-22 16:08:24.849+00	48.60	0.00	48.60	0.00	48.60	0.00	0.00	48.60	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:08:24.85+00	2026-04-22 16:08:25.176+00
0c92f7ee-2d4e-4f2a-8a0a-4414c87839c2	LIQ-0000312	2026-04-22 16:08:52.288+00	36.00	0.00	36.00	0.00	36.00	0.00	0.00	36.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:08:52.288+00	2026-04-22 16:08:52.507+00
2de77b24-081f-407f-afe6-5d41da0c6d08	LIQ-0000313	2026-04-22 16:09:31.566+00	32.40	0.00	32.40	0.00	32.40	0.00	0.00	32.40	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:09:31.566+00	2026-04-22 16:09:31.809+00
da169697-72b5-4438-b837-8fca2e12830b	LIQ-0000314	2026-04-22 16:11:03.953+00	13.50	0.00	13.50	0.00	13.50	0.00	0.00	13.50	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:11:03.953+00	2026-04-22 16:11:04.212+00
24ef2bf8-6b75-4922-880f-debbd8f28718	LIQ-0000315	2026-04-22 16:11:56.042+00	72.00	0.00	72.00	0.00	72.00	0.00	0.00	72.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:11:56.042+00	2026-04-22 16:11:56.272+00
ba173e4d-c398-466b-802d-4fba343932ab	LIQ-0000316	2026-04-22 16:12:33.862+00	16.20	0.00	16.20	0.00	16.20	0.00	0.00	16.20	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:12:33.862+00	2026-04-22 16:12:34.163+00
9182a162-697c-4d3d-80d5-df70b1d4cf5b	LIQ-0000317	2026-04-22 16:19:43.845+00	358.75	10.76	347.99	0.00	347.99	0.00	0.00	347.99	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:19:43.845+00	2026-04-22 16:19:44.072+00
51004751-0c13-4d1f-a48b-6683056dc52c	LIQ-0000318	2026-04-22 16:20:08.943+00	96.80	2.90	93.90	0.00	93.90	0.00	0.00	93.90	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:20:08.943+00	2026-04-22 16:20:09.172+00
741b65b5-c114-4af6-8f4a-22a9f642ce87	LIQ-0000319	2026-04-22 16:20:42.75+00	30.45	0.91	29.54	0.00	29.54	0.00	0.00	29.54	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:20:42.75+00	2026-04-22 16:20:43.341+00
23fb2688-8864-40ec-af64-3a514d25ee9f	LIQ-0000320	2026-04-22 16:21:10.303+00	48.36	1.45	46.91	0.00	46.91	0.00	0.00	46.91	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:21:10.303+00	2026-04-22 16:21:10.535+00
c70fdb82-e86e-45de-b502-40762904ff96	LIQ-0000321	2026-04-22 16:22:11.554+00	192.08	5.76	186.32	0.00	186.32	0.00	0.00	186.32	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:22:11.554+00	2026-04-22 16:22:11.883+00
92207935-fe77-4e60-ad07-69a1e6cb5088	LIQ-0000322	2026-04-22 16:22:37.058+00	17.22	0.51	16.71	0.00	16.71	0.00	0.00	16.71	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:22:37.059+00	2026-04-22 16:22:37.333+00
4ad33dd9-5416-4923-9f8a-752185d65d8a	LIQ-0000323	2026-04-22 16:23:09.579+00	159.60	4.78	154.82	0.00	154.82	0.00	0.00	154.82	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:23:09.579+00	2026-04-22 16:23:09.844+00
01a96358-40e6-4495-9bf9-152614b63b24	LIQ-0000324	2026-04-22 16:23:45.489+00	82.08	2.46	79.62	0.00	79.62	0.00	0.00	79.62	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:23:45.489+00	2026-04-22 16:23:45.755+00
3073efcb-b310-4754-83ba-f62b758af0b7	LIQ-0000325	2026-04-22 16:24:17.045+00	11.00	0.33	10.67	0.00	10.67	0.00	0.00	10.67	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:24:17.045+00	2026-04-22 16:24:17.331+00
6b1c55fb-3348-4d46-baca-cf413f7d59a8	LIQ-0000326	2026-04-22 16:24:43.445+00	125.19	3.75	121.44	0.00	121.44	0.00	0.00	121.44	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:24:43.445+00	2026-04-22 16:24:43.949+00
41d36de8-c883-4cf2-9afc-c0c92f46d987	LIQ-0000327	2026-04-22 16:25:10.155+00	23.00	0.69	22.31	0.00	22.31	0.00	0.00	22.31	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 16:25:10.155+00	2026-04-22 16:25:10.444+00
3c21d9a9-711b-449e-b8ba-2122acb13a7a	LIQ-0000328	2026-04-22 18:52:10.042+00	10.80	0.32	10.48	0.00	10.48	0.00	0.00	10.48	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 18:52:10.043+00	2026-04-22 18:52:11.374+00
75ff738d-e8fb-466d-9147-9c38d8a3dd4a	LIQ-0000329	2026-04-22 22:13:58.019+00	18.00	0.54	17.46	0.00	17.46	0.00	0.00	17.46	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-22 22:13:58.02+00	2026-04-22 22:13:58.31+00
a83ffaa1-1ad0-41d6-a515-3e11b8a1cf68	LIQ-0000330	2026-04-23 16:14:37.648+00	153.00	0.00	153.00	0.00	153.00	0.00	0.00	153.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-23 16:14:37.649+00	2026-04-23 16:14:38.141+00
29135cb7-eae5-4b68-9605-db3db12f8e1a	LIQ-0000331	2026-04-23 16:19:46.975+00	24.80	0.74	24.06	0.00	24.06	0.00	0.00	24.06	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-23 16:19:46.975+00	2026-04-23 16:19:47.224+00
41f5865e-1f22-4b88-86d4-e73b1895e666	LIQ-0000332	2026-04-23 16:20:59.143+00	7.19	0.21	6.98	0.00	6.98	0.00	0.00	6.98	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-23 16:20:59.144+00	2026-04-23 16:20:59.444+00
8f1b7c8c-7a0c-428b-8453-172372ceb04c	LIQ-0000333	2026-04-23 19:19:03.743+00	63.24	1.89	61.35	0.00	61.35	0.00	0.00	61.35	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-23 19:19:03.744+00	2026-04-23 19:19:04.254+00
41cd734a-127f-43c3-9c76-9b5b320ad2a8	LIQ-0000334	2026-04-23 19:19:57.601+00	87.50	2.62	84.88	0.00	84.88	0.00	0.00	84.88	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-23 19:19:57.601+00	2026-04-23 19:19:58.035+00
9d28c3af-36ad-4e2c-80ec-68f0bfda7d52	LIQ-0000335	2026-04-23 19:20:35.247+00	90.00	2.70	87.30	0.00	87.30	0.00	0.00	87.30	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-23 19:20:35.248+00	2026-04-23 19:20:35.64+00
cf098947-1f6e-4c98-a7d6-ada331c0b22c	LIQ-0000336	2026-04-23 19:21:09.94+00	74.55	2.23	72.32	0.00	72.32	0.00	0.00	72.32	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-23 19:21:09.94+00	2026-04-23 19:21:10.174+00
65e19210-8f3b-45ee-a61a-8caf7e9e4299	LIQ-0000337	2026-04-23 22:07:43.245+00	9.80	0.29	9.51	0.00	9.51	0.00	0.00	9.51	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-23 22:07:43.245+00	2026-04-23 22:07:44.138+00
f8d85c75-07cd-40e8-9a0f-896c6c3adce1	LIQ-0000338	2026-04-24 16:11:45.545+00	6.84	0.20	6.64	0.00	6.64	0.00	0.00	6.64	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 16:11:45.546+00	2026-04-24 16:11:46.741+00
4f44eeac-3703-4f4e-b578-090da867f6cc	LIQ-0000339	2026-04-24 16:12:24.452+00	13.00	0.00	13.00	0.00	13.00	0.00	0.00	13.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 16:12:24.452+00	2026-04-24 16:12:25.048+00
518c02f2-738f-440f-a3e8-ef4973d45af6	LIQ-0000340	2026-04-24 16:12:49.642+00	20.00	0.00	20.00	0.00	20.00	0.00	0.00	20.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 16:12:49.643+00	2026-04-24 16:12:50.241+00
607a7eae-5530-4ead-8ac2-9e3d7693bf86	LIQ-0000341	2026-04-24 16:13:52.078+00	10.80	0.32	10.48	0.00	10.48	0.00	0.00	10.48	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 16:13:52.078+00	2026-04-24 16:13:52.465+00
e2eb8312-c8e4-43f9-a19d-a0a1f8bf77b5	LIQ-0000342	2026-04-24 16:14:27.545+00	168.00	5.04	162.96	0.00	162.96	0.00	0.00	162.96	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 16:14:27.546+00	2026-04-24 16:14:27.965+00
4c122956-9835-479b-b840-53b9ba744a8a	LIQ-0000343	2026-04-24 16:14:54.141+00	257.03	7.71	249.32	0.00	249.32	0.00	0.00	249.32	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 16:14:54.144+00	2026-04-24 16:14:55.075+00
994992f1-a279-495f-8cd9-d30d7a5ecaa1	LIQ-0000344	2026-04-24 16:15:39.947+00	113.60	3.40	110.20	0.00	110.20	0.00	0.00	110.20	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 16:15:39.947+00	2026-04-24 16:15:40.234+00
c3de2cff-05d9-40f9-919a-d4ef73c97adb	LIQ-0000345	2026-04-24 16:16:14.446+00	44.52	1.33	43.19	0.00	43.19	0.00	0.00	43.19	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 16:16:14.446+00	2026-04-24 16:16:14.828+00
48bfd55a-d6dc-48af-9152-e5108edd2310	LIQ-0000346	2026-04-24 16:16:39.55+00	29.40	0.88	28.52	0.00	28.52	0.00	0.00	28.52	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 16:16:39.55+00	2026-04-24 16:16:39.939+00
5184eb37-cc60-40f9-8b16-240a013fe17a	LIQ-0000347	2026-04-24 16:18:14.574+00	18.05	0.54	17.51	0.00	17.51	0.00	0.00	17.51	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 16:18:14.574+00	2026-04-24 16:18:14.956+00
68d0931d-f383-4c7c-bcbe-4b574dc57a65	LIQ-0000348	2026-04-24 16:46:26.676+00	6.00	0.18	5.82	0.00	5.82	0.00	0.00	5.82	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 16:46:26.676+00	2026-04-24 16:46:27.056+00
749a8d09-7bfa-4c9d-9534-b61de4abcc0d	LIQ-0000349	2026-04-24 17:38:35.84+00	20.40	0.61	19.79	0.00	19.79	0.00	0.00	19.79	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 17:38:35.841+00	2026-04-24 17:38:36.741+00
dff66696-2db6-4bbd-86af-372fbcfeb6fc	LIQ-0000350	2026-04-24 17:39:44.143+00	62.50	1.87	60.63	0.00	60.63	0.00	0.00	60.63	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 17:39:44.143+00	2026-04-24 17:39:44.473+00
9b195358-10f7-4fbd-985a-7c6d2ab8ce56	LIQ-0000351	2026-04-24 18:52:44.041+00	14.39	0.43	13.96	0.00	13.96	0.00	0.00	13.96	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 18:52:44.042+00	2026-04-24 18:52:44.739+00
a35899d7-f388-4150-a913-ca1cf4da3b5c	LIQ-0000352	2026-04-24 19:30:47.939+00	2.00	0.00	2.00	0.00	2.00	0.00	0.00	2.00	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 19:30:47.94+00	2026-04-24 19:30:48.544+00
a655643f-b65a-4419-97d3-b82ff0177bc3	LIQ-0000353	2026-04-24 21:16:06.741+00	32.00	0.96	31.04	0.00	31.04	0.00	0.00	31.04	0.00	Pagada	436e223e-918f-4b80-b807-69d1ab32a934	f45aed61-5473-413a-9eb3-efb718c6c06d	2026-04-24 21:16:06.741+00	2026-04-24 21:16:07.436+00
\.


--
-- Data for Name: Movimientos; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Movimientos" (id, fecha, "tipoMovimiento", categoria, monto, "idReferencia", descripcion, "CajaId", "createdAt", "updatedAt") FROM stdin;
38a09494-42f9-4191-bd41-00f0474d32b9	2026-03-28 20:27:08.56+00	Egreso	Anticipo	1000.00	967b2d2d-a86a-4241-b535-0e5c0219794c	Anticipo entregado. Ref: 967b2d2d	f5d67914-e497-4a50-99de-e96d09f01314	2026-03-28 20:27:08.561+00	2026-03-28 20:27:08.561+00
55048d03-29f4-4e0b-b4fb-8c03244ce3a5	2026-03-28 20:29:39.228+00	Ingreso	Cobro Anticipo	1000.00	1880d29e-9759-46e7-94a0-f581edec626f	CRUCE: Anticipo en LIQ-0000001.	\N	2026-03-28 20:29:39.228+00	2026-03-28 20:29:39.228+00
705bf549-b937-44f1-a7f7-56b09d988937	2026-03-28 20:29:39.432+00	Egreso	Compra	2000.00	1880d29e-9759-46e7-94a0-f581edec626f	EGRESO: Liq LIQ-0000001 (Pago fruta + saldos ant.)	f5d67914-e497-4a50-99de-e96d09f01314	2026-03-28 20:29:39.432+00	2026-03-28 20:29:39.432+00
a2ec9792-6697-46ad-83b0-839a665061ac	2026-03-28 20:32:31.538+00	Egreso	Préstamo	100.00	faee69a7-1a45-40f9-b516-4aebb12630ff	Desembolso Préstamo. Ref: faee69a7	f5d67914-e497-4a50-99de-e96d09f01314	2026-03-28 20:32:31.538+00	2026-03-28 20:32:31.538+00
d79c04d9-8b8c-488b-8bff-dd1e41f15fa3	2026-03-28 20:33:26.938+00	Egreso	Nomina	110.00	6f692f2b-cef9-4a41-bb8c-71c8e5f11f14	\N	f5d67914-e497-4a50-99de-e96d09f01314	2026-03-28 20:33:26.938+00	2026-03-28 20:33:26.938+00
ff8a26bc-4223-4d49-a205-e03381ec9e82	2026-03-28 21:02:43.563+00	Ingreso	Bancos	5000.00	\N	DINERO A CAJA	f5d67914-e497-4a50-99de-e96d09f01314	2026-03-28 21:02:43.563+00	2026-03-28 21:02:43.563+00
b5a34e04-19b5-456e-94f5-e8076b527f89	2026-03-30 14:25:32.712+00	Ingreso	Cuentas por Cobrar	90.00	985505a5-0de0-4b4d-896f-8310d6b085da	Cobro Préstamo - Ref: faee69a7-1a45-40f9-b516-4aebb12630ff	cfb7b9de-fdd8-49f0-b67e-208c33206ec6	2026-03-30 14:25:32.712+00	2026-03-30 14:25:32.712+00
ed73c6fc-e853-4eb0-926a-c5531b1a55b3	2026-03-30 14:25:43.327+00	Egreso	Cuentas por Pagar	957.60	58cd1265-3600-4df3-b5f3-074d32883de8	Pago a Productor - Liq: LIQ-0000001 (Efectivo)	cfb7b9de-fdd8-49f0-b67e-208c33206ec6	2026-03-30 14:25:43.327+00	2026-03-30 14:25:43.327+00
6fc03b66-3674-4790-b0d2-4a15f48c2dbb	2026-03-30 18:15:49.167+00	Egreso	Compra	57.04	3ad71b26-bce7-4b79-b716-cc0656624abc	EGRESO: Liq LIQ-0000002 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 18:15:49.168+00	2026-03-30 18:15:49.168+00
bb08bc95-ffa6-44d1-a24b-2947f724a6e1	2026-03-30 18:17:22.532+00	Egreso	Compra	7.76	cad6002c-87ce-498c-9816-14ae8acaf491	EGRESO: Liq LIQ-0000003 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 18:17:22.532+00	2026-03-30 18:17:22.532+00
eecac0bc-cdec-4d0a-ba8d-31e4269d1580	2026-03-30 18:18:43.419+00	Egreso	Gasto General	54.00	bc7ccf31-3f85-450f-833b-fe7436e2d166	\N	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 18:18:43.42+00	2026-03-30 18:18:43.42+00
c156a2f8-bd1a-4127-9329-64927ea211cd	2026-03-30 18:20:40.24+00	Egreso	Gasto General	10.50	1e8149d9-9709-436c-bcc5-25f93c54c7e8	\N	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 18:20:40.24+00	2026-03-30 18:20:40.24+00
3c658cca-6b2e-4164-965e-470c606876a6	2026-03-30 18:21:02.113+00	Egreso	Gasto General	7.00	48c82c47-2729-4ad1-aa8b-b2d306f3e56e	\N	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 18:21:02.113+00	2026-03-30 18:21:02.113+00
5777041f-c67c-46aa-aab4-1ce461f4d9fe	2026-03-30 18:26:08.941+00	Egreso	Compra	3.00	68c3258a-229a-4522-ba8e-7db2eae69ee0	EGRESO: Liq LIQ-0000004 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 18:26:08.942+00	2026-03-30 18:26:08.942+00
1e51a7b5-6c84-4adc-a356-74d44e8d763d	2026-03-30 18:27:10.576+00	Egreso	Gasto General	6.90	598b018f-28e1-4329-b250-2b8b6f69fe8c	\N	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 18:27:10.576+00	2026-03-30 18:27:10.576+00
0b3d67ff-bce3-4f17-9178-9c8d1b7a9676	2026-03-30 18:49:52.584+00	Egreso	Compra	48.50	f77a9c72-e8af-4f45-a5f6-28a60e896aab	EGRESO: Liq LIQ-0000005 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 18:49:52.584+00	2026-03-30 18:49:52.584+00
c9dd9f55-9c11-4779-96c5-138696e88cec	2026-03-30 18:51:34.273+00	Egreso	Compra	11.64	04926d47-b75e-4494-b028-c557092749f2	EGRESO: Liq LIQ-0000006 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 18:51:34.273+00	2026-03-30 18:51:34.273+00
7847defa-6f21-4b62-b0ce-288410a56b7c	2026-03-30 19:23:07.008+00	Egreso	Compra	51.66	c72da676-f391-4a97-9df4-51ebf763681d	EGRESO: Liq LIQ-0000007 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 19:23:07.008+00	2026-03-30 19:23:07.008+00
f5f0e7fc-e862-4da3-8bea-30e5b80782d5	2026-03-30 19:31:50.773+00	Egreso	Compra	12.00	0defab9b-1eae-4b52-a773-54aa75efdf8d	EGRESO: Liq LIQ-0000008 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 19:31:50.773+00	2026-03-30 19:31:50.773+00
82e83b4c-9143-4430-a5e3-a0fef6926568	2026-03-30 19:33:06.055+00	Egreso	Compra	28.00	e5eb4c2e-5076-461b-8e20-4eae8c3d1720	EGRESO: Liq LIQ-0000009 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 19:33:06.055+00	2026-03-30 19:33:06.055+00
7d5f43fb-979b-4004-85f8-a323ae21fcb7	2026-03-30 19:33:57.936+00	Egreso	Compra	8.25	d6f467b7-7c86-425a-bbd7-3cc1ab61d632	EGRESO: Liq LIQ-0000010 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 19:33:57.936+00	2026-03-30 19:33:57.936+00
1487fc58-7083-40d2-9940-46e30e3423c3	2026-03-30 19:35:13.547+00	Egreso	Compra	8.25	c052a8fa-8ecf-4788-9797-cd89716613ca	EGRESO: Liq LIQ-0000011 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 19:35:13.547+00	2026-03-30 19:35:13.547+00
38597674-4311-4b98-876c-4212ad589931	2026-03-30 19:40:15.759+00	Ingreso	Bancos	20.00	\N	MARACUYA 	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 19:40:15.759+00	2026-03-30 19:40:15.759+00
2eb5769e-de87-41de-83ae-be6ff1297d04	2026-03-30 19:47:35.308+00	Egreso	Gasto General	2.50	5cf0e3a5-1935-43fb-9600-40d421033db8	\N	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 19:47:35.308+00	2026-03-30 19:47:35.308+00
9a9163bd-d5f5-46e6-b1fc-641ff9b3f425	2026-03-30 20:01:25.664+00	Egreso	Compra	16.49	0f0092ee-4b0a-461a-9af3-ec2c7bd200a2	EGRESO: Liq LIQ-0000012 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 20:01:25.665+00	2026-03-30 20:01:25.665+00
f891d8af-0757-468a-8520-6acb476a5725	2026-03-30 20:17:53.328+00	Egreso	Compra	6.00	5a59992c-c07b-4dbd-878e-b135d935af97	EGRESO: Liq LIQ-0000013 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 20:17:53.328+00	2026-03-30 20:17:53.328+00
d6f52533-89ca-455a-ace4-58d361d1a8e7	2026-03-30 20:18:15.448+00	Egreso	Cuentas por Pagar	0.84	a1a16a5c-514b-422e-bebf-ae9212c0545b	Pago a Productor - Liq: LIQ-0000013 (Efectivo)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 20:18:15.448+00	2026-03-30 20:18:15.448+00
1bb15eb5-448c-4624-a8d7-39cb6ba9ed30	2026-03-30 21:45:10.403+00	Egreso	Compra	9.70	3d736b6a-9010-4739-9a0c-9097cece7479	EGRESO: Liq LIQ-0000014 (Pago fruta + saldos ant.)	13205a0c-e9eb-47a5-9e8f-1a13834d06d6	2026-03-30 21:45:10.403+00	2026-03-30 21:45:10.403+00
b8f21c4a-e77a-46e0-b7d0-d15175d1d69b	2026-03-31 16:20:54.444+00	Egreso	Compra	493.01	134bc834-706e-42ec-b29b-3a5a91b99608	EGRESO: Liq LIQ-0000015 (Pago fruta + saldos ant.)	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 16:20:54.444+00	2026-03-31 16:20:54.444+00
f8745e9a-0881-44c1-90c8-b30a537c2d3c	2026-03-31 16:24:09.832+00	Egreso	Gasto General	7.00	4103dbe4-440d-458e-9da3-3fd3f92b2cce	\N	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 16:24:09.832+00	2026-03-31 16:24:09.832+00
64bf8bf1-c385-4786-ad53-3e13f4e4cbee	2026-03-31 16:24:55.147+00	Egreso	Compra	15.75	be8cf9ab-0795-4b3f-9722-bf90ab57c052	EGRESO: Liq LIQ-0000016 (Pago fruta + saldos ant.)	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 16:24:55.147+00	2026-03-31 16:24:55.147+00
b9da1518-2d98-4fb9-a045-5a0023652136	2026-03-31 16:25:32.681+00	Egreso	Compra	10.50	cd6b4a6d-2166-4e85-afb9-b64e79062b07	EGRESO: Liq LIQ-0000017 (Pago fruta + saldos ant.)	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 16:25:32.682+00	2026-03-31 16:25:32.682+00
ce0c3cd5-8ec8-4283-b59d-328c346a2167	2026-03-31 16:26:27.858+00	Egreso	Compra	52.29	6696b84e-21f1-4ba4-81cd-7cf1a2f43851	EGRESO: Liq LIQ-0000018 (Pago fruta + saldos ant.)	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 16:26:27.858+00	2026-03-31 16:26:27.858+00
550125ac-6d83-4cef-ac8c-3b2e27bb8439	2026-03-31 16:26:57.709+00	Egreso	Compra	15.75	c8df8476-b074-45a0-be38-cc3d71dede51	EGRESO: Liq LIQ-0000019 (Pago fruta + saldos ant.)	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 16:26:57.709+00	2026-03-31 16:26:57.709+00
7aac9008-2ef7-4d68-bb26-a5306bbe8487	2026-03-31 16:27:43.429+00	Egreso	Compra	15.00	8bf56696-2264-43fc-a5a8-e2c49d842f66	EGRESO: Liq LIQ-0000020 (Pago fruta + saldos ant.)	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 16:27:43.43+00	2026-03-31 16:27:43.43+00
cb3dd423-8578-4238-a104-0189a0c244b9	2026-03-31 16:54:55.396+00	Egreso	Compra	15.49	7fb3f4dd-a740-45a5-b8ca-75b20cfd95f6	EGRESO: Liq LIQ-0000021 (Pago fruta + saldos ant.)	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 16:54:55.396+00	2026-03-31 16:54:55.396+00
42d0f915-8c17-4447-b625-a0086d7311bf	2026-04-01 12:52:56.316+00	Egreso	Compra	2.14	baf304ef-a46f-4a39-84a4-98f63deb9ede	EGRESO: Liq LIQ-0000026 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 12:52:56.316+00	2026-04-01 12:52:56.316+00
fe9b295b-eeca-429a-9e1e-048332c691c9	2026-04-01 15:36:36.491+00	Ingreso	Bancos	100.00	\N	INYECCIÓN: MONEDAS	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:36:36.491+00	2026-04-01 15:36:36.491+00
a884ebc5-c6dd-4611-a5e5-1322bc896a5d	2026-03-31 18:50:04.407+00	Egreso	Compra	16.49	d94a9e3c-c7f7-4537-aa28-6c774b56b9e2	EGRESO: Liq LIQ-0000022 (Pago fruta + saldos ant.)	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 18:50:04.408+00	2026-03-31 18:50:04.408+00
7801ee27-7618-4c03-ad55-5cfad2f8fa8a	2026-03-31 20:08:27.773+00	Egreso	Compra	8.54	90c9ac96-b9ca-4c87-813e-0c731f8b0b91	EGRESO: Liq LIQ-0000023 (Pago fruta + saldos ant.)	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 20:08:27.773+00	2026-03-31 20:08:27.773+00
511e6fc3-67b2-44f3-aa13-73eedc004e23	2026-03-31 20:10:31.584+00	Egreso	Compra	112.33	3dca3d13-3fc2-4a48-a2db-50a70d74d1e1	EGRESO: Liq LIQ-0000024 (Pago fruta + saldos ant.)	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 20:10:31.584+00	2026-03-31 20:10:31.584+00
e2644722-3b69-43ce-802e-4df9575fb883	2026-03-31 20:48:48.162+00	Egreso	Gasto General	25.00	713d24d4-b794-413d-9ce4-da5a1bff40f7	\N	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 20:48:48.162+00	2026-03-31 20:48:48.162+00
b2ae8e6c-6a0f-4243-b693-fafed86dd1f6	2026-03-31 20:49:11.638+00	Egreso	Gasto General	16.30	4b41164f-7f7a-4a63-b364-be5a7b12ba50	\N	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 20:49:11.638+00	2026-03-31 20:49:11.638+00
e16ae649-182b-4efd-adb0-52930c8d131a	2026-03-31 21:57:19.382+00	Egreso	Compra	5.34	8cd4debf-f52b-4613-80f7-d27977f59471	EGRESO: Liq LIQ-0000025 (Pago fruta + saldos ant.)	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 21:57:19.382+00	2026-03-31 21:57:19.382+00
2e834787-de87-4f69-bbd3-32c33c1a8d9a	2026-03-31 22:00:01.311+00	Egreso	Gasto General	1.00	0394a1fa-2ce9-4166-b889-81ee6db36ba0	\N	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 22:00:01.312+00	2026-03-31 22:00:01.312+00
afa8a318-4e17-4da6-99a1-d59544e5a389	2026-03-31 22:46:38.292+00	Egreso	Gasto General	135.00	668def2c-ca06-43d1-a1dc-3bb187a2834a	\N	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 22:46:38.293+00	2026-03-31 22:46:38.293+00
705ed7c4-4628-453b-810d-b15fed3bd477	2026-04-01 15:37:35.115+00	Egreso	Compra	17.76	23561d0c-1737-4f0c-9b31-29d039182a16	EGRESO: Liq LIQ-0000027 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:37:35.116+00	2026-04-01 15:37:35.116+00
85ef74c9-3830-4c59-bc86-48a1b7c6c9a0	2026-04-01 15:38:15.858+00	Egreso	Compra	15.42	69b4a9c8-234c-4850-849f-130fdef14c67	EGRESO: Liq LIQ-0000028 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:38:15.858+00	2026-04-01 15:38:15.858+00
d8a19e97-09d1-4ddd-bf0f-e8abac440632	2026-04-01 15:39:10.284+00	Egreso	Compra	39.87	bddb15b5-aa49-43a7-a62c-e4a92f1e000a	EGRESO: Liq LIQ-0000029 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:39:10.284+00	2026-04-01 15:39:10.284+00
282ebcd3-c3f6-48bd-8795-00e72279bb5a	2026-04-01 15:39:52.205+00	Egreso	Compra	28.81	4824eacd-4389-47df-a085-c0222794e52e	EGRESO: Liq LIQ-0000030 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:39:52.205+00	2026-04-01 15:39:52.205+00
583da355-02be-4ac4-b972-c3576f9613a6	2026-04-01 15:40:46.749+00	Egreso	Compra	85.56	b4c9a09a-3782-4879-ad81-c5f5f20667d0	EGRESO: Liq LIQ-0000031 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:40:46.749+00	2026-04-01 15:40:46.749+00
0fc98855-4eaa-4f71-b3d1-7626c6b5d837	2026-04-01 15:41:30.722+00	Egreso	Compra	38.71	8f65a2f2-2401-46e6-82e5-1241d3bd36f1	EGRESO: Liq LIQ-0000032 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:41:30.722+00	2026-04-01 15:41:30.722+00
e61e4bfe-e8e3-4177-89c9-7edac99ba584	2026-04-01 15:43:10.338+00	Egreso	Compra	12.23	dadb1d62-837e-4e4f-8a71-b8b8bbded5bf	EGRESO: Liq LIQ-0000033 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:43:10.338+00	2026-04-01 15:43:10.338+00
08f71834-a91d-48ee-96c2-ae9c5776ba51	2026-04-01 15:44:02.482+00	Egreso	Compra	24.45	dc3ea860-98c2-40ff-acbd-850c8524a575	EGRESO: Liq LIQ-0000034 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:44:02.482+00	2026-04-01 15:44:02.482+00
491037af-44f7-42ce-bcad-5c1e087571c8	2026-04-01 15:50:12.483+00	Egreso	Compra	4.37	887d9dba-9dcf-4e4b-b2d0-9239925893f1	EGRESO: Liq LIQ-0000035 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:50:12.483+00	2026-04-01 15:50:12.483+00
84ebbd77-1e89-4244-b022-f508402086c5	2026-04-01 15:52:00.57+00	Egreso	Compra	93.90	795a999f-1d86-410a-8b1c-8f206cb34739	EGRESO: Liq LIQ-0000036 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:52:00.57+00	2026-04-01 15:52:00.57+00
c26c877f-03b9-4b44-9221-95810ceb561a	2026-04-01 15:52:31.872+00	Egreso	Compra	4.76	054646cf-7984-4119-b0a5-76465fd4a94b	EGRESO: Liq LIQ-0000037 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:52:31.872+00	2026-04-01 15:52:31.872+00
69ef5f0d-5c88-4207-9095-c4ba3e6cbd83	2026-04-01 15:53:10.317+00	Egreso	Compra	42.69	05a973d5-5a1a-40e4-8a9a-15b26c551ead	EGRESO: Liq LIQ-0000038 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:53:10.317+00	2026-04-01 15:53:10.317+00
68476aa7-74a0-40a1-aad6-52647aad7517	2026-04-01 15:55:27.409+00	Egreso	Compra	85.11	c86bc212-15bd-4485-b141-1ad397f149c7	EGRESO: Liq LIQ-0000039 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:55:27.409+00	2026-04-01 15:55:27.409+00
ee1b9b82-c06e-46af-8ebe-10ed37a126ea	2026-04-01 15:55:58.243+00	Egreso	Compra	132.90	81b9240f-5741-44d4-9e78-e3c9329caa87	EGRESO: Liq LIQ-0000040 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:55:58.243+00	2026-04-01 15:55:58.243+00
18ff2897-fbe2-443b-af86-d2319fa7f5f6	2026-04-01 15:56:26.844+00	Egreso	Compra	399.80	c055b336-8dcf-4b91-a06b-4aa31715ae71	EGRESO: Liq LIQ-0000041 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:56:26.844+00	2026-04-01 15:56:26.844+00
134c9cb7-1acf-4898-b6b5-0fed850fdb05	2026-04-01 15:57:10.356+00	Egreso	Compra	258.22	f4f87733-e27b-4bb4-9c18-cc40599dfd6c	EGRESO: Liq LIQ-0000042 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:57:10.356+00	2026-04-01 15:57:10.356+00
62d51b9d-5c63-4ae2-9a37-eacb994550d0	2026-04-01 15:58:00.986+00	Egreso	Compra	25.61	01ede9d5-7ee9-4b98-9997-44e6f29ed035	EGRESO: Liq LIQ-0000043 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:58:00.986+00	2026-04-01 15:58:00.986+00
73d03624-b118-4d90-83f4-b87fc93acc64	2026-04-01 15:58:46.648+00	Egreso	Gasto General	20.00	844cbda0-4bc3-4476-a6c4-468fff2da534	\N	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:58:46.649+00	2026-04-01 15:58:46.649+00
1a168b96-5482-426c-bdd0-766646c14b6b	2026-04-01 15:59:03.165+00	Egreso	Gasto General	13.00	0ed3c78a-ac40-4731-893f-1174c68778d0	\N	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:59:03.165+00	2026-04-01 15:59:03.165+00
20267d6e-ee25-46b9-9af9-127be9e687cc	2026-04-01 15:59:41.51+00	Egreso	Gasto General	6.00	0548212f-ff2c-4499-b1b2-2e792e916ea9	\N	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 15:59:41.511+00	2026-04-01 15:59:41.511+00
b8cf1157-abb2-40e7-b1d4-53cd8ab4f9b5	2026-04-01 16:00:00.54+00	Egreso	Gasto General	32.00	aa1e3ea5-4962-430e-8612-1f989efa1bbe	\N	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 16:00:00.54+00	2026-04-01 16:00:00.54+00
ce4dbe98-0adf-49e3-805c-c4ef695a9965	2026-04-01 16:04:23.8+00	Egreso	Compra	136.00	55f203d3-1174-4f15-a706-87515925824f	EGRESO: Liq LIQ-0000044 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 16:04:23.8+00	2026-04-01 16:04:23.8+00
c00b1f76-262d-4df3-bb36-73623ba1cac2	2026-04-01 16:04:57.791+00	Egreso	Compra	4.25	d7b18cc4-fd77-46f5-962c-f8acf048b442	EGRESO: Liq LIQ-0000045 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 16:04:57.791+00	2026-04-01 16:04:57.791+00
68b2775d-011c-4b15-9101-a0611d06f255	2026-04-01 16:05:23.576+00	Egreso	Compra	51.00	49874bd9-fcda-42e3-8871-ba321affac26	EGRESO: Liq LIQ-0000046 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 16:05:23.576+00	2026-04-01 16:05:23.576+00
d3368b1f-8a97-45fe-98bd-86a382f32d21	2026-04-01 16:05:57.403+00	Egreso	Compra	3.75	ee40c86f-414a-40a6-8667-7f3dd5e13296	EGRESO: Liq LIQ-0000047 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 16:05:57.403+00	2026-04-01 16:05:57.403+00
519a1754-5b77-4951-968e-558938cfaadc	2026-04-01 16:07:25.006+00	Egreso	Compra	60.01	1489dac4-044a-4399-8066-e13b43f992cc	EGRESO: Liq LIQ-0000048 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 16:07:25.006+00	2026-04-01 16:07:25.006+00
2aa5c1f6-31d3-40ca-8c43-28a2297f831f	2026-04-01 16:08:11.194+00	Egreso	Compra	15.30	8742caf3-959f-43d8-8a05-0352314b8e31	EGRESO: Liq LIQ-0000049 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 16:08:11.195+00	2026-04-01 16:08:11.195+00
a930ebcd-ceee-400d-8807-d5d0d2434f78	2026-04-01 18:37:18.827+00	Egreso	Compra	3.21	fe00a0c3-9527-4996-91b2-035e9239b6ba	EGRESO: Liq LIQ-0000050 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 18:37:18.827+00	2026-04-01 18:37:18.827+00
54eacd77-fed8-4cce-918e-e5ee6dd4c317	2026-04-01 18:56:59.709+00	Egreso	Gasto General	35.00	7d66679f-ba08-447b-afe0-816fcac8c3d5	\N	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 18:56:59.709+00	2026-04-01 18:56:59.709+00
5ab30732-214f-4220-91ea-8f5b0d4c2077	2026-04-01 18:57:13.23+00	Egreso	Gasto General	12.00	82f79d9d-154a-45ae-9012-e65e69b24897	\N	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 18:57:13.23+00	2026-04-01 18:57:13.23+00
4883a2fb-88aa-436d-9fa3-d2eaf0756db7	2026-04-01 18:57:41.861+00	Egreso	Gasto General	9.25	86e82a13-c937-42f9-a09d-a55cd986379f	\N	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 18:57:41.861+00	2026-04-01 18:57:41.861+00
fa41a56c-03ec-4c1d-b5f0-03d12f0b72df	2026-04-01 19:12:15.113+00	Egreso	Gasto General	2.50	b23d9bf3-052e-42e4-8939-ce5ae740bb23	\N	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 19:12:15.113+00	2026-04-01 19:12:15.113+00
9c836cd4-d7d7-41a1-9d50-cd3a91a1ffa3	2026-04-01 19:13:04.921+00	Egreso	Compra	1.09	21495ead-f14f-496c-b748-842624cbe49f	EGRESO: Liq LIQ-0000051 (Pago fruta + saldos ant.)	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 19:13:04.922+00	2026-04-01 19:13:04.922+00
863f8a0a-38fa-45f0-b3db-93048f1dca54	2026-04-01 20:13:20.03+00	Ingreso	Venta	3.20	\N	VENTA RÁPIDA: VENTA; 4.57 Kilogramos MARACUYA - 	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 20:13:20.031+00	2026-04-01 20:13:20.031+00
d00c2159-fb60-4bb1-99cc-ec127ad1e4ac	2026-04-01 20:14:20.628+00	Egreso	Gasto General	3.00	eb992a45-dd44-4d7e-ae93-fe31e87d0892	\N	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 20:14:20.628+00	2026-04-01 20:14:20.628+00
b95567a1-fc58-48ba-9cd2-c07ee31ab242	2026-04-01 22:19:11.256+00	Egreso	Gasto General	122.00	e5b23be1-afac-4608-a5a7-f80dd8769100	\N	79f0219a-73de-442f-8648-9e177a159ff9	2026-04-01 22:19:11.256+00	2026-04-01 22:19:11.256+00
07628dc4-e54f-4155-a8e9-30d075a57672	2026-04-02 16:09:10.806+00	Egreso	Compra	85.00	bab432c2-66b0-40ec-80c7-e861280ac66f	EGRESO: Liq LIQ-0000052 (Pago fruta + saldos ant.)	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:09:10.806+00	2026-04-02 16:09:10.806+00
92415287-95d8-442d-b310-76b8d46aea69	2026-04-02 16:09:35.54+00	Egreso	Compra	5.09	3045ce34-5174-4192-aa1d-5747347c5660	EGRESO: Liq LIQ-0000053 (Pago fruta + saldos ant.)	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:09:35.54+00	2026-04-02 16:09:35.54+00
7d522a9c-c97f-47e4-882e-331d7629c730	2026-04-02 16:10:02.438+00	Egreso	Compra	5.09	54185ec0-63be-4fe8-b541-13278c09ceeb	EGRESO: Liq LIQ-0000054 (Pago fruta + saldos ant.)	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:10:02.438+00	2026-04-02 16:10:02.438+00
7d1cdd79-c7e8-437e-b528-c9d16d6078e9	2026-04-02 16:10:36.138+00	Egreso	Compra	127.50	016c39b8-956f-4547-a593-940acaf1be49	EGRESO: Liq LIQ-0000055 (Pago fruta + saldos ant.)	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:10:36.138+00	2026-04-02 16:10:36.138+00
edd7d116-a697-4db5-b51a-319c04f5ae3f	2026-04-02 16:11:06.135+00	Egreso	Gasto General	15.00	f82f2a61-9841-4611-b8bb-d25be97a5220	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:11:06.135+00	2026-04-02 16:11:06.135+00
14d7a33d-1c78-49f2-bdbb-4aad8a3c5edc	2026-04-02 16:11:21.037+00	Egreso	Gasto General	16.00	01a18738-2229-4eac-adbd-a29498b4b80f	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:11:21.037+00	2026-04-02 16:11:21.037+00
78fe422e-3f60-405c-98b8-3e7a22093234	2026-04-02 16:11:32.02+00	Egreso	Gasto General	100.00	ecfc5c94-d23e-4668-84a2-bacd53b09c98	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:11:32.02+00	2026-04-02 16:11:32.02+00
9fa7df8c-c1a0-4813-9cad-a7b63f7ee274	2026-04-02 16:11:52.062+00	Egreso	Gasto General	6.45	ad956756-84cd-45aa-8ee4-265f2bcf43dc	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:11:52.062+00	2026-04-02 16:11:52.062+00
5d54691f-1ca2-4578-a19c-0d742d6b654e	2026-04-02 16:12:07.836+00	Egreso	Gasto General	24.00	4e3945e6-e561-42f1-8ebe-41a3793b9d39	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:12:07.836+00	2026-04-02 16:12:07.836+00
f8f30402-f576-4fa2-b97e-0b36738e4fe3	2026-04-02 16:12:24.269+00	Egreso	Gasto General	2.50	9ead6117-edfa-48db-a92d-1e25f2f9eb45	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:12:24.269+00	2026-04-02 16:12:24.269+00
c6130b5b-b2e3-437c-abc9-067587729b74	2026-04-02 16:12:44.477+00	Egreso	Gasto General	1.00	1f61b035-c599-4e9f-9ec3-3f8e0b46c4aa	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:12:44.477+00	2026-04-02 16:12:44.477+00
07eb0d61-228a-4e99-9fe0-ec061bae7d80	2026-04-02 16:13:25.696+00	Ingreso	Venta	1.01	\N	VENTA RÁPIDA: VENTA; 1.45 Libras MARACUYA - 	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:13:25.697+00	2026-04-02 16:13:25.697+00
1a7f5a55-03b4-4281-8834-36fd5b86040e	2026-04-02 16:16:36.188+00	Ingreso	Bancos	2.00	\N	INYECCIÓN: DEVOLUCION DE 2 DE TUBO 	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 16:16:36.188+00	2026-04-02 16:16:36.188+00
48473e85-4ab6-45aa-a303-62f4c5d26c78	2026-04-02 18:06:26.369+00	Egreso	Compra	24.55	d46aa130-66fc-4a17-b02c-f850b3c6f1b0	EGRESO: Liq LIQ-0000056 (Pago fruta + saldos ant.)	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 18:06:26.369+00	2026-04-02 18:06:26.369+00
c285f2c2-5437-481c-b987-59cbc7db4ba3	2026-04-02 18:52:26.172+00	Egreso	Gasto General	2.50	18c2c2b2-dc8a-4543-870e-355fc77c1954	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 18:52:26.173+00	2026-04-02 18:52:26.173+00
78d65b8c-c8ca-489b-9136-43b80a4c7c61	2026-04-02 19:43:11.565+00	Egreso	Gasto General	20.95	6fb1cc58-542a-4e49-8045-b40f049887fa	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 19:43:11.565+00	2026-04-02 19:43:11.565+00
18805795-7fde-4f14-a940-5449ddc18f95	2026-04-02 19:49:52.783+00	Ingreso	Bancos	100.00	\N	INYECCIÓN: ABONO DE EDUARDO ZAMBRANO 	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 19:49:52.783+00	2026-04-02 19:49:52.783+00
31b3cb1c-ffd8-40ed-9803-c04ede39688d	2026-04-02 20:10:34.64+00	Egreso	Gasto General	37.90	8cdcb620-2502-46e9-ad99-43931c62363e	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 20:10:34.64+00	2026-04-02 20:10:34.64+00
540e7fab-dbe8-4278-8d75-4b4d73250e43	2026-04-02 20:31:55.63+00	Egreso	Compra	26.54	cdd3912d-ea0f-4b02-bd81-33b128d58868	EGRESO: Liq LIQ-0000057 (Pago fruta + saldos ant.)	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 20:31:55.63+00	2026-04-02 20:31:55.63+00
41655e73-85de-43b8-9f1b-7a639b1da3d9	2026-04-02 21:31:32.876+00	Egreso	Gasto General	500.00	a0da0a5b-2e80-4cc1-91f7-aef4c091c93c	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 21:31:32.876+00	2026-04-02 21:31:32.876+00
bc095ca4-7d75-4cfc-ab5b-b7de92a6b273	2026-04-02 22:07:23.509+00	Egreso	Gasto General	0.50	a2dc985d-1a0a-4950-8cfc-85451677103c	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 22:07:23.509+00	2026-04-02 22:07:23.509+00
5fd4991b-4295-4edf-ba9d-6c94594b3198	2026-04-02 21:30:31.867+00	Egreso	Préstamo	70.00	47328410-6909-4477-9ee5-021363014ca6	EDICIÓN: PRESTO EL JUEVES, Y VIERNES 17	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 21:30:31.867+00	2026-04-18 16:48:12.912+00
116f5700-3754-455f-a0a7-f9dc3c7f8d08	2026-04-02 22:09:00.644+00	Egreso	Compra	10.68	cdda056e-0ef1-4332-b17a-15dc665fa2dd	EGRESO: Liq LIQ-0000058 (Pago fruta + saldos ant.)	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 22:09:00.644+00	2026-04-02 22:09:00.644+00
1de92952-aa6e-4530-99ac-d8b30b2f67fd	2026-03-31 16:40:32.166+00	Egreso	Préstamo	60.00	1ba855a5-fd2b-49cd-bc72-640ee32f0c66	EDICIÓN: PRESTO MARTES Y JUEVES	b50721c2-08e2-463a-a0f0-0041ac5707ad	2026-03-31 16:40:32.166+00	2026-04-02 22:22:49.242+00
7acb3a2a-1026-47b9-9c23-b1df20c53600	2026-04-02 22:24:12.737+00	Egreso	Gasto General	20.00	5d19e169-8bb4-4016-9ccc-ad3610ec79e8	\N	0028889b-9d19-4401-8da9-fbdb75385cb4	2026-04-02 22:24:12.737+00	2026-04-02 22:24:12.737+00
6ebb994e-1743-4cee-a2dd-04887c49eff9	2026-04-04 13:10:27.445+00	Egreso	Gasto General	2.00	ce881e1b-6f57-4182-b991-299d0a5f3aa3	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 13:10:27.445+00	2026-04-04 13:10:27.445+00
759a373c-5450-4125-b917-fe292e58efac	2026-04-04 13:10:41.12+00	Egreso	Gasto General	100.00	c3ad85de-1a1d-45ac-bb92-5214d4dc6bb8	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 13:10:41.12+00	2026-04-04 13:10:41.12+00
2a6cafc5-1c6e-4328-903c-64d287ce7b6e	2026-04-04 17:34:39.104+00	Egreso	Compra	17.08	d04e84ff-5e93-46fb-abce-5659d65237e3	EGRESO: Liq LIQ-0000059 (Pago fruta + saldos ant.)	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 17:34:39.104+00	2026-04-04 17:34:39.104+00
bd70a7b5-bb44-4021-9802-623de0c4df29	2026-04-04 17:35:37.785+00	Egreso	Compra	25.77	93cbd3b9-5a95-42a3-b039-320c0aba4fd6	EGRESO: Liq LIQ-0000060 (Pago fruta + saldos ant.)	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 17:35:37.785+00	2026-04-04 17:35:37.785+00
d0b78642-fdb7-40e2-80b4-01909b1d2015	2026-04-04 17:36:22.206+00	Egreso	Compra	20.28	065d9815-6f19-4477-a78f-07e17361ee45	EGRESO: Liq LIQ-0000061 (Pago fruta + saldos ant.)	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 17:36:22.206+00	2026-04-04 17:36:22.206+00
bf54bc81-93da-409a-b6f6-212cfc93abe4	2026-04-04 17:37:10.459+00	Egreso	Compra	15.52	5a70e473-2d52-4ec9-971d-35c0f4171ce2	EGRESO: Liq LIQ-0000062 (Pago fruta + saldos ant.)	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 17:37:10.459+00	2026-04-04 17:37:10.459+00
de43b04b-8942-47be-a2b2-5c28bb24ce9d	2026-04-04 17:37:49.317+00	Egreso	Compra	59.76	e7b985bf-abef-4ef6-944f-044b827cee3b	EGRESO: Liq LIQ-0000063 (Pago fruta + saldos ant.)	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 17:37:49.317+00	2026-04-04 17:37:49.317+00
d665c6b8-1858-48cd-93d7-46f43660a3ba	2026-04-04 17:39:19.223+00	Egreso	Gasto General	3.00	56de8c32-749a-4276-8c7a-6caacdd571e7	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 17:39:19.224+00	2026-04-04 17:39:19.224+00
4efdc707-35cb-41e9-aa51-f45b16067ab7	2026-04-04 17:39:34.473+00	Egreso	Gasto General	10.75	7b7a314c-9629-4a1c-9834-c29c32b1639f	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 17:39:34.473+00	2026-04-04 17:39:34.473+00
18a0ac3c-af8c-4ff7-8443-2756ee2df8a0	2026-04-04 17:39:52.639+00	Egreso	Gasto General	2.50	867fd12b-0877-4039-96d4-65c798a5681c	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 17:39:52.639+00	2026-04-04 17:39:52.639+00
563ccf24-67df-41a6-8837-577455702faf	2026-04-04 17:40:08.227+00	Egreso	Gasto General	0.50	066cf44e-3235-42e9-8ec9-fa1ed6fab8c9	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 17:40:08.227+00	2026-04-04 17:40:08.227+00
c38e88aa-9499-41be-bdb9-983f169f7800	2026-04-04 17:40:46.815+00	Ingreso	Bancos	1000.00	\N	INYECCIÓN: PRESTAMO A ANTONIO 	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 17:40:46.815+00	2026-04-04 17:40:46.815+00
015c410d-18ef-409f-9797-f28df202b6ff	2026-04-04 17:41:22.638+00	Ingreso	Bancos	2.75	\N	INYECCIÓN: VENTA DE GAS 	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 17:41:22.638+00	2026-04-04 17:41:22.638+00
99a19cb7-98f2-4e78-ae6d-2295257dac43	2026-04-04 18:09:45.184+00	Egreso	Compra	17.08	596a6bc1-c5da-4b85-bdd8-273b49fd090a	EGRESO: Liq LIQ-0000064 (Pago fruta + saldos ant.)	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 18:09:45.185+00	2026-04-04 18:09:45.185+00
0ead22e2-2900-45a3-a111-0b432a2e6714	2026-04-04 18:16:22.295+00	Egreso	Gasto General	15.00	ff522fe2-c9a2-4f5b-ac4d-7e2e71bce01c	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 18:16:22.295+00	2026-04-04 18:16:22.295+00
b027525d-db0d-4083-9d41-e298d057ec04	2026-04-04 18:31:16.79+00	Egreso	Gasto General	2.00	95d5799e-2236-4be1-b280-a0bac55db339	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 18:31:16.79+00	2026-04-04 18:31:16.79+00
ce86145f-1632-4fd0-99b6-1f5042b1c1b5	2026-04-04 19:26:59.309+00	Egreso	Compra	5.34	2717e06c-3efb-477c-9b8d-48950bcc01ed	EGRESO: Liq LIQ-0000065 (Pago fruta + saldos ant.)	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 19:26:59.309+00	2026-04-04 19:26:59.309+00
3b828208-7112-4d07-8341-b46bf952286f	2026-04-04 20:55:41.341+00	Egreso	Gasto General	5.00	c6366b38-214f-4567-8114-518532b7d503	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 20:55:41.341+00	2026-04-04 20:55:41.341+00
d75feb77-8712-4ee4-91d6-2e20ad05e3e0	2026-04-04 20:56:16.462+00	Egreso	Gasto General	54.60	4f200e16-538c-45e6-9773-5c2380614941	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 20:56:16.462+00	2026-04-04 20:56:16.462+00
9ac8e4d8-240d-43b4-931f-6ab935e5a974	2026-04-04 21:14:50.064+00	Egreso	Gasto General	2.50	cabb493f-1eb5-4ea0-86c3-0ddd56d04181	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 21:14:50.064+00	2026-04-04 21:14:50.064+00
9369cd56-1bef-46e0-8ad5-a12f0f0e99dc	2026-04-04 21:18:29.874+00	Ingreso	Bancos	2.50	\N	INYECCIÓN: DEVOLUCION DE LA COMIDA DE HULK	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 21:18:29.874+00	2026-04-04 21:18:29.874+00
5c176111-7152-4b7e-8fa4-62c0dcfc72f5	2026-04-04 21:32:20.527+00	Egreso	Gasto General	40.00	655cf89a-4088-4080-afd0-0bf76dd705d4	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 21:32:20.527+00	2026-04-04 21:32:20.527+00
3d0bf872-7b23-466e-844f-f96f69486add	2026-04-04 21:34:47.184+00	Egreso	Gasto General	7.00	ba7768a0-a4a5-414c-919c-a575ef68fff4	\N	75af6626-362e-4bc6-8947-8b7f39d0cc6b	2026-04-04 21:34:47.184+00	2026-04-04 21:34:47.184+00
d4a979a4-f619-4312-8249-1a6f349e4395	2026-04-06 16:04:52.05+00	Egreso	Nomina	250.00	93b0094b-78c9-4ae1-8480-48861be72cbf	GENERAL: PAGO DE NÓMINA 	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 16:04:52.05+00	2026-04-06 16:04:52.05+00
c31e999f-5a94-4161-b099-24c807ab9de3	2026-04-06 16:07:13.53+00	Egreso	Nomina	91.65	402a6a09-ec99-4966-8821-9c95f82d733c	GENERAL: PAGO DE NÓMINA 	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 16:07:13.53+00	2026-04-06 16:07:13.53+00
a8a47163-cc7d-44ae-b6c6-6535f121e48a	2026-04-06 16:07:29.922+00	Egreso	Nomina	120.00	d4b85e10-2dd2-49a1-b261-f6e97b3326e1	GENERAL: PAGO DE NÓMINA 	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 16:07:29.922+00	2026-04-06 16:07:29.922+00
6f4d81cf-8961-4a28-a5f6-583da433f4bf	2026-04-06 16:09:04.889+00	Egreso	Nomina	60.00	d4fe84f7-aa69-48e9-bee2-649923a3cc96	GENERAL: PAGO DE NÓMINA 	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 16:09:04.889+00	2026-04-06 16:09:04.889+00
40292d64-7131-45d3-adbb-badfbbfda0fb	2026-04-06 16:10:52.433+00	Egreso	Gasto General	80.00	84e92835-b015-436b-af7c-87262a4c0204	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 16:10:52.433+00	2026-04-06 16:10:52.433+00
8f378b14-c2d6-475e-97c5-16ae89f532fd	2026-04-06 16:11:14.128+00	Egreso	Gasto General	80.00	a1db2cee-f8ec-41c2-884c-c4b00ba45537	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 16:11:14.128+00	2026-04-06 16:11:14.128+00
a3b920e1-3342-4ffb-b581-e2810f5bafcb	2026-04-06 18:31:48.652+00	Ingreso	Venta	0.50	\N	VENTA RÁPIDA: VENTA; 0.71 Libras MARACUYA - 	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:31:48.653+00	2026-04-06 18:31:48.653+00
f2a1e9f2-4e7f-4ea0-b015-694d24b9735b	2026-04-06 18:32:34.366+00	Ingreso	Venta	1.01	\N	VENTA RÁPIDA: VENTA; 1.45 Libras MARACUYA - 	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:32:34.366+00	2026-04-06 18:32:34.366+00
219005df-8d62-4f76-b237-f2ad5dac89fe	2026-04-06 18:32:58.772+00	Egreso	Gasto General	2.00	ff237387-5410-4ea0-af73-573207216a5b	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:32:58.772+00	2026-04-06 18:32:58.772+00
9fb28b11-21fe-407d-ae6a-6166ba4515fc	2026-04-06 18:33:17.925+00	Egreso	Gasto General	35.00	e5573ef8-0b69-484a-a2c1-42517bcfe6a4	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:33:17.925+00	2026-04-06 18:33:17.925+00
e10afe5d-7c44-43d3-b2f4-2426d9b52c14	2026-04-06 18:33:41.848+00	Egreso	Gasto General	17.00	1edfb766-b784-47af-82c0-a052b468f7aa	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:33:41.848+00	2026-04-06 18:33:41.848+00
b15b20a1-f675-4d61-aabe-32c075d854ee	2026-04-06 18:34:04.244+00	Egreso	Gasto General	72.60	9437a3dd-6e2b-4694-b37c-c2c7588d83ac	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:34:04.244+00	2026-04-06 18:34:04.244+00
74d68930-4689-42c4-9b5c-a6d845a7fcf8	2026-04-06 18:34:24.016+00	Egreso	Gasto General	18.00	e3499a03-de1c-4c03-9167-5590196213d4	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:34:24.016+00	2026-04-06 18:34:24.016+00
ee325ed9-15e6-49af-a88d-3cf87b8b1c56	2026-04-06 18:34:43.843+00	Egreso	Gasto General	70.00	09e7753f-6dd8-4f46-a3d9-5e618c968be6	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:34:43.844+00	2026-04-06 18:34:43.844+00
0a4413da-0c70-485d-b6fb-1d504b322f2e	2026-04-06 18:35:22.89+00	Egreso	Gasto General	8.00	588cbc46-5c9c-4c1e-afb4-567466b65baf	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:35:22.89+00	2026-04-06 18:35:22.89+00
ab2e126c-2eaa-4ed3-b260-f3ee8964caa1	2026-04-06 18:36:39.06+00	Egreso	Compra	87.30	06b6b10f-fa1a-4eb2-a0bc-cb443fc0adb6	EGRESO: Liq LIQ-0000066 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:36:39.06+00	2026-04-06 18:36:39.06+00
ae52ebf0-0191-41a8-8fba-64b15863dca1	2026-04-06 18:37:10.067+00	Egreso	Compra	13.62	28002cf7-4edd-4828-9372-4a425fb67ca6	EGRESO: Liq LIQ-0000067 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:37:10.067+00	2026-04-06 18:37:10.067+00
d827e764-04db-4a57-afac-d3b144962640	2026-04-06 18:38:07.033+00	Egreso	Compra	133.17	10d0016e-583a-4083-bbd1-49572a3aef62	EGRESO: Liq LIQ-0000068 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:38:07.033+00	2026-04-06 18:38:07.033+00
1c39b40e-de27-4d6d-86ce-d39e7e82670d	2026-04-06 18:38:40+00	Egreso	Compra	69.36	ec773a21-2b56-4db6-b446-72a81b7aea18	EGRESO: Liq LIQ-0000069 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:38:40+00	2026-04-06 18:38:40+00
9c658fae-74a0-4136-b061-6d334f622b51	2026-04-06 18:39:06.63+00	Egreso	Compra	7.76	e7ae8105-8d22-4f98-b8e8-ead4f69c3365	EGRESO: Liq LIQ-0000070 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:39:06.63+00	2026-04-06 18:39:06.63+00
6bd7cc58-bbf5-4760-bece-586e9b1d5283	2026-04-06 18:40:18.901+00	Egreso	Compra	5.58	e80a85ed-9b71-4899-bfa9-9cdd0861ca69	EGRESO: Liq LIQ-0000071 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:40:18.901+00	2026-04-06 18:40:18.901+00
8cb3474f-9ae7-4937-adc0-afda4d62db19	2026-04-06 18:40:48.139+00	Egreso	Compra	9.32	86a549d7-e3b2-4ebb-8954-6c3e4b749b28	EGRESO: Liq LIQ-0000072 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:40:48.14+00	2026-04-06 18:40:48.14+00
e9025cb3-cd43-4a59-8d5e-fcf4bf25067d	2026-04-06 18:42:42.462+00	Egreso	Compra	5.75	81aa3e21-aa4b-4231-871d-4b9067b5cddb	EGRESO: Liq LIQ-0000073 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:42:42.462+00	2026-04-06 18:42:42.462+00
e8c83905-8e89-4268-93a7-bebc4bbad718	2026-04-06 18:46:27.479+00	Egreso	Compra	66.55	5835b333-6037-42c7-adcc-663a14d0d204	EGRESO: Liq LIQ-0000074 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 18:46:27.479+00	2026-04-06 18:46:27.479+00
7f0ec7ea-5712-4161-81ec-93caead95e65	2026-04-06 21:41:06.974+00	Egreso	Compra	69.36	4696f995-2932-470f-84ee-ae40d844d021	EGRESO: Liq LIQ-0000075 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 21:41:06.975+00	2026-04-06 21:41:06.975+00
19227625-4753-43ca-999f-0574a0855b91	2026-04-06 21:41:42.014+00	Egreso	Compra	7.47	dc7555f5-e069-4f34-a0fe-e3a532804a4d	EGRESO: Liq LIQ-0000076 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 21:41:42.014+00	2026-04-06 21:41:42.014+00
8a805441-3223-4ba5-8a7c-fb288c318222	2026-04-06 22:16:32.237+00	Egreso	Gasto General	8.00	de719a01-9ad3-4e54-9e43-6311eded7e00	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 22:16:32.237+00	2026-04-06 22:16:32.237+00
05aa325f-a695-4a3b-9a66-f026165dd723	2026-04-06 22:28:26.619+00	Egreso	Gasto General	3.00	1279d767-9a69-4bba-add2-25c04f87b236	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-06 22:28:26.619+00	2026-04-06 22:28:26.619+00
6d70a35f-5abd-47e6-bb80-a467ae85ab2f	2026-04-07 13:14:47.423+00	Egreso	Gasto General	60.00	b57f7e90-e624-448d-9712-18cec54a8d8d	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 13:14:47.423+00	2026-04-07 13:14:47.423+00
c5a95bad-b3ec-488b-9622-43a0871a4073	2026-04-07 16:43:14.465+00	Ingreso	Venta	9606.40	7d0243a3-ced6-45ca-a5cf-223320fce070	VENTA VNT-0000001 | UNIDAD: Libras | LIQUIDO: $9606.4	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 16:43:14.466+00	2026-04-07 16:43:14.466+00
60312487-da3c-4364-91f0-b245f1c7ecd5	2026-04-07 19:25:39.01+00	Egreso	Gasto General	9606.40	36f7d091-9f75-47dd-be6c-82507d27c062	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:25:39.01+00	2026-04-07 19:25:39.01+00
918bf369-f79c-4e55-9d27-32d3cdd57224	2026-04-07 19:27:31.606+00	Egreso	Gasto General	3.00	6a53a210-7dea-4667-8473-7cb151ebceb2	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:27:31.606+00	2026-04-07 19:27:31.606+00
b439476d-ec90-4bec-b931-8f54626e7be5	2026-04-07 19:27:51.612+00	Egreso	Gasto General	3.50	c26333b0-619e-44c0-a233-ce8e0c109574	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:27:51.612+00	2026-04-07 19:27:51.612+00
264069ec-92d1-4034-8c63-e14a8a077296	2026-04-07 19:28:08.575+00	Egreso	Gasto General	15.00	a3b29e50-f3ca-44c5-a195-fcd0a98059b7	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:28:08.575+00	2026-04-07 19:28:08.575+00
73c517b2-3764-4963-8c3d-c8ec80c06433	2026-04-07 19:28:21.407+00	Egreso	Gasto General	5.00	dad7a297-435f-4d60-a149-7c5cb471c372	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:28:21.407+00	2026-04-07 19:28:21.407+00
5ef1f6f0-0246-408b-b46d-b40cbe646e3e	2026-04-07 19:28:31.827+00	Egreso	Gasto General	1.00	512bb3f6-a54c-4a21-a047-1a0df6e05283	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:28:31.827+00	2026-04-07 19:28:31.827+00
c574d2b7-dad9-493c-9168-4e792ce2fc56	2026-04-07 19:28:50.03+00	Egreso	Gasto General	25.00	3ca0ea06-adea-4ce2-8f6d-25395fa2e58d	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:28:50.03+00	2026-04-07 19:28:50.03+00
721b6c55-0abf-45fb-9a43-e58b3b653da1	2026-04-07 19:29:42.935+00	Ingreso	Venta	5.00	\N	VENTA RÁPIDA: VENTA; 7.15 Libras MARACUYA - 	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:29:42.936+00	2026-04-07 19:29:42.936+00
e4bee664-9412-4186-9509-97090b2c76f1	2026-04-07 19:30:12.457+00	Ingreso	Venta	1.00	\N	VENTA RÁPIDA: VENTA; 1.43 Libras MARACUYA - 	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:30:12.458+00	2026-04-07 19:30:12.458+00
515c2b19-2cec-4ef7-9dc8-5b4fa811cd4e	2026-04-07 19:31:49.002+00	Ingreso	Venta	3.00	\N	VENTA RÁPIDA: VENTA; 4.29 Libras MARACUYA - 	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:31:49.002+00	2026-04-07 19:31:49.002+00
a0516cdc-7db0-422b-9e62-b3bd2da66734	2026-04-07 19:32:16.593+00	Ingreso	Bancos	5.50	\N	INYECCIÓN: VENTAS DE 2 GAS	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:32:16.593+00	2026-04-07 19:32:16.593+00
9f9cd36c-b1f3-450c-8ede-624ea2cc497c	2026-04-07 19:33:15.349+00	Egreso	Compra	12.23	c4385606-d15f-456c-a099-bab455d04346	EGRESO: Liq LIQ-0000077 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:33:15.349+00	2026-04-07 19:33:15.349+00
f93fdb45-c2c4-40b7-ab03-4606a05f0ed2	2026-04-07 19:34:07.561+00	Egreso	Compra	18.43	6a05b7b1-2e10-4a5c-868e-bc63f3efe2be	EGRESO: Liq LIQ-0000078 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:34:07.561+00	2026-04-07 19:34:07.561+00
861631e7-6478-4145-9f40-0d9237503778	2026-04-07 19:36:13.801+00	Egreso	Compra	11.79	84bae186-4931-471a-8ee6-738cf1905341	EGRESO: Liq LIQ-0000079 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:36:13.801+00	2026-04-07 19:36:13.801+00
d4c7706a-1b08-4e9f-a8da-712486575dd0	2026-04-07 19:36:52.63+00	Egreso	Compra	11.50	22b82795-7b8c-4c20-92be-cb56668b93c8	EGRESO: Liq LIQ-0000080 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:36:52.631+00	2026-04-07 19:36:52.631+00
2b2be2e9-9fa9-40f0-879f-e4f17ad8d121	2026-04-07 19:38:14.08+00	Egreso	Compra	65.04	bfe4df9e-b36d-4370-9877-ab8e252a69f1	EGRESO: Liq LIQ-0000081 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 19:38:14.08+00	2026-04-07 19:38:14.08+00
63b5a22e-beba-4ca6-afd7-dfd4d22b647a	2026-04-07 20:42:14.303+00	Egreso	Compra	21.39	5d233984-465f-4b49-be64-660a3fa88c65	EGRESO: Liq LIQ-0000082 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 20:42:14.303+00	2026-04-07 20:42:14.303+00
9c3a5d41-868b-475d-a86b-6d7ba2653376	2026-04-07 20:42:59.565+00	Egreso	Compra	3.54	2e161662-209d-46fb-8677-0bba0be640e0	EGRESO: Liq LIQ-0000083 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 20:42:59.565+00	2026-04-07 20:42:59.565+00
8e1c7bac-0b05-4d50-8832-fa561756885f	2026-04-07 21:42:09.444+00	Egreso	Gasto General	3.00	d44bf65f-0541-4a02-bd5d-6416227a96e6	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 21:42:09.445+00	2026-04-07 21:42:09.445+00
5072b66d-f067-446a-a360-5413b26af11f	2026-04-07 21:42:31.049+00	Egreso	Gasto General	11.50	a05ba706-e693-4023-9abf-d78b9381edb0	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 21:42:31.049+00	2026-04-07 21:42:31.049+00
6dd5b39a-4875-4387-897e-6651711ebe46	2026-04-07 22:44:24.724+00	Egreso	Compra	11.20	c740b8c2-0f10-4fcb-a193-68acd3452f25	EGRESO: Liq LIQ-0000084 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 22:44:24.724+00	2026-04-07 22:44:24.724+00
21199d90-b466-49ae-9f26-96ba184f8fc4	2026-04-07 22:44:52.041+00	Egreso	Compra	10.40	5e55113b-1d10-4190-a9ee-1ff20cb75e0d	EGRESO: Liq LIQ-0000085 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 22:44:52.041+00	2026-04-07 22:44:52.041+00
9fd94dca-e9f2-43b0-8552-e95a0fa5c675	2026-04-07 22:45:12.059+00	Egreso	Compra	24.80	02881b2a-e288-4113-be06-8ce7c6ea1cd0	EGRESO: Liq LIQ-0000086 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 22:45:12.059+00	2026-04-07 22:45:12.059+00
a8d253b9-d136-496c-ab6f-30cd3db56de0	2026-04-07 22:45:56.454+00	Egreso	Compra	66.40	0339910b-aea0-44b9-87b6-ab7f6af6d477	EGRESO: Liq LIQ-0000087 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 22:45:56.454+00	2026-04-07 22:45:56.454+00
00cc8ed6-5c36-4d65-8a9a-421b8e3dad2d	2026-04-07 22:46:19.568+00	Egreso	Compra	4.00	66dc7ca5-39e1-4a5a-b399-44be7a46d8ff	EGRESO: Liq LIQ-0000088 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 22:46:19.569+00	2026-04-07 22:46:19.569+00
0e71bf19-3baa-4180-9005-7f5e5cf379a6	2026-04-07 22:47:35.841+00	Egreso	Compra	90.70	78fe0c17-ae74-4f6e-ba63-5178dbe1e795	EGRESO: Liq LIQ-0000089 (Pago fruta + saldos ant.)	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 22:47:35.841+00	2026-04-07 22:47:35.841+00
11bdc891-a102-4f76-8d48-a824cc757dc7	2026-04-07 22:48:17.579+00	Egreso	Gasto General	13.00	1eaac37a-9c8c-4c11-b8ac-76d683c384dd	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 22:48:17.579+00	2026-04-07 22:48:17.579+00
a4e07319-e995-4cef-9396-dacb138888af	2026-04-07 22:50:07.08+00	Egreso	Gasto General	17.80	78215e6e-7740-4773-8427-d8b726bf5e66	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 22:50:07.08+00	2026-04-07 22:50:07.08+00
dc257478-db0a-4bba-afda-5a88bba024ec	2026-04-07 22:50:19.888+00	Egreso	Gasto General	6.00	d4811a6a-3edc-4cad-9b85-4f69557bb712	\N	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 22:50:19.888+00	2026-04-07 22:50:19.888+00
9f933239-7a1b-43a4-a975-26c7a9b4f90d	2026-04-07 23:19:12.587+00	Ingreso	Bancos	69.35	\N	INYECCIÓN: FACTURA REPETIDA DE CACAO SECO 	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 23:19:12.587+00	2026-04-07 23:19:12.587+00
4d5a4c18-c053-465a-aaa8-38786c045239	2026-04-08 16:11:45.453+00	Egreso	Compra	80.25	5b5a40c7-aa0b-47aa-8674-495255dbc1a9	EGRESO: Liq LIQ-0000090 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:11:45.454+00	2026-04-08 16:11:45.454+00
88ac910c-814d-41e6-a68a-7f593d61f90a	2026-04-08 16:12:23.895+00	Egreso	Compra	30.00	5cf15759-709c-438c-92d6-cd71ee7803ad	EGRESO: Liq LIQ-0000091 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:12:23.895+00	2026-04-08 16:12:23.895+00
5a0074a3-1bcb-41ab-b73a-7c60ba110ba2	2026-04-08 16:15:26.599+00	Egreso	Compra	93.03	409e20c4-feff-4bf7-858f-d3bfe9b58511	EGRESO: Liq LIQ-0000092 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:15:26.599+00	2026-04-08 16:15:26.599+00
a245936a-49ce-4b42-98ae-55ceb191b419	2026-04-08 16:16:40.095+00	Egreso	Compra	32.74	e112ef97-de9f-42eb-a22f-72b0365c072f	EGRESO: Liq LIQ-0000093 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:16:40.095+00	2026-04-08 16:16:40.095+00
f053e18f-b0c8-4ec4-bda6-6af3b6eade06	2026-04-08 16:17:24.727+00	Egreso	Compra	28.50	8e1ea527-2f10-47fa-95bb-82af9eae7998	EGRESO: Liq LIQ-0000094 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:17:24.727+00	2026-04-08 16:17:24.727+00
e9b13275-1d33-48ae-b20b-9666b250567d	2026-04-08 16:25:28.769+00	Egreso	Compra	18.04	deeb4df1-5c8b-4244-b958-6accfc2fbb85	EGRESO: Liq LIQ-0000095 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:25:28.769+00	2026-04-08 16:25:28.769+00
fed02791-4bfd-4b75-bb6f-1391b2210b61	2026-04-08 16:27:12.486+00	Egreso	Compra	10.08	e790d87f-9bc7-4621-a37d-cdaf8ad2c629	EGRESO: Liq LIQ-0000096 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:27:12.487+00	2026-04-08 16:27:12.487+00
649bcda0-251e-4d44-912c-a246041990b5	2026-04-08 16:28:26.771+00	Egreso	Compra	7.56	9e33ba84-caa3-4ca5-a5b2-0188c68665c8	EGRESO: Liq LIQ-0000097 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:28:26.771+00	2026-04-08 16:28:26.771+00
14d99db8-daf5-4e7a-9427-1273f1fe7a34	2026-04-08 16:29:15.941+00	Egreso	Compra	18.63	a7bba41e-8f96-42d8-b1f6-e67819522bf6	EGRESO: Liq LIQ-0000098 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:29:15.941+00	2026-04-08 16:29:15.941+00
75297313-bfac-4d52-ba71-ce80de66f990	2026-04-08 16:35:09.161+00	Ingreso	Venta	1.00	\N	VENTA RÁPIDA: VENTA; 1.43 Libras MARACUYA - 	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:35:09.161+00	2026-04-08 16:35:09.161+00
152c6f2e-982a-4551-83b8-4bbc0875f1ae	2026-04-08 16:35:45.212+00	Ingreso	Venta	2.00	\N	VENTA RÁPIDA: VENTA; 2.86 Libras MARACUYA - 	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:35:45.212+00	2026-04-08 16:35:45.212+00
e104732f-47be-4e74-9b2c-857bb832f7ca	2026-04-08 16:36:13.335+00	Egreso	Gasto General	5.60	12929f8b-86b4-4241-b55b-9d3b37b25917	\N	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:36:13.335+00	2026-04-08 16:36:13.335+00
2a4bceca-0826-45c8-b5cb-c771ce6c0b0c	2026-04-08 16:37:33.34+00	Egreso	Gasto General	8.00	3934dfec-16af-487b-9e90-66e90d7c41db	\N	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:37:33.34+00	2026-04-08 16:37:33.34+00
2a433180-1f90-4dc5-9c05-968c8d11f446	2026-04-08 16:38:04.652+00	Egreso	Gasto General	7.50	3fbbe74f-13bc-4e18-ae87-dd7cb6fd85ba	\N	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:38:04.652+00	2026-04-08 16:38:04.652+00
2bb24ad5-819a-41cf-8dba-0cb06bc84c65	2026-04-08 16:38:37.522+00	Egreso	Gasto General	75.00	17f6aa9f-8619-4271-91a6-42aa32fe0219	\N	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:38:37.522+00	2026-04-08 16:38:37.522+00
1ef42fbc-a014-4269-84a2-34ecf505c640	2026-04-08 16:39:18.243+00	Egreso	Gasto General	6.00	cf7e53f0-d6ea-42c7-8bdd-fec6f952099a	\N	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:39:18.243+00	2026-04-08 16:39:18.243+00
7eb1e9f3-688a-4b78-8a45-59446fb4c0c8	2026-04-08 16:40:44.446+00	Egreso	Gasto General	17.30	f462b99d-81db-44a8-af50-79aaa10334b7	\N	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 16:40:44.446+00	2026-04-08 16:40:44.446+00
4d3ab499-2dc6-4ea4-89cf-17c063aefdb3	2026-04-08 18:31:44.313+00	Ingreso	Venta	1.00	\N	VENTA RÁPIDA: VENTA; 1.43 Libras MARACUYA - 	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 18:31:44.314+00	2026-04-08 18:31:44.314+00
6e894b54-d1cf-4f0e-9433-ed2c57577465	2026-04-08 20:34:14.917+00	Egreso	Compra	83.23	1a92652e-e132-454f-8aa8-87bbfaadb849	EGRESO: Liq LIQ-0000099 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 20:34:14.917+00	2026-04-08 20:34:14.917+00
24a995a7-b72a-40a1-bb34-0647a7c0e6b2	2026-04-08 20:35:06.354+00	Egreso	Compra	3.96	3ed15aeb-f2c9-44da-a609-793effc9d3bb	EGRESO: Liq LIQ-0000100 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 20:35:06.354+00	2026-04-08 20:35:06.354+00
9eea1b7a-554e-46d6-9295-9b90d315e5a2	2026-04-08 20:36:14.633+00	Egreso	Compra	7.57	88485edf-ddac-48ef-9312-72d75ea60641	EGRESO: Liq LIQ-0000101 (Pago fruta + saldos ant.)	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 20:36:14.633+00	2026-04-08 20:36:14.633+00
7a63c914-4031-4518-9334-1a585e2c11be	2026-04-08 20:36:50.581+00	Egreso	Gasto General	6.00	7a3a312d-a2f3-4c55-8b10-57f425eb4652	\N	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 20:36:50.581+00	2026-04-08 20:36:50.581+00
8e3a576f-4321-4eaf-9ce0-1129b097eef4	2026-04-08 20:37:07.279+00	Egreso	Gasto General	1.00	a533c43e-dcac-4f3f-bc3a-ed62731e6f49	\N	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 20:37:07.279+00	2026-04-08 20:37:07.279+00
c1ed5a97-ca09-4768-a4f8-92933ebd76d1	2026-04-08 20:37:22.878+00	Egreso	Gasto General	2.50	8bad375a-5afb-41f6-b64a-057eaeb3d19a	\N	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 20:37:22.878+00	2026-04-08 20:37:22.878+00
3bb0f9d5-b6d8-4e0c-af22-d12c4e18f8e7	2026-04-08 20:37:38.762+00	Egreso	Gasto General	1.00	ff0af373-1c72-4495-aa2b-0ebfca5b2378	\N	656242f8-2fbc-46f8-84df-0e8598c1f019	2026-04-08 20:37:38.762+00	2026-04-08 20:37:38.762+00
81ed0531-eba9-4f62-b9b2-e175b15d7d2f	2026-04-09 17:58:28.897+00	Ingreso	Bancos	1000.00	\N	INYECCIÓN: BILLETES	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 17:58:28.898+00	2026-04-09 17:58:28.898+00
1e8f8a6d-a863-49f4-b88e-c575a9747542	2026-04-09 17:58:41.251+00	Ingreso	Bancos	100.00	\N	INYECCIÓN: MONEDAS	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 17:58:41.251+00	2026-04-09 17:58:41.251+00
e14aed5d-441a-4c59-96ec-bf5eb8b1e3e6	2026-04-09 19:09:29.934+00	Egreso	Compra	3.00	2038c79d-624a-493c-9cc0-11831f989d7e	EGRESO: Liq LIQ-0000102 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:09:29.934+00	2026-04-09 19:09:29.934+00
e65ad287-3381-4097-8b56-a4f4478bc50b	2026-04-09 19:09:51.534+00	Egreso	Compra	30.00	71e5f7c0-a37c-4cf3-891d-bab93ace7c34	EGRESO: Liq LIQ-0000103 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:09:51.534+00	2026-04-09 19:09:51.534+00
4f3a3e45-b916-4378-a0bc-620ef5acb949	2026-04-09 19:10:12.925+00	Egreso	Compra	56.25	90b9dfc8-b67f-4b0b-ac24-ce8a28fdaba4	EGRESO: Liq LIQ-0000104 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:10:12.926+00	2026-04-09 19:10:12.926+00
fdd06c06-b863-40c0-9c8c-96985ecdf651	2026-04-09 19:10:53.765+00	Egreso	Compra	1.07	8fe380d6-a684-43e4-97bd-26645759b872	EGRESO: Liq LIQ-0000105 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:10:53.766+00	2026-04-09 19:10:53.766+00
110e8fd6-c2af-42f4-94f0-5b8cbd425abf	2026-04-09 19:11:20.188+00	Egreso	Compra	17.08	e821bcf4-2da4-45d1-83f6-561f42ad3e74	EGRESO: Liq LIQ-0000106 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:11:20.188+00	2026-04-09 19:11:20.188+00
ad6a7c12-e0cf-4309-a177-756b45720b2c	2026-04-09 19:11:53.442+00	Egreso	Compra	14.94	9bf581c8-74dc-4155-afba-c8c2419b8189	EGRESO: Liq LIQ-0000107 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:11:53.442+00	2026-04-09 19:11:53.442+00
307a64c3-c9d6-4219-8ea9-9436d04cbfff	2026-04-09 19:14:18.075+00	Egreso	Compra	1.15	46d9469c-7130-458b-9f75-5a58469df3f4	EGRESO: Liq LIQ-0000108 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:14:18.075+00	2026-04-09 19:14:18.075+00
c7616ef0-323f-4fa9-98db-00e8f2eba44c	2026-04-09 19:14:56.224+00	Egreso	Compra	52.29	3317e5f2-edef-4b3d-9d53-a0fb5ab4d56f	EGRESO: Liq LIQ-0000109 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:14:56.224+00	2026-04-09 19:14:56.224+00
62f3de94-4b8f-4465-a87c-5f576a90839c	2026-04-09 19:15:22.574+00	Egreso	Compra	5.34	9fd5e4d3-9f41-4318-8e5b-029ea54a45cd	EGRESO: Liq LIQ-0000110 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:15:22.575+00	2026-04-09 19:15:22.575+00
68726c75-80b1-4dcd-ab0b-0dcba89f38e2	2026-04-09 19:16:09.743+00	Egreso	Compra	93.71	00ab8e75-f5c8-4534-b0d3-2673744a50bb	EGRESO: Liq LIQ-0000111 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:16:09.744+00	2026-04-09 19:16:09.744+00
842b5a0c-ec4a-4fde-bc16-8eafbb7cbfff	2026-04-09 19:16:35.335+00	Egreso	Compra	4.27	837efa01-6541-4a78-8ee3-9282a8d4415b	EGRESO: Liq LIQ-0000112 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:16:35.335+00	2026-04-09 19:16:35.335+00
d3dd8911-d89e-4b26-a7e4-0c493d5b3a55	2026-04-09 19:17:12.671+00	Egreso	Compra	54.42	ddbf5a6d-5eb4-40d5-9d4c-3d829b8a8723	EGRESO: Liq LIQ-0000113 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:17:12.671+00	2026-04-09 19:17:12.671+00
7d884fa7-e210-4f27-a280-805719995358	2026-04-09 19:17:44.375+00	Egreso	Compra	17.08	c9f81f62-d4b0-4cf0-8235-c3aac5075233	EGRESO: Liq LIQ-0000114 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:17:44.375+00	2026-04-09 19:17:44.375+00
88af65be-5e09-49af-9eaf-5bea95af8ac9	2026-04-09 19:18:15.754+00	Ingreso	Venta	1.00	\N	VENTA RÁPIDA: VENTA; 1.43 Libras MARACUYA - 	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:18:15.755+00	2026-04-09 19:18:15.755+00
3e1135fc-d954-4d35-aa9c-b00e7d4151fe	2026-04-09 19:19:24.193+00	Ingreso	Venta	40.00	\N	VENTA RÁPIDA: VENTA; 57.15 Libras MARACUYA - 	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:19:24.193+00	2026-04-09 19:19:24.193+00
fa71f640-e997-49aa-b450-00ae18ad9f45	2026-04-09 19:20:09.934+00	Egreso	Gasto General	3.00	e4161468-a483-46f7-b538-4d1d7e01ac02	\N	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:20:09.934+00	2026-04-09 19:20:09.934+00
4fb0c824-c2fc-4cc4-bb1b-17f7e40dbc64	2026-04-09 19:20:26.486+00	Egreso	Gasto General	5.00	d5154570-745f-4804-a148-d283222555b5	\N	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:20:26.486+00	2026-04-09 19:20:26.486+00
19a73111-583a-4690-b005-d82a9a24975c	2026-04-09 19:20:42.279+00	Egreso	Gasto General	6.00	8a9bb9ba-6acf-43cf-922a-081aeae56fc5	\N	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:20:42.279+00	2026-04-09 19:20:42.279+00
b18d8b08-a0d2-44b2-a804-aa91cd8d160c	2026-04-09 19:20:55.222+00	Egreso	Gasto General	8.00	5bba1b81-c281-412d-939c-6071a5f41437	\N	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:20:55.222+00	2026-04-09 19:20:55.222+00
7c7d70b7-0acc-475d-8da2-ddffd9fc0fc5	2026-04-09 19:21:10.584+00	Egreso	Gasto General	2.50	ff2bfb0c-ab7a-4a90-a02d-2d527ef48aad	\N	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:21:10.584+00	2026-04-09 19:21:10.584+00
412be384-cbb1-4282-973f-8136398bf915	2026-04-09 19:21:26.043+00	Egreso	Gasto General	150.00	e090fa26-51c0-47aa-825d-159df06b29dd	\N	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 19:21:26.044+00	2026-04-09 19:21:26.044+00
c189b300-fa1c-42b5-acd5-a3ec26c14d85	2026-04-09 21:54:17.449+00	Egreso	Gasto General	3.00	173c61ed-b059-4fe5-8853-ad399095c298	\N	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 21:54:17.449+00	2026-04-09 21:54:17.449+00
8a2de459-0b3f-49ea-bce9-d75c117a1bea	2026-04-09 21:57:24.385+00	Egreso	Compra	23.59	5d438660-647b-4123-a48f-3f7d5437808a	EGRESO: Liq LIQ-0000115 (Pago fruta + saldos ant.)	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 21:57:24.386+00	2026-04-09 21:57:24.386+00
1bea78d0-fe23-4e11-b4d1-0e7338af1516	2026-04-09 22:19:05.377+00	Egreso	Préstamo	60.00	b8c041cd-68c1-49f5-9fc8-029dcdc204bf	Desembolso Préstamo. Ref: b8c041cd	15b9a287-e977-4374-9c81-58d01bc780bb	2026-04-09 22:19:05.377+00	2026-04-09 22:19:05.377+00
da73f18a-60b8-47ac-86d6-7d6703fb614c	2026-04-10 16:11:46.348+00	Ingreso	Bancos	100.00	\N	INYECCIÓN: MONEDAS DE $1,00 	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:11:46.349+00	2026-04-10 16:11:46.349+00
e8e7c014-abca-41d8-a99f-7aa8f1a9093a	2026-04-10 16:12:05.396+00	Ingreso	Bancos	3500.00	\N	INYECCIÓN: BILLETES 	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:12:05.396+00	2026-04-10 16:12:05.396+00
f2eed0de-156f-4306-b8ea-c7393d0c62cf	2026-04-10 16:14:13.451+00	Egreso	Compra	4.27	a1da7605-8d11-4b8e-af05-3ca015475a0d	EGRESO: Liq LIQ-0000116 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:14:13.451+00	2026-04-10 16:14:13.451+00
3d03adee-9715-425e-a1f1-81017c5b5cec	2026-04-10 16:14:40.527+00	Egreso	Compra	55.00	830ffdd2-1b8a-45c5-a934-256f9c6073aa	EGRESO: Liq LIQ-0000117 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:14:40.527+00	2026-04-10 16:14:40.527+00
18a37566-ebba-4b02-a086-8c349360feb7	2026-04-10 16:16:57.5+00	Egreso	Compra	19.36	4e3bd702-593e-4a19-b966-83e2dd821261	EGRESO: Liq LIQ-0000118 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:16:57.5+00	2026-04-10 16:16:57.5+00
9ee6db2e-5eb9-4baf-9050-52570f966311	2026-04-10 16:17:27.194+00	Egreso	Compra	17.08	50dbcfd4-e087-453c-b922-68ca0ddbb21c	EGRESO: Liq LIQ-0000119 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:17:27.194+00	2026-04-10 16:17:27.194+00
7cb4bf26-f621-4bd3-8b85-1a2ac3cae248	2026-04-10 16:18:07.19+00	Egreso	Compra	65.81	8954d1c6-c7b7-49c2-87c9-435c168284ad	EGRESO: Liq LIQ-0000120 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:18:07.19+00	2026-04-10 16:18:07.19+00
d993c577-02d8-47a6-86ca-b7d7aa42c2e0	2026-04-10 16:18:40.279+00	Egreso	Compra	90.21	9f0a3290-1622-4e8a-a0b9-ddbdebc8f3b0	EGRESO: Liq LIQ-0000121 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:18:40.279+00	2026-04-10 16:18:40.279+00
5e05ac03-e4b3-4d9c-92c6-2e0698dec42f	2026-04-10 16:19:12.759+00	Egreso	Compra	125.13	625bfaeb-7b67-46ee-a21b-6d5c22303cc1	EGRESO: Liq LIQ-0000122 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:19:12.759+00	2026-04-10 16:19:12.759+00
b120fd6e-4e60-4c76-81be-ce8291dcffd4	2026-04-10 16:20:04.414+00	Egreso	Compra	69.26	5f19af89-3a98-4067-98aa-d3eb3d2aae69	EGRESO: Liq LIQ-0000123 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:20:04.414+00	2026-04-10 16:20:04.414+00
c12f1de7-c531-42c6-9eb7-8ca1e78228a7	2026-04-10 16:20:50.171+00	Egreso	Compra	129.20	b71bc2b7-3c3e-4a2a-b7c5-b2c4d881c637	EGRESO: Liq LIQ-0000124 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:20:50.171+00	2026-04-10 16:20:50.171+00
60827d6b-63a3-49f1-8e43-985748b31a54	2026-04-10 16:22:44.833+00	Egreso	Compra	63.05	e81b1f96-8857-4e5d-9457-7ec3755fbfc7	EGRESO: Liq LIQ-0000125 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:22:44.833+00	2026-04-10 16:22:44.833+00
4236af23-bad0-4e81-b188-8800b81c027e	2026-04-10 16:23:18.397+00	Egreso	Compra	83.42	07f2421a-8ba5-46b3-90ba-289fe4974550	EGRESO: Liq LIQ-0000126 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:23:18.397+00	2026-04-10 16:23:18.397+00
92ad23d1-c80f-49d2-a762-f385c7d54f6b	2026-04-10 16:24:11.895+00	Egreso	Compra	35.22	12355294-0beb-4b91-9c0d-fc4d538eba10	EGRESO: Liq LIQ-0000127 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:24:11.895+00	2026-04-10 16:24:11.895+00
15ff6de0-d523-48c4-864b-1502610b4f1a	2026-04-10 16:25:15.156+00	Egreso	Compra	81.69	709f105e-3324-4657-b633-ddf99c766c12	EGRESO: Liq LIQ-0000128 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:25:15.156+00	2026-04-10 16:25:15.156+00
33f95d20-5cfe-417a-bb97-c19f96d582bf	2026-04-10 16:25:48.575+00	Egreso	Compra	30.90	d88e031a-881a-41d6-b9bb-41c8f0152081	EGRESO: Liq LIQ-0000129 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:25:48.575+00	2026-04-10 16:25:48.575+00
5315ea5a-ddcb-4890-a664-c13c30d3c4a8	2026-04-10 16:27:19.566+00	Egreso	Compra	37.93	c0ea8911-398c-418e-9799-a42e033fdc00	EGRESO: Liq LIQ-0000130 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:27:19.566+00	2026-04-10 16:27:19.566+00
72d4b2a4-0156-4fa7-aa42-6e4d1a47c6f9	2026-04-10 16:28:10.101+00	Egreso	Compra	85.42	d852f1e2-5c4e-4876-8007-7f4a91e99220	EGRESO: Liq LIQ-0000131 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:28:10.101+00	2026-04-10 16:28:10.101+00
c5c3f41d-cc8b-4f45-8297-4347ef7cfdeb	2026-04-10 16:28:52.281+00	Egreso	Compra	33.27	6ab595a7-a711-4cc3-a73c-04ec0b29dd07	EGRESO: Liq LIQ-0000132 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:28:52.282+00	2026-04-10 16:28:52.282+00
50115ffb-668e-474d-90a2-5fe57b7a88c4	2026-04-10 16:29:43.309+00	Egreso	Compra	21.44	82163b3d-7b20-4727-840d-b6d850aaad44	EGRESO: Liq LIQ-0000133 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:29:43.309+00	2026-04-10 16:29:43.309+00
ba78a4c2-8bf7-44da-9132-e2dc03b40e56	2026-04-10 16:30:29.013+00	Egreso	Compra	42.55	4349c9c3-ef2f-4c27-8dd8-58243a1cd8a0	EGRESO: Liq LIQ-0000134 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:30:29.013+00	2026-04-10 16:30:29.013+00
27ff39d2-f63e-409d-ae76-148c5a2f5a2c	2026-04-10 16:31:09.409+00	Egreso	Compra	16.17	07c265e9-4e03-4b36-ae99-0175715b198c	EGRESO: Liq LIQ-0000135 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:31:09.409+00	2026-04-10 16:31:09.409+00
0b7c0611-8f99-450b-9670-a920d3886eeb	2026-04-10 16:31:54.96+00	Egreso	Compra	18.78	04cad26e-58b3-48d3-9118-8df35f56bd53	EGRESO: Liq LIQ-0000136 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:31:54.96+00	2026-04-10 16:31:54.96+00
1c634f2a-e29c-48f6-98f3-223670d07d82	2026-04-10 16:32:36.857+00	Egreso	Gasto General	7.75	b0705eec-bfc4-4b29-b0c6-62bace023e57	\N	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:32:36.857+00	2026-04-10 16:32:36.857+00
2dac5e7d-164a-4bbf-96bc-edffd2cfb291	2026-04-10 16:32:49.162+00	Egreso	Gasto General	10.00	97ed9d97-cf5f-4d46-a007-9f82c501ec2b	\N	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:32:49.162+00	2026-04-10 16:32:49.162+00
e46a5ae0-07a6-47e4-947a-be869f7e877e	2026-04-10 16:33:02.446+00	Egreso	Gasto General	5.00	05f0f8a7-2641-4344-a3a7-f272b54dcbc3	\N	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:33:02.446+00	2026-04-10 16:33:02.446+00
b9023722-74b1-4615-b868-f82de33f4b12	2026-04-10 16:33:17.751+00	Egreso	Gasto General	6.00	1b07b167-bc85-4ab7-b7ee-de3e62ff0c27	\N	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:33:17.751+00	2026-04-10 16:33:17.751+00
99ad26cf-72e4-4331-944e-421bf5c2957c	2026-04-10 16:34:29.438+00	Ingreso	Venta	65.00	\N	VENTA RÁPIDA: VENTA; 92.86 Libras MARACUYA - 	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 16:34:29.438+00	2026-04-10 16:34:29.438+00
bd710554-d3a1-45c3-97a9-d216d81b76f6	2026-04-10 20:29:12.247+00	Egreso	Compra	6.41	37f8dcb4-3055-4a97-84ab-2197eb2e719e	EGRESO: Liq LIQ-0000137 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 20:29:12.247+00	2026-04-10 20:29:12.247+00
f7420f44-d6d3-4ed3-81b7-2086e2014188	2026-04-10 20:30:02.471+00	Egreso	Compra	93.71	7ded42ff-2cc1-4e8f-9124-22f6282d6adb	EGRESO: Liq LIQ-0000138 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 20:30:02.471+00	2026-04-10 20:30:02.471+00
a8fce3ff-cc56-4474-b179-445101e2564b	2026-04-10 20:30:33.371+00	Egreso	Compra	23.92	12bd36cf-e342-4463-9c45-e15899843ffb	EGRESO: Liq LIQ-0000139 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 20:30:33.371+00	2026-04-10 20:30:33.371+00
5021e818-2e6f-457e-8750-04598a21bccf	2026-04-10 20:31:17.412+00	Egreso	Gasto General	7.00	bac78adb-a4bb-40f8-9e7d-da78cf5f5cb7	\N	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 20:31:17.412+00	2026-04-10 20:31:17.412+00
4251de61-4142-4888-aa08-86ccbd83878d	2026-04-10 20:31:40.27+00	Egreso	Gasto General	2.50	6fac76f4-58e0-4166-ad7c-ebf2460bbb5b	\N	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 20:31:40.271+00	2026-04-10 20:31:40.271+00
d4a4f3ed-9885-4d15-8639-85e867677e63	2026-04-10 20:53:19.258+00	Egreso	Gasto General	8.65	00f54fe5-9ee6-4846-9a24-1388b1247710	\N	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 20:53:19.258+00	2026-04-10 20:53:19.258+00
9fd68930-e578-4e01-964e-ea5b582e9a67	2026-04-10 21:05:07.601+00	Egreso	Gasto General	2.90	7b2e3cb2-f217-437e-9838-299dcec4d9d8	\N	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 21:05:07.601+00	2026-04-10 21:05:07.601+00
f404cbf9-be65-4b4d-8524-ed9c0c557e9b	2026-04-10 21:45:31.544+00	Egreso	Gasto General	25.00	df6ae1e3-0a44-4602-9c60-e96f0bb175d6	\N	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 21:45:31.544+00	2026-04-10 21:45:31.544+00
a7b5a939-d1d6-4244-93f3-99f574fdb7f8	2026-04-10 21:49:51.349+00	Ingreso	Venta	6.00	\N	VENTA RÁPIDA: VENTA; 8.57 Libras MARACUYA - 	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 21:49:51.35+00	2026-04-10 21:49:51.35+00
5827e41d-b372-4da8-88ff-d9fdc89cdbed	2026-04-10 21:50:22.292+00	Ingreso	Venta	5.00	\N	VENTA RÁPIDA: VENTA; 7.15 Libras MARACUYA - 	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 21:50:22.292+00	2026-04-10 21:50:22.292+00
66a4fcdb-4f41-4ecc-90c1-fb4a2a53db73	2026-04-10 22:24:11.975+00	Egreso	Compra	20.80	a633f8bb-f817-4f1c-a5f0-a134a272d943	EGRESO: Liq LIQ-0000140 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 22:24:11.975+00	2026-04-10 22:24:11.975+00
ea907bbc-8fb1-44d4-926a-ba4bbdf84456	2026-04-10 22:24:37.045+00	Egreso	Compra	29.75	f837753a-2334-45a6-a75f-38d864a2242a	EGRESO: Liq LIQ-0000141 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 22:24:37.046+00	2026-04-10 22:24:37.046+00
ade87247-04a7-438d-a92c-45c7c4776e48	2026-04-10 22:25:02.845+00	Egreso	Compra	8.00	b98aec14-45a9-4d58-8728-52d50c4024f1	EGRESO: Liq LIQ-0000142 (Pago fruta + saldos ant.)	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 22:25:02.845+00	2026-04-10 22:25:02.845+00
d7f735da-9884-4f1e-a0c8-05382a804e90	2026-04-10 22:26:31.666+00	Ingreso	Bancos	5.50	\N	INYECCIÓN: VENTA DE GAS 	63be6307-466b-44c8-90f7-1dce3f6801e9	2026-04-10 22:26:31.666+00	2026-04-10 22:26:31.666+00
cdd50625-f614-406e-8932-79eee56b216c	2026-04-11 16:07:31.951+00	Egreso	Compra	27.20	fc3782bc-e766-4698-b4f0-3025daffa24a	EGRESO: Liq LIQ-0000143 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:07:31.951+00	2026-04-11 16:07:31.951+00
edb08b10-253b-43fd-ad01-f7b25f606f80	2026-04-11 16:08:35.047+00	Egreso	Compra	31.45	157be795-e095-45d1-a125-5d03e1fe750c	EGRESO: Liq LIQ-0000144 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:08:35.047+00	2026-04-11 16:08:35.047+00
3c3843c3-85ec-450b-8dcc-029b138af441	2026-04-11 16:11:10.95+00	Egreso	Compra	176.06	cc4660a0-af99-45af-97c6-bc6d9bf4cfe9	EGRESO: Liq LIQ-0000145 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:11:10.95+00	2026-04-11 16:11:10.95+00
e35c9af7-94d4-4b54-9dd4-a41654ef64fd	2026-04-11 16:13:54.481+00	Egreso	Compra	20.01	23629c56-d241-4032-ae6a-0bfc1e653abb	EGRESO: Liq LIQ-0000146 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:13:54.481+00	2026-04-11 16:13:54.481+00
c5f8fa77-d178-4e72-8d2c-8f2c9a24319a	2026-04-11 16:15:35.951+00	Egreso	Compra	25.50	926b27ab-99be-4c99-9ed6-0f3864f31826	EGRESO: Liq LIQ-0000147 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:15:35.951+00	2026-04-11 16:15:35.951+00
242e6b29-2d40-4fe8-b98a-c6347b652800	2026-04-11 16:17:59.74+00	Egreso	Compra	7.10	51438f0a-a4a8-4865-b3c7-acc162f9d746	EGRESO: Liq LIQ-0000148 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:17:59.74+00	2026-04-11 16:17:59.74+00
34989e45-f324-437d-895f-58efaa0e4c96	2026-04-11 16:18:24.291+00	Egreso	Compra	59.50	e16c0f2d-b72a-44ea-81eb-a1b9df24834e	EGRESO: Liq LIQ-0000149 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:18:24.291+00	2026-04-11 16:18:24.291+00
0a3b0a44-e92e-462d-8cc2-3174f2643e94	2026-04-11 16:20:51.194+00	Ingreso	Bancos	1.00	\N	INYECCIÓN: VENTA DE CACAO 	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:20:51.194+00	2026-04-11 16:20:51.194+00
add0d200-c99a-4579-b26d-e24f8a987ca5	2026-04-11 16:21:06.316+00	Ingreso	Bancos	100.00	\N	INYECCIÓN: MONEDAS	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:21:06.316+00	2026-04-11 16:21:06.316+00
25124ea5-855a-426d-a75e-5251fbfbd613	2026-04-11 16:21:52.683+00	Egreso	Gasto General	60.00	d25bf98d-56ac-465c-8e3e-1851fd74a0a3	\N	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:21:52.683+00	2026-04-11 16:21:52.683+00
44f30648-9f32-4aed-bc96-f7868cece450	2026-04-11 16:22:09.77+00	Egreso	Gasto General	3.00	ecc89dad-d853-424f-983c-668d9a1557c1	\N	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:22:09.77+00	2026-04-11 16:22:09.77+00
abe3a06f-a935-47a9-bdb6-877e6c03a072	2026-04-11 16:22:22.143+00	Egreso	Gasto General	10.00	d8efbb2c-b27f-4e24-a401-1dca8034ec4d	\N	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:22:22.143+00	2026-04-11 16:22:22.143+00
6f9badac-1be0-4724-be0c-16554828069c	2026-04-11 16:23:37.847+00	Ingreso	Venta	0.50	\N	VENTA RÁPIDA: VENTA; 0.71 Libras MARACUYA - 	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:23:37.847+00	2026-04-11 16:23:37.847+00
9bbe86e1-38d3-483e-8777-db40856db695	2026-04-11 16:24:09.063+00	Ingreso	Venta	1.00	\N	VENTA RÁPIDA: VENTA; 1.43 Libras MARACUYA - 	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:24:09.063+00	2026-04-11 16:24:09.063+00
38bf2f1f-95b6-46a4-9e22-ffbadb99ca79	2026-04-11 16:24:59.88+00	Egreso	Compra	34.63	5837d910-f8be-460f-91e2-267824f7e173	EGRESO: Liq LIQ-0000150 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:24:59.88+00	2026-04-11 16:24:59.88+00
e95343c8-9510-42c8-ba49-08a38f3a5acb	2026-04-11 16:25:24.983+00	Egreso	Compra	85.37	11a5e154-0037-43c2-8020-97275123eaa1	EGRESO: Liq LIQ-0000151 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:25:24.983+00	2026-04-11 16:25:24.983+00
3923ec80-250c-4f47-8d07-799e7aef8e45	2026-04-11 16:25:56.48+00	Egreso	Compra	57.04	e4ad21de-af39-44fa-903f-41ec68fb2360	EGRESO: Liq LIQ-0000152 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:25:56.48+00	2026-04-11 16:25:56.48+00
bcaf543c-2664-4ab6-852c-8e435e6fd508	2026-04-11 16:26:41.264+00	Egreso	Compra	80.40	4b239367-879c-4a04-a235-6163a10ce9cf	EGRESO: Liq LIQ-0000153 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:26:41.264+00	2026-04-11 16:26:41.264+00
25fe3cfb-2406-4693-bd73-4a497efdf0e6	2026-04-11 16:27:11.462+00	Egreso	Compra	106.19	f2185309-1778-4ca9-b746-3ca6315d2103	EGRESO: Liq LIQ-0000154 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:27:11.463+00	2026-04-11 16:27:11.463+00
8a3acab4-24fa-42fe-b361-632542696d80	2026-04-11 16:28:44.777+00	Egreso	Compra	91.92	bd5744d4-e242-4c53-bcf8-b01e8a44b8a9	EGRESO: Liq LIQ-0000155 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:28:44.777+00	2026-04-11 16:28:44.777+00
d5013381-596d-4755-b79e-d41270e59de2	2026-04-11 16:29:26.881+00	Egreso	Compra	84.78	07ae510b-34a7-4c35-b37c-263970ad4fa7	EGRESO: Liq LIQ-0000156 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:29:26.881+00	2026-04-11 16:29:26.881+00
390c817d-7fb2-4dc3-bb8b-dee36f5a8213	2026-04-11 16:29:57.5+00	Egreso	Compra	8.54	aa7e2867-b8b3-43ce-b063-5961a379074e	EGRESO: Liq LIQ-0000157 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:29:57.5+00	2026-04-11 16:29:57.5+00
7bdcda0c-04ae-48c3-99dd-69bba47ccd05	2026-04-11 16:30:22.425+00	Egreso	Compra	4.27	016ffcfd-79bc-486a-85f5-d6f21990115e	EGRESO: Liq LIQ-0000158 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:30:22.425+00	2026-04-11 16:30:22.425+00
3347ea31-df87-47b5-9243-4758179d340b	2026-04-11 16:30:59.617+00	Egreso	Compra	20.37	ecf0caba-d7cb-4e31-b0f8-86a2a343ba12	EGRESO: Liq LIQ-0000159 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:30:59.617+00	2026-04-11 16:30:59.617+00
4dfdabc3-8aab-4fc8-a8d4-c26fe0482f08	2026-04-11 16:31:30.389+00	Egreso	Compra	30.22	1508acbd-9c09-4ad3-936c-7cec0e7d6e59	EGRESO: Liq LIQ-0000160 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:31:30.389+00	2026-04-11 16:31:30.389+00
2d81cd6b-dfee-4053-b4fb-bca8d46a56c4	2026-04-11 16:32:08.769+00	Egreso	Compra	8.49	cca8163b-d400-4dc0-ae6e-394842b18fd9	EGRESO: Liq LIQ-0000161 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:32:08.769+00	2026-04-11 16:32:08.769+00
809e9c75-15ac-444b-b512-ec676d86e9cc	2026-04-11 16:32:40.221+00	Egreso	Compra	42.10	218ddb97-b366-4043-b8d4-e81b1e419786	EGRESO: Liq LIQ-0000162 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:32:40.221+00	2026-04-11 16:32:40.221+00
75364a4c-3aa3-4dbc-8826-89207b8aeffc	2026-04-11 16:33:12.887+00	Egreso	Compra	82.50	8b35bb97-1711-477e-8d44-6882f7573602	EGRESO: Liq LIQ-0000163 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:33:12.887+00	2026-04-11 16:33:12.887+00
9aeee958-b536-43a8-95a3-b533d6162dd4	2026-04-11 16:34:55.542+00	Egreso	Compra	11.89	fc6606a1-35a7-4a15-a1e9-6a577d3b2c24	EGRESO: Liq LIQ-0000164 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:34:55.542+00	2026-04-11 16:34:55.542+00
792a2b67-04cb-43a0-a999-863b6ea3f734	2026-04-11 16:35:42.761+00	Egreso	Compra	6.39	74cbc184-c4f2-4f7d-a650-780259cea6d8	EGRESO: Liq LIQ-0000165 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:35:42.761+00	2026-04-11 16:35:42.761+00
58c4a1dd-a19d-4e82-996b-07e320f05f34	2026-04-11 16:36:12.989+00	Egreso	Compra	46.86	41637e68-bdc3-4a7d-969d-da411f3e877d	EGRESO: Liq LIQ-0000166 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:36:12.989+00	2026-04-11 16:36:12.989+00
97410cbc-7694-4346-9e4c-13f2567d7208	2026-04-11 16:36:59.672+00	Egreso	Compra	21.73	902e02cb-c728-40cb-8757-bd97f31953c1	EGRESO: Liq LIQ-0000167 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 16:36:59.673+00	2026-04-11 16:36:59.673+00
fac618fc-8f7e-41bf-a773-d1ae83f457a6	2026-04-11 19:09:37.971+00	Ingreso	Venta	1.00	\N	VENTA RÁPIDA: VENTA; 1.43 Libras MARACUYA - 	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:09:37.972+00	2026-04-11 19:09:37.972+00
24773f6e-a9eb-48e1-b0fb-0f287b50065e	2026-04-14 20:15:53.844+00	Egreso	Gasto General	15.00	24a93ad7-3b18-4dac-8146-46c19df83072	\N	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 20:15:53.844+00	2026-04-14 20:15:53.844+00
284b9f7c-9ee0-4935-9161-95aa25a703b3	2026-04-11 19:11:07.3+00	Ingreso	Venta	1.00	\N	VENTA RÁPIDA: VENTA; 1.43 Libras MARACUYA - 	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:11:07.301+00	2026-04-11 19:11:07.301+00
f116d4fe-fb2b-4b5a-a3c7-dfdab502ed57	2026-04-11 19:12:36.147+00	Ingreso	Venta	10.00	\N	VENTA RÁPIDA: VENTA; 33.34 Libras MAIZ  - 	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:12:36.147+00	2026-04-11 19:12:36.147+00
569caf02-86db-4a8e-9527-6fee4defde31	2026-04-11 19:13:19.677+00	Egreso	Gasto General	18.00	6a0dd56e-7d50-4164-977d-475404bfa3b3	\N	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:13:19.677+00	2026-04-11 19:13:19.677+00
a65ab1c0-af97-4892-88c7-a9504ca4cc5d	2026-04-11 19:13:31.516+00	Egreso	Gasto General	7.00	8d64abaa-5624-47fc-88bb-dea6fa6ddfb6	\N	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:13:31.516+00	2026-04-11 19:13:31.516+00
1979b013-51a0-4280-bf6a-0eeab7a053c9	2026-04-11 19:13:45.279+00	Egreso	Gasto General	0.30	4c535c46-d04d-4a21-aeb6-d73574c91a14	\N	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:13:45.279+00	2026-04-11 19:13:45.279+00
35780593-db2e-41ed-8034-14dc4f367341	2026-04-11 19:13:58.549+00	Egreso	Gasto General	2.50	a274328f-763f-4207-87cf-942baad4b5a4	\N	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:13:58.549+00	2026-04-11 19:13:58.549+00
1c9ee536-04d8-4525-8797-8551a4aee562	2026-04-11 19:14:43.743+00	Egreso	Compra	2.91	a71ea85c-07ef-43db-93b2-445f4eddd6d3	EGRESO: Liq LIQ-0000168 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:14:43.743+00	2026-04-11 19:14:43.743+00
ad96b76c-d605-492c-aba1-b67730d62735	2026-04-11 19:15:56.573+00	Egreso	Compra	1.73	f65cbfc1-5913-49d3-b968-de1a4bc0da69	EGRESO: Liq LIQ-0000169 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:15:56.573+00	2026-04-11 19:15:56.573+00
73c7cc73-5dbd-4413-a8e0-8a4d4fab1b49	2026-04-11 19:16:27.328+00	Egreso	Compra	51.22	dbf51650-7dbc-411e-9cd6-b444528f2cbb	EGRESO: Liq LIQ-0000170 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:16:27.328+00	2026-04-11 19:16:27.328+00
12b07b78-111e-47ec-b6bb-8b8b6298b1d7	2026-04-11 19:17:20.861+00	Egreso	Compra	75.86	84304428-f6c6-4956-b396-4d5b818808af	EGRESO: Liq LIQ-0000171 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:17:20.861+00	2026-04-11 19:17:20.861+00
1cae258f-ee1c-435d-b657-0b55c0eda932	2026-04-11 19:17:43.924+00	Egreso	Compra	3.21	d8c6abb6-ee1a-4016-b54a-708f54b3d609	EGRESO: Liq LIQ-0000172 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:17:43.924+00	2026-04-11 19:17:43.924+00
c9d8d6c7-a116-4b0c-9132-1113956ba0ad	2026-04-11 19:18:53.312+00	Egreso	Compra	95.40	dfacc269-721e-461a-94cd-f9e18b214fd4	EGRESO: Liq LIQ-0000173 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:18:53.312+00	2026-04-11 19:18:53.312+00
b3c0cf8b-360f-4e3a-9993-a28cf55f67de	2026-04-11 19:22:03.737+00	Egreso	Compra	2.04	bd837d16-1d14-426f-81f1-d035d3d5fb96	EGRESO: Liq LIQ-0000174 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:22:03.737+00	2026-04-11 19:22:03.737+00
8d4eac73-ef94-4bc9-a24a-55f08d7cd187	2026-04-11 19:31:28.835+00	Egreso	Compra	6.41	95936f96-2bf7-40b6-a24f-47de1d8e3e69	EGRESO: Liq LIQ-0000175 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:31:28.835+00	2026-04-11 19:31:28.835+00
a225d873-d7d5-42e3-8e93-bf128f2b037b	2026-04-11 19:33:16.345+00	Egreso	Compra	5.34	09dca7b0-84a3-4ce2-8c18-f86e95abb2f3	EGRESO: Liq LIQ-0000176 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 19:33:16.345+00	2026-04-11 19:33:16.345+00
30dddf28-780f-4320-a0d3-7f7c8216f7e9	2026-04-11 20:27:26.27+00	Egreso	Compra	26.39	14f054d6-0cb6-4eaf-92d2-054b081169d3	EGRESO: Liq LIQ-0000177 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 20:27:26.27+00	2026-04-11 20:27:26.27+00
23d81632-a113-45cf-8ff0-5dc1b4307b09	2026-04-11 20:28:02.905+00	Egreso	Compra	33.14	53c280c1-4c05-4da3-87f7-dd1d18c4cd24	EGRESO: Liq LIQ-0000178 (Pago fruta + saldos ant.)	f6118082-3342-406e-be26-1375b0845378	2026-04-11 20:28:02.905+00	2026-04-11 20:28:02.905+00
9301f132-f8bb-42b4-ac6e-248c84c743bb	2026-04-11 20:29:03.872+00	Ingreso	Bancos	100.00	\N	INYECCIÓN: MONEDAS	f6118082-3342-406e-be26-1375b0845378	2026-04-11 20:29:03.872+00	2026-04-11 20:29:03.872+00
5e0b3cd1-d7f4-4763-b506-0cd6f22b28f0	2026-04-13 12:46:06.157+00	Egreso	Gasto General	3.00	19c9c40d-8400-481e-bce0-3a2f59d437bd	\N	f6118082-3342-406e-be26-1375b0845378	2026-04-13 12:46:06.157+00	2026-04-13 12:46:06.157+00
3decba59-5ea8-4f07-9163-e3c24d65879e	2026-04-13 12:49:12.738+00	Egreso	Nomina	120.00	cd137367-9c2a-48bb-8a7f-8cb23623e66a	GENERAL: PAGO DE NÓMINA 	f6118082-3342-406e-be26-1375b0845378	2026-04-13 12:49:12.738+00	2026-04-13 12:49:12.738+00
06dddab9-2cd2-416b-b3f8-e26baaba64e8	2026-04-13 12:49:25.303+00	Egreso	Nomina	100.00	048cb2f6-c074-4f8b-961a-5f0a1103cada	GENERAL: PAGO DE NÓMINA 	f6118082-3342-406e-be26-1375b0845378	2026-04-13 12:49:25.303+00	2026-04-13 12:49:25.303+00
e6fa9577-a9ae-4d5b-ac05-be32b6565cd7	2026-04-13 12:49:45.307+00	Egreso	Nomina	60.00	de1cd6ff-38d1-49da-906d-730aafdfe46e	GENERAL: PAGO DE NÓMINA 	f6118082-3342-406e-be26-1375b0845378	2026-04-13 12:49:45.307+00	2026-04-13 12:49:45.307+00
fc5b61f8-5736-4a0e-961f-ecd7b245e5e5	2026-04-13 12:49:56.427+00	Egreso	Nomina	120.00	4fb81fa8-b6e7-4d68-9b6f-fc65c5d31864	GENERAL: PAGO DE NÓMINA 	f6118082-3342-406e-be26-1375b0845378	2026-04-13 12:49:56.427+00	2026-04-13 12:49:56.427+00
d7b144eb-98ba-40c2-9d97-21a4e643be83	2026-04-13 12:50:14.166+00	Egreso	Nomina	250.00	06aee00e-744f-45c6-9e72-49f2ee4a37cb	GENERAL: PAGO DE NÓMINA 	f6118082-3342-406e-be26-1375b0845378	2026-04-13 12:50:14.166+00	2026-04-13 12:50:14.166+00
8941c501-f8d1-4ab3-99b4-073dea4a5d68	2026-04-13 12:51:03.646+00	Egreso	Gasto General	5.00	f837f0ad-8a98-4299-83d6-a4fe8e89acd9	\N	f6118082-3342-406e-be26-1375b0845378	2026-04-13 12:51:03.646+00	2026-04-13 12:51:03.646+00
befa19e4-0685-4d6e-9897-917d5a43bb56	2026-04-13 12:51:18.736+00	Egreso	Gasto General	80.00	635a4664-bb49-491c-a77c-1194303b656a	\N	f6118082-3342-406e-be26-1375b0845378	2026-04-13 12:51:18.737+00	2026-04-13 12:51:18.737+00
75e0a39e-e056-4b5e-a315-30b28871db7d	2026-04-13 12:51:33.241+00	Egreso	Gasto General	74.00	d5b491ed-34c2-423b-8fc9-5c9505043b03	\N	f6118082-3342-406e-be26-1375b0845378	2026-04-13 12:51:33.241+00	2026-04-13 12:51:33.241+00
6b8b549e-fcf9-4460-9724-bf41eeac6410	2026-04-13 16:09:35.162+00	Egreso	Compra	192.10	902a193d-ed2e-41c9-981d-911b0753dbca	EGRESO: Liq LIQ-0000179 (Pago fruta + saldos ant.)	50df0617-4113-4855-be22-d596adb26685	2026-04-13 16:09:35.162+00	2026-04-13 16:09:35.162+00
871f98db-ca40-4b3b-9270-30cd8ad20188	2026-04-13 16:09:54.343+00	Egreso	Compra	17.00	bf0a6579-cc20-4be4-ad80-8b9721bf03b5	EGRESO: Liq LIQ-0000180 (Pago fruta + saldos ant.)	50df0617-4113-4855-be22-d596adb26685	2026-04-13 16:09:54.343+00	2026-04-13 16:09:54.343+00
127e190a-36ef-43cb-9586-5f6f93b25438	2026-04-13 16:10:16.576+00	Egreso	Compra	5.09	260cadeb-d758-4dfd-a5ce-18a9b4697509	EGRESO: Liq LIQ-0000181 (Pago fruta + saldos ant.)	50df0617-4113-4855-be22-d596adb26685	2026-04-13 16:10:16.577+00	2026-04-13 16:10:16.577+00
648d2685-e6c4-4a24-869f-4e525c0d2deb	2026-04-13 16:12:17.873+00	Egreso	Compra	12.07	cca2015e-3f7f-4aac-9958-a733cb5ceab4	EGRESO: Liq LIQ-0000182 (Pago fruta + saldos ant.)	50df0617-4113-4855-be22-d596adb26685	2026-04-13 16:12:17.873+00	2026-04-13 16:12:17.873+00
96f3e155-2a61-454c-b8b9-63cc3ef24964	2026-04-13 16:12:58.042+00	Egreso	Compra	12.07	a2d0777c-5295-4e48-963f-7ae996c49675	EGRESO: Liq LIQ-0000183 (Pago fruta + saldos ant.)	50df0617-4113-4855-be22-d596adb26685	2026-04-13 16:12:58.043+00	2026-04-13 16:12:58.043+00
7002f877-b027-4e7a-a666-40dccc927c2a	2026-04-13 16:13:44.743+00	Egreso	Compra	17.00	18aed61e-be70-4f7c-b4a1-45797609b722	EGRESO: Liq LIQ-0000184 (Pago fruta + saldos ant.)	50df0617-4113-4855-be22-d596adb26685	2026-04-13 16:13:44.743+00	2026-04-13 16:13:44.743+00
2a1de7c9-634a-4dfc-b68c-b4a6305dc85d	2026-04-13 16:14:09.975+00	Egreso	Compra	5.09	d72955ba-e4b5-4dda-9232-2f039c208f87	EGRESO: Liq LIQ-0000185 (Pago fruta + saldos ant.)	50df0617-4113-4855-be22-d596adb26685	2026-04-13 16:14:09.975+00	2026-04-13 16:14:09.975+00
95d7f2b4-0394-4e24-bf76-ef54cfbcf16e	2026-04-13 16:14:52.839+00	Egreso	Compra	4.25	48fcd185-9610-4105-83ee-b0b4b6bc1069	EGRESO: Liq LIQ-0000186 (Pago fruta + saldos ant.)	50df0617-4113-4855-be22-d596adb26685	2026-04-13 16:14:52.839+00	2026-04-13 16:14:52.839+00
15752cc8-5987-483f-a19d-d8b995a59496	2026-04-13 19:19:27.589+00	Egreso	Gasto General	216.00	39071487-b90d-426d-bec0-921b1e4dadca	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 19:19:27.589+00	2026-04-13 19:19:27.589+00
8cd560b8-bc42-48d8-a924-f961ab9d68d5	2026-04-13 19:19:42.878+00	Egreso	Gasto General	4.00	131d28d8-5da2-40a7-88d1-e379652ed4a2	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 19:19:42.878+00	2026-04-13 19:19:42.878+00
55cebac3-0fee-4685-8918-c5590a379c03	2026-04-13 19:20:03.912+00	Egreso	Gasto General	100.00	03ea7c4e-908b-42f4-a399-3a03e1cab632	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 19:20:03.912+00	2026-04-13 19:20:03.912+00
08175920-a453-491b-aade-4c31362803e0	2026-04-13 19:20:20.282+00	Egreso	Gasto General	7.00	71dcb1a4-d4d0-429a-b974-e724f38414a1	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 19:20:20.283+00	2026-04-13 19:20:20.283+00
97de520f-1fe6-41a0-8ff1-6e6c11599721	2026-04-13 19:20:52.279+00	Egreso	Gasto General	30.00	b23b8d32-5bfb-4e70-b9e8-202966b41b30	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 19:20:52.279+00	2026-04-13 19:20:52.279+00
cf0df783-3278-4586-bb19-621f18b4f04c	2026-04-13 19:27:29.237+00	Egreso	Compra	14.85	acfea689-bac9-4760-ae78-4cc81086eee6	EGRESO: Liq LIQ-0000187 (Pago fruta + saldos ant.)	50df0617-4113-4855-be22-d596adb26685	2026-04-13 19:27:29.237+00	2026-04-13 19:27:29.237+00
5d1c13f2-deaa-4a58-886d-4b3a3cf3e46f	2026-04-13 19:55:01.255+00	Egreso	Gasto General	2.50	e1b16a37-8578-4115-ac45-49f8a0e2351c	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 19:55:01.255+00	2026-04-13 19:55:01.255+00
58ae34bc-3de5-46c4-b2e9-5d18dbdefe48	2026-04-13 20:51:31.244+00	Egreso	Gasto General	1.00	23146c0c-6073-4950-98fa-cb0f656c950e	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 20:51:31.244+00	2026-04-13 20:51:31.244+00
568e64a1-ab14-4724-8b66-27ac61910038	2026-04-13 21:30:17.179+00	Egreso	Gasto General	20.00	0e941d42-2593-4332-bb83-bdea16c27fec	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 21:30:17.179+00	2026-04-13 21:30:17.179+00
2c59974f-d265-426c-842b-a360fb48d17d	2026-04-13 21:48:24.841+00	Egreso	Gasto General	5.00	5141f2c8-5530-4170-abe7-1c8372a1613b	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 21:48:24.841+00	2026-04-13 21:48:24.841+00
1dee26d2-e0c4-4bd7-ac6b-228866077ded	2026-04-13 21:49:02.516+00	Egreso	Gasto General	2.25	d10d40cf-0acd-46d2-a275-e14a73f595af	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 21:49:02.517+00	2026-04-13 21:49:02.517+00
2304e579-22aa-47d3-8ccd-cfcb54173bc8	2026-04-13 22:11:09.86+00	Egreso	Gasto General	150.00	b774a53d-7456-483d-a212-7a78745f743b	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 22:11:09.86+00	2026-04-13 22:11:09.86+00
b1e34674-0c2e-499e-adb1-d71b51eb9bac	2026-04-13 22:11:24.441+00	Egreso	Gasto General	52.88	58f7e138-411b-4b4e-9f59-71010ede3ebe	\N	50df0617-4113-4855-be22-d596adb26685	2026-04-13 22:11:24.441+00	2026-04-13 22:11:24.441+00
05e4d29a-a6dd-4202-814e-5e0270306b8a	2026-04-14 20:11:27.901+00	Ingreso	Bancos	2500.00	\N	INYECCIÓN: BCO BOLIVARIANO 	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 20:11:27.902+00	2026-04-14 20:11:27.902+00
6ac7d612-babd-437d-8dac-4a19eee22162	2026-04-14 20:12:18.925+00	Egreso	Compra	4.62	78bb89a1-cd2e-43aa-85e0-5ac080896693	EGRESO: Liq LIQ-0000188 (Pago fruta + saldos ant.)	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 20:12:18.925+00	2026-04-14 20:12:18.925+00
a846e43a-0f75-4c06-9ef5-fd9e997f2eda	2026-04-14 20:13:46.838+00	Egreso	Compra	22.93	3d6ff5f1-d5dc-4b9a-a1ca-2f16eee4239c	EGRESO: Liq LIQ-0000189 (Pago fruta + saldos ant.)	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 20:13:46.838+00	2026-04-14 20:13:46.838+00
66fe6b55-fb97-49fb-aaaf-4501c0f4c604	2026-04-14 20:14:15.585+00	Egreso	Compra	6.81	c1305d34-8057-46c6-9b89-f2939109cd84	EGRESO: Liq LIQ-0000190 (Pago fruta + saldos ant.)	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 20:14:15.585+00	2026-04-14 20:14:15.585+00
0921c777-1bc1-4e14-91d1-ef71110bffd9	2026-04-14 20:15:14.048+00	Egreso	Compra	9.32	b2487492-c533-48f5-8b17-bf4f817202fe	EGRESO: Liq LIQ-0000191 (Pago fruta + saldos ant.)	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 20:15:14.048+00	2026-04-14 20:15:14.048+00
cc43d18b-7337-42d8-8502-56d5eeebd426	2026-04-14 20:15:44.708+00	Egreso	Gasto General	7.00	5d2d6cf5-af04-43b7-a266-e431919bbfbc	\N	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 20:15:44.708+00	2026-04-14 20:15:44.708+00
615174dd-f8ec-45bd-a651-026f86536a47	2026-04-14 20:16:17.032+00	Egreso	Gasto General	6.00	a370f463-629b-44f7-b856-780b8da3d200	\N	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 20:16:17.032+00	2026-04-14 20:16:17.032+00
9ec71918-0089-4a41-9d76-16979f1e5cdb	2026-04-14 20:16:36.486+00	Egreso	Gasto General	2.50	eca1e489-8f6c-45ee-af0d-ad6d5c9d7028	\N	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 20:16:36.486+00	2026-04-14 20:16:36.486+00
4d2e4878-4e25-4448-971d-22b5440e25ab	2026-04-14 20:16:58.109+00	Egreso	Gasto General	1.50	9378df9e-5418-4371-81a0-8363582a1b96	\N	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 20:16:58.109+00	2026-04-14 20:16:58.109+00
c24c6ba0-3fa7-4ecc-b8d0-ebd3a77a3f72	2026-04-14 21:20:33.498+00	Egreso	Gasto General	10.00	cde61f72-1872-4f3b-a981-885df39837dd	\N	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 21:20:33.498+00	2026-04-14 21:20:33.498+00
a911eb06-9dad-4df9-8c6d-c66dcbe66128	2026-04-14 21:37:21.951+00	Egreso	Gasto General	2.50	e116afd7-e9a7-4f9d-b7f3-fb31f06a7f87	\N	2dbaaf95-faab-4f9b-a861-c96e84624908	2026-04-14 21:37:21.951+00	2026-04-14 21:37:21.951+00
c71100e2-eaf7-4e69-b980-fc991456eaaf	2026-04-15 16:02:11.533+00	Egreso	Compra	34.00	d0d12eec-5582-4659-a1bd-398e6cd2b4c3	EGRESO: Liq LIQ-0000192 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:02:11.534+00	2026-04-15 16:02:11.534+00
fd2b14e6-47b7-4f7f-bf93-1a734fff034b	2026-04-15 16:02:33.147+00	Egreso	Compra	22.10	7d5e2751-ebe1-412c-8799-0e2fe4ad828a	EGRESO: Liq LIQ-0000193 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:02:33.147+00	2026-04-15 16:02:33.147+00
2b59a1a7-8e9b-43d9-9095-c3bbe54b92ef	2026-04-15 16:03:01.841+00	Egreso	Compra	76.00	82b1cd97-25d9-40f3-a423-ed51512e602b	EGRESO: Liq LIQ-0000194 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:03:01.842+00	2026-04-15 16:03:01.842+00
6046c066-7b70-4ad5-85ab-83f0fc936bf7	2026-04-15 16:04:46.518+00	Egreso	Compra	31.04	0c7896b7-026f-4657-a71b-fa39d786b5d4	EGRESO: Liq LIQ-0000195 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:04:46.518+00	2026-04-15 16:04:46.518+00
8267cb1d-a4d6-4b77-8591-615cd57ecbf4	2026-04-15 16:05:10.768+00	Egreso	Compra	310.11	af6fc6ae-23fc-464d-b9c2-a3906a522ce7	EGRESO: Liq LIQ-0000196 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:05:10.768+00	2026-04-15 16:05:10.768+00
8702a232-1fa0-4020-b4eb-8cef1622cf35	2026-04-15 16:06:01.234+00	Egreso	Compra	76.96	e23f71a4-8fc5-4a29-a2ad-2d767a4ef514	EGRESO: Liq LIQ-0000197 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:06:01.234+00	2026-04-15 16:06:01.234+00
68e43cfc-4c5a-426a-bb56-1919cfcb6617	2026-04-15 16:06:35.192+00	Egreso	Compra	339.12	74495e5b-2fe9-411b-9453-2ce1f5547dc8	EGRESO: Liq LIQ-0000198 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:06:35.192+00	2026-04-15 16:06:35.192+00
61e9bfba-3dc9-466c-90de-86c6112a8daa	2026-04-15 16:07:24.123+00	Egreso	Compra	90.36	8a6da259-b130-4eeb-a4bf-ebf3c4f051f7	EGRESO: Liq LIQ-0000199 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:07:24.123+00	2026-04-15 16:07:24.123+00
da0b9749-0431-4b3f-a7f1-357d32399f75	2026-04-15 16:07:58.242+00	Egreso	Compra	21.77	9181b938-79d1-4d89-861b-4b4d7ca0ad82	EGRESO: Liq LIQ-0000200 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:07:58.242+00	2026-04-15 16:07:58.242+00
369cfd79-fd06-4a55-9d23-954c71ea5702	2026-04-15 16:08:28.751+00	Egreso	Compra	8.02	bd30dec7-f10c-4051-bccd-4f1f46572b2c	EGRESO: Liq LIQ-0000201 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:08:28.751+00	2026-04-15 16:08:28.751+00
81bc5a56-62f5-4d4a-924f-de3f0dc67daf	2026-04-15 16:08:57.975+00	Egreso	Compra	324.91	d65eee05-a62e-42b3-8572-ed10fabb33e2	EGRESO: Liq LIQ-0000202 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:08:57.975+00	2026-04-15 16:08:57.975+00
9bb9540f-07ce-403f-a989-a204ca8abf32	2026-04-15 16:09:50.854+00	Egreso	Gasto General	8.75	33050532-4231-48a5-880d-4c051b27d50f	\N	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:09:50.854+00	2026-04-15 16:09:50.854+00
7cf7aa76-1a71-4c06-9ba2-f814be175a16	2026-04-15 16:10:03.877+00	Egreso	Gasto General	4.00	8c0236a3-831a-44db-ae08-7c1bd97f3060	\N	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:10:03.877+00	2026-04-15 16:10:03.877+00
11290063-25d6-4e68-bddf-f28391021876	2026-04-15 16:10:27.537+00	Egreso	Gasto General	100.00	a861315a-d134-404c-9c15-674e95d2c8b3	\N	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:10:27.537+00	2026-04-15 16:10:27.537+00
3bd31d0f-e423-43c0-ad27-c372b4d6d5c8	2026-04-15 16:10:40.869+00	Egreso	Gasto General	13.00	a88199f2-2ac6-45fc-8168-1e23874efd7a	\N	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:10:40.869+00	2026-04-15 16:10:40.869+00
c9eed960-7da8-4bb0-9c84-337145e8ffc5	2026-04-15 16:15:48.094+00	Ingreso	Bancos	135.00	\N	INYECCIÓN: DEVOLUCION SOFIA 	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:15:48.095+00	2026-04-15 16:15:48.095+00
865aab9e-2819-48df-b7da-4b426bb00a58	2026-04-15 16:16:59.034+00	Egreso	Préstamo	70.25	d9a2c348-abd1-48b2-a9ae-e2e5c4ad00d8	Desembolso Préstamo. Ref: d9a2c348	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 16:16:59.034+00	2026-04-15 16:16:59.034+00
59e1f922-5856-4e77-a1d3-af18da6b2910	2026-04-15 19:41:50.142+00	Egreso	Gasto General	7.00	903d5605-606d-4c82-af9d-70c9ccd2c4b3	\N	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 19:41:50.142+00	2026-04-15 19:41:50.142+00
0efc8b5f-0bda-4eb5-923f-2b2f1ee15fb2	2026-04-15 19:42:04.971+00	Egreso	Gasto General	2.50	28eea051-5107-4730-a5f1-a1aa4ac5813d	\N	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 19:42:04.971+00	2026-04-15 19:42:04.971+00
b463c527-85a6-4d10-a80f-2323c754142f	2026-04-15 19:43:18.967+00	Egreso	Compra	32.63	e6e5da9b-6a8a-4041-b7b6-811ca18f2d82	EGRESO: Liq LIQ-0000203 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 19:43:18.967+00	2026-04-15 19:43:18.967+00
56cdd2ef-fea5-4726-a9e7-00d968a79c4b	2026-04-15 19:56:56.727+00	Egreso	Gasto General	0.75	d70744fb-a53f-4df9-a576-5870e92e80b7	\N	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 19:56:56.727+00	2026-04-15 19:56:56.727+00
4e74bde2-b399-40c0-a85b-69e4f5f218cc	2026-04-15 22:03:40.792+00	Ingreso	Bancos	10000.00	\N	INYECCIÓN: GILER	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 22:03:40.792+00	2026-04-15 22:03:40.792+00
a3c9c5ad-4365-4e6a-a349-075b9c4b567f	2026-04-15 22:03:56.3+00	Ingreso	Bancos	4000.00	\N	INYECCIÓN: DR. JAMIL 	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 22:03:56.301+00	2026-04-15 22:03:56.301+00
3f806898-02d7-4fdd-8187-77b2302e8ef5	2026-04-15 22:04:59.382+00	Egreso	Gasto General	20.00	64f1195a-e215-4eca-89bf-250a35b6a4ec	\N	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 22:04:59.382+00	2026-04-15 22:04:59.382+00
5ad6c6eb-2dd2-4621-8c68-27d0b1a9be11	2026-04-15 22:26:17.535+00	Ingreso	Venta	22.00	\N	VENTA RÁPIDA: VENTA; 98 Libras MAIZ  - 	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 22:26:17.538+00	2026-04-15 22:26:17.538+00
13f076ce-17b8-48d9-bb88-89de8d67fecf	2026-04-15 22:51:10.646+00	Egreso	Compra	1806.00	5366474c-53fd-450b-9fc6-a8a0183dcff9	BANCARIO: Liq LIQ-0000204	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 22:51:10.647+00	2026-04-15 22:51:10.647+00
ea997c04-decf-4eca-9eef-59cb44a54db7	2026-04-15 22:52:12.821+00	Egreso	Compra	7399.35	8b94e1b5-11c6-4b90-99fe-62d49f41eec5	BANCARIO: Liq LIQ-0000205	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 22:52:12.821+00	2026-04-15 22:52:12.821+00
3f9ece33-c305-4230-bc29-9afec064c0de	2026-04-15 22:53:04.028+00	Egreso	Compra	7242.75	6e5eac28-3e5c-4e8a-82c0-78cd93877833	BANCARIO: Liq LIQ-0000206	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-15 22:53:04.028+00	2026-04-15 22:53:04.028+00
a5445bdc-799f-43e8-b5de-7415ff24447c	2026-04-16 12:39:56.841+00	Egreso	Compra	119.00	f269a614-bf4a-4614-a9aa-b41c69b6403b	BANCARIO: Liq LIQ-0000207	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-16 12:39:56.842+00	2026-04-16 12:39:56.842+00
3f2248bd-3e86-4960-902e-7c3827201546	2026-04-16 12:41:08.526+00	Egreso	Compra	1653.40	0bdc6e2c-4a7f-4bca-89fe-b8694e0a80dc	BANCARIO: Liq LIQ-0000208	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-16 12:41:08.526+00	2026-04-16 12:41:08.526+00
b4488367-fa05-46f3-987c-4aec79615021	2026-04-16 12:42:19.556+00	Egreso	Compra	1650.60	d6a47427-cf54-48c6-a885-61785b38ae3f	EGRESO: Liq LIQ-0000209 (Pago fruta + saldos ant.)	9ba52a35-c19c-45bb-b535-358cbaee6ef5	2026-04-16 12:42:19.556+00	2026-04-16 12:42:19.556+00
236d662b-6714-41d2-b3a6-7769b236e657	2026-04-16 16:34:05.645+00	Egreso	Compra	10.98	65884b08-086c-4d49-918a-84c5f98c8c57	EGRESO: Liq LIQ-0000210 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:34:05.645+00	2026-04-16 16:34:05.645+00
448571b0-3182-46a8-94f1-f5a975db9f4c	2026-04-16 16:34:27.446+00	Egreso	Compra	4.50	4e9cf48c-0a13-42b2-bb4f-910fd61b135f	EGRESO: Liq LIQ-0000211 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:34:27.446+00	2026-04-16 16:34:27.446+00
fd592e10-d20d-4aa2-940f-0ac35b99f6a7	2026-04-16 16:34:50.207+00	Egreso	Compra	19.00	647fed1e-6167-4a70-ad18-3fb410fff60c	EGRESO: Liq LIQ-0000212 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:34:50.207+00	2026-04-16 16:34:50.207+00
a2acc177-d83a-4159-b444-2f01cb253991	2026-04-16 16:35:29.481+00	Egreso	Compra	58.06	376ed702-c5fb-4d4d-ac7c-5f36684cebbc	EGRESO: Liq LIQ-0000213 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:35:29.481+00	2026-04-16 16:35:29.481+00
566fe356-1e3f-4697-8e3c-f1a66dc2ba96	2026-04-16 16:35:56.785+00	Egreso	Compra	9.00	3f326730-6a51-4bda-badb-8f4089a983b5	EGRESO: Liq LIQ-0000214 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:35:56.785+00	2026-04-16 16:35:56.785+00
65c3f2f3-00cf-42a7-aa94-829a06d31c25	2026-04-16 16:36:25.854+00	Egreso	Compra	5.40	5b6809e6-b56d-4099-b7bb-780a1c9205f2	EGRESO: Liq LIQ-0000215 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:36:25.854+00	2026-04-16 16:36:25.854+00
e84f00f2-d9c4-4657-bbb1-597fa30226ca	2026-04-16 16:36:58.072+00	Egreso	Compra	90.00	35bae7ed-622a-4a90-99be-5fb97c07022e	EGRESO: Liq LIQ-0000216 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:36:58.072+00	2026-04-16 16:36:58.072+00
57e2cf52-acac-4677-8fd5-cb9dce24a48f	2026-04-16 16:39:57.195+00	Ingreso	Bancos	50.00	\N	INYECCIÓN: ABONO DE EDUARDO ZAMBRANO 15/04/2026	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:39:57.195+00	2026-04-16 16:39:57.195+00
f97cb2a6-9ce8-4d0b-80c6-ea34aa4fe8ef	2026-04-16 16:43:14.019+00	Egreso	Compra	1002.74	9177334c-93f4-4154-9faf-219617475daf	EGRESO: Liq LIQ-0000217 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:43:14.019+00	2026-04-16 16:43:14.019+00
32465bb4-24d1-4d1a-950a-c537334dd4a9	2026-04-16 16:43:52.116+00	Egreso	Compra	194.00	45133d31-e01d-41af-9e7c-46ce2340f356	EGRESO: Liq LIQ-0000218 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:43:52.116+00	2026-04-16 16:43:52.116+00
97dfffce-21f6-4a2c-9173-24f529879adf	2026-04-16 16:44:21.859+00	Egreso	Compra	28.72	0b0d98cd-0470-4d17-94d9-c8e6cabd9d1c	EGRESO: Liq LIQ-0000219 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:44:21.859+00	2026-04-16 16:44:21.859+00
6a9fb08a-cea4-4990-9e36-ed6fcb906d7f	2026-04-16 16:45:20.97+00	Egreso	Compra	36.38	9e347876-444c-4b38-b26e-aa012d2c8655	EGRESO: Liq LIQ-0000220 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:45:20.97+00	2026-04-16 16:45:20.97+00
c32e4769-05fe-4f93-9e3f-672441879cb6	2026-04-16 16:45:57.513+00	Egreso	Compra	13.34	7101732f-34c2-4108-b853-03c383cfbad2	EGRESO: Liq LIQ-0000221 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:45:57.513+00	2026-04-16 16:45:57.513+00
9789d566-8bd4-4b22-81c3-d8016bdedf15	2026-04-16 16:46:23.942+00	Egreso	Gasto General	8.00	1df1fbd8-aaa5-47e2-86ea-163a5b8b562e	\N	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:46:23.942+00	2026-04-16 16:46:23.942+00
1fe01f01-da09-4335-8afb-08d4d6b91cea	2026-04-16 16:46:35.488+00	Egreso	Gasto General	23.00	464563a6-a193-47f3-b3a9-d9dbe7483024	\N	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:46:35.488+00	2026-04-16 16:46:35.488+00
eabaeeea-d059-4f30-87dc-5d0ed8e4f96a	2026-04-16 16:46:57.101+00	Egreso	Gasto General	2.00	7d5e0ad0-4bdc-4e48-8acd-f527aec30f7a	\N	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:46:57.101+00	2026-04-16 16:46:57.101+00
4cf51987-8a64-40a5-a4d2-e5543354b543	2026-04-16 16:47:12.179+00	Egreso	Gasto General	21.00	7cb50111-0e67-4c9d-8441-9c2c6e88b9c8	\N	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:47:12.179+00	2026-04-16 16:47:12.179+00
a50c2aa4-0fe2-4518-9425-b4c15438a744	2026-04-16 16:47:47.346+00	Egreso	Gasto General	6.00	d4769471-652f-4059-bb4b-2a4a31605b4d	\N	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 16:47:47.346+00	2026-04-16 16:47:47.346+00
d8b80edf-5520-4c14-acc1-e0a3575e4bc7	2026-04-16 19:27:38.565+00	Egreso	Compra	4.05	1898e34a-05ea-405e-8177-38b73987222b	EGRESO: Liq LIQ-0000222 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 19:27:38.565+00	2026-04-16 19:27:38.565+00
225a18ba-992d-4239-b86d-4b259f033f8c	2026-04-16 19:28:46.447+00	Egreso	Compra	5.82	78a65d0a-c9f1-4acf-9a3c-4f0e9851d467	EGRESO: Liq LIQ-0000223 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 19:28:46.447+00	2026-04-16 19:28:46.447+00
dda550e8-c05a-459b-8878-899cfc4788e4	2026-04-16 19:29:18.052+00	Egreso	Compra	11.64	929daac0-58c5-48d1-bd58-0d0b1d985ed8	EGRESO: Liq LIQ-0000224 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 19:29:18.052+00	2026-04-16 19:29:18.052+00
2fcca320-ae6a-449b-9259-5ce15e179537	2026-04-16 19:30:57.377+00	Egreso	Compra	46.66	b28e9ac1-16a3-4333-a24a-ce911ad6eeab	EGRESO: Liq LIQ-0000225 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 19:30:57.377+00	2026-04-16 19:30:57.377+00
f6b77790-dbaf-45bd-ad31-d71f88a2f605	2026-04-16 19:31:30.028+00	Egreso	Compra	31.43	ed4c2a48-34a7-430e-b2f8-a6337d659320	EGRESO: Liq LIQ-0000226 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 19:31:30.028+00	2026-04-16 19:31:30.028+00
1bf08593-2103-4080-a5fe-4a4c7a69c5ca	2026-04-16 19:32:10.184+00	Egreso	Gasto General	7.00	c4a3183d-37c7-41d8-9deb-43bd141fea08	\N	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 19:32:10.185+00	2026-04-16 19:32:10.185+00
eccbfeb9-0af9-401a-bb37-c88eb01764ee	2026-04-16 19:32:22.141+00	Egreso	Gasto General	20.00	2753208a-ed41-4a30-a6c7-59c7217da033	\N	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 19:32:22.141+00	2026-04-16 19:32:22.141+00
1d9eb935-5748-4013-a005-2ef24ed5b03d	2026-04-16 19:32:43.613+00	Egreso	Gasto General	2.50	13b05861-2a66-4c60-88f2-215547fe54c8	\N	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 19:32:43.613+00	2026-04-16 19:32:43.613+00
fc876ed9-7bf6-4a66-a5ec-08dbc9109b1d	2026-04-16 20:22:45.057+00	Egreso	Compra	12.13	13dfbef0-8451-47f3-a4d5-dba983013b1f	EGRESO: Liq LIQ-0000227 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 20:22:45.057+00	2026-04-16 20:22:45.057+00
178b070a-74cc-48c5-bbe6-58e28122c322	2026-04-16 20:26:41.397+00	Egreso	Gasto General	10.00	33c1a06a-68e5-419e-90e1-03d7043baec9	\N	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 20:26:41.397+00	2026-04-16 20:26:41.397+00
4d42a847-0d98-43f8-a3d2-9429126ec30a	2026-04-16 21:23:55.841+00	Egreso	Gasto General	120.00	c858f73a-da5e-49f2-a776-6629b0e97ab3	\N	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 21:23:55.842+00	2026-04-16 21:23:55.842+00
cd3eaa09-d9d7-436b-89ef-2492da628bf0	2026-04-13 19:55:48.946+00	Egreso	Préstamo	60.00	d016dce3-4eb5-4646-bcec-80ae79b18d52	EDICIÓN: PRESTO LUNES 13 Y MIERCOLES 15, JUEVES 16 + $5 DE MAIZ	50df0617-4113-4855-be22-d596adb26685	2026-04-13 19:55:48.946+00	2026-04-16 21:25:33.661+00
df744ada-aa7e-4529-b5bd-685e2b9754fc	2026-04-16 21:26:32.146+00	Ingreso	Venta	5.00	\N	VENTA RÁPIDA: VENTA; 20 Libras MAIZ  - 	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 21:26:32.147+00	2026-04-16 21:26:32.147+00
7730b0e0-aced-4a1e-9ead-228ffac8a643	2026-04-16 22:22:21.681+00	Egreso	Compra	9.32	73971e47-e776-456d-8e02-1ae86daa3d82	EGRESO: Liq LIQ-0000228 (Pago fruta + saldos ant.)	573dc33b-a8b0-40a3-b0be-4613dcf824b6	2026-04-16 22:22:21.681+00	2026-04-16 22:22:21.681+00
fce48ab2-83dc-4311-909a-fff7c22b00f7	2026-04-17 15:41:56.947+00	Egreso	Compra	4.50	d311e19b-1885-477f-9ee7-221d667d1065	EFECTIVO: Liq LIQ-0000229 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 15:41:56.947+00	2026-04-17 15:41:56.947+00
d30a2db0-839b-43d5-a8dd-ce105530f9a6	2026-04-17 15:43:02.542+00	Egreso	Compra	127.01	8f8d37f7-8498-4822-9551-0ca29e57a0f5	EFECTIVO: Liq LIQ-0000230 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 15:43:02.542+00	2026-04-17 15:43:02.542+00
1db953e1-8fab-49ec-9358-186b57229f38	2026-04-17 15:43:38.16+00	Egreso	Compra	21.85	fb1a4c30-6281-48b6-83c7-5e6acbc9a435	EFECTIVO: Liq LIQ-0000231 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 15:43:38.161+00	2026-04-17 15:43:38.161+00
d53bcf64-b6cb-4fee-87f7-74b99e792781	2026-04-17 16:09:53.499+00	Ingreso	Bancos	100.00	\N	INYECCIÓN: MONEDAS DE $1 	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:09:53.5+00	2026-04-17 16:09:53.5+00
d52b9561-c4ae-4766-a4cb-672478c3e28f	2026-04-17 16:12:41.978+00	Egreso	Compra	13.92	ab72416a-f3c2-4b65-bd9c-66791ef70c3e	EFECTIVO: Liq LIQ-0000232 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:12:41.978+00	2026-04-17 16:12:41.978+00
db65a094-2e51-410b-8e25-88e15fee9344	2026-04-17 16:13:57.476+00	Egreso	Compra	30.03	d2cac3c2-1e4b-4cd9-8253-0571e733a7e4	EFECTIVO: Liq LIQ-0000233 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:13:57.476+00	2026-04-17 16:13:57.476+00
e57d9d6c-2b2a-4115-b308-697da0bed84e	2026-04-17 16:14:35.972+00	Egreso	Compra	17.81	7a1445ae-105c-4023-8a05-31d0784f1ad0	EFECTIVO: Liq LIQ-0000234 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:14:35.972+00	2026-04-17 16:14:35.972+00
4a7b5187-03a5-4465-8582-6609f2732adc	2026-04-17 16:15:06.171+00	Egreso	Compra	27.24	88afea12-c8a8-4a0c-9bc0-6d0442792b93	EFECTIVO: Liq LIQ-0000235 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:15:06.171+00	2026-04-17 16:15:06.171+00
ee6f8b17-56b7-4a3e-8690-6bef5370e7c5	2026-04-17 16:19:10.213+00	Ingreso	Venta	5.00	\N	VENTA RÁPIDA: VENTA; 7.15 Libras MARACUYA - 	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:19:10.214+00	2026-04-17 16:19:10.214+00
e757d6e3-6a93-425c-9b81-c92429b0bbd0	2026-04-17 16:20:03.761+00	Egreso	Compra	145.50	3d72c113-936d-4a86-8b19-cd2efc218a19	EFECTIVO: Liq LIQ-0000236 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:20:03.761+00	2026-04-17 16:20:03.761+00
0433174e-bea7-4d89-b684-a1247dc539d3	2026-04-17 16:20:34.14+00	Egreso	Compra	31.53	84baf8e2-2d16-4de9-b738-2b55989191c6	EFECTIVO: Liq LIQ-0000237 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:20:34.14+00	2026-04-17 16:20:34.14+00
424cf9eb-e489-4b68-a762-8b4fe87060d6	2026-04-17 16:21:01.707+00	Egreso	Compra	175.15	59c220f7-024e-47e9-a564-32754a11b962	EFECTIVO: Liq LIQ-0000238 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:21:01.707+00	2026-04-17 16:21:01.707+00
7b5a94d2-cde6-4242-a3be-f01a0c2beb1b	2026-04-17 16:21:32.122+00	Egreso	Compra	11.64	e242f9ec-5324-4ef7-97ea-3bdf81e7f87e	EFECTIVO: Liq LIQ-0000239 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:21:32.122+00	2026-04-17 16:21:32.122+00
9aa87da1-8246-4924-a406-c6087cbf99dd	2026-04-17 16:22:12.469+00	Egreso	Compra	77.14	2fcea9a0-5200-4441-997c-26c44e8b41ed	EFECTIVO: Liq LIQ-0000240 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:22:12.469+00	2026-04-17 16:22:12.469+00
bae50484-0743-4722-bd98-9d653bf98c12	2026-04-17 16:23:29.637+00	Egreso	Compra	40.20	677d15a3-4a1c-4cca-b0da-17adf72ad624	EFECTIVO: Liq LIQ-0000241 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:23:29.637+00	2026-04-17 16:23:29.637+00
1a82472e-49f5-4f30-a4d8-135afef9884f	2026-04-17 16:24:29.678+00	Egreso	Compra	19.02	3175c88b-c5b5-4a1c-8d7b-0ace14981b36	EFECTIVO: Liq LIQ-0000242 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:24:29.678+00	2026-04-17 16:24:29.678+00
a8f2680d-177c-4328-a0d5-7e157c8d3c44	2026-04-17 16:57:51.664+00	Ingreso	Venta	1.00	\N	VENTA RÁPIDA: VENTA; 1.43 Libras MARACUYA - 	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 16:57:51.665+00	2026-04-17 16:57:51.665+00
85a298e8-a338-489a-9186-4a17fe775d9e	2026-04-17 19:53:04.541+00	Egreso	Compra	16.40	35760561-bdbb-4985-9d11-be4f2c49916e	EFECTIVO: Liq LIQ-0000243 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 19:53:04.541+00	2026-04-17 19:53:04.541+00
b2f47180-35ea-4a44-b1b3-03b49125b830	2026-04-17 19:54:26.131+00	Egreso	Gasto General	15.00	e3f833d1-bd56-4fdc-b9d1-b800ccacac66	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 19:54:26.131+00	2026-04-17 19:54:26.131+00
7254f086-54e5-441d-af91-ef4944936d3c	2026-04-17 19:54:43.786+00	Egreso	Gasto General	10.00	652d9750-e41f-4d92-b48f-338fbfaabff9	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 19:54:43.786+00	2026-04-17 19:54:43.786+00
f33a0101-6ec4-4b3b-a3b9-18ead8be48e9	2026-04-17 19:54:54.644+00	Egreso	Gasto General	2.00	81afc537-ed7a-4cc8-afbe-b5d62c13d1ef	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 19:54:54.644+00	2026-04-17 19:54:54.644+00
a7ee124e-cb8a-4ca8-8ab6-7695e3624ffb	2026-04-17 19:55:19.341+00	Egreso	Gasto General	58.00	ebeb9945-8936-4ad0-b565-c96adc77a0d5	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 19:55:19.342+00	2026-04-17 19:55:19.342+00
22a79124-0853-464f-93ce-c201257069ef	2026-04-17 19:56:40.084+00	Egreso	Gasto General	1.00	479cb8c9-d4e2-4a13-98fe-0c4c4eadfe52	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 19:56:40.084+00	2026-04-17 19:56:40.084+00
ca0b71b8-66bc-40f1-9ddd-3de6c10d7a68	2026-04-17 19:56:58.796+00	Egreso	Gasto General	7.00	1bea968d-e708-4692-947b-fe36903c772d	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 19:56:58.796+00	2026-04-17 19:56:58.796+00
f7afc74f-c60c-4e5f-ab7a-07365b238952	2026-04-17 19:57:11.342+00	Egreso	Gasto General	5.00	97394dbb-c761-4dfc-b5ac-00a024d32441	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 19:57:11.342+00	2026-04-17 19:57:11.342+00
15154e07-01bd-41ce-af89-948ea4f64c48	2026-04-17 19:57:31.503+00	Egreso	Gasto General	1.75	4a23ac78-cc16-473b-8d12-aad5dc3d7b7e	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 19:57:31.504+00	2026-04-17 19:57:31.504+00
7b3633b4-27ca-4a21-b15a-862edd32b796	2026-04-17 20:07:50.964+00	Egreso	Compra	20.38	522ee860-5a1f-4e23-a9ac-971b4f2a2565	EFECTIVO: Liq LIQ-0000244 (Pago fruta + saldos ant.)	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 20:07:50.964+00	2026-04-17 20:07:50.964+00
a6cdd7f3-9695-48ad-9c55-dd150a717847	2026-04-17 20:17:39.78+00	Egreso	Gasto General	7.70	c06849b5-9ad4-4e83-b050-b8d53ed5296b	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 20:17:39.78+00	2026-04-17 20:17:39.78+00
5044d65b-29ab-4e37-bedc-7224a7b29f1d	2026-04-17 20:28:15.705+00	Egreso	Gasto General	7.50	f5b5eedb-e73f-49ac-809b-6b8f209ea7f8	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 20:28:15.705+00	2026-04-17 20:28:15.705+00
4b302b4f-fe08-42db-83e6-1b5312d7fbdc	2026-04-17 20:28:27.281+00	Egreso	Gasto General	0.50	74a1bd7f-a3f8-460a-8b08-a4a711577d36	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 20:28:27.281+00	2026-04-17 20:28:27.281+00
09334aec-d29c-4525-b724-9b53711c62a9	2026-04-17 21:33:44.386+00	Egreso	Gasto General	90.00	75c8658d-50fa-4c26-88b4-31651fcea41d	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 21:33:44.386+00	2026-04-17 21:33:44.386+00
d762e40a-8e4c-46b1-b6fd-debfa168f7ce	2026-04-17 22:10:56.945+00	Egreso	Gasto General	0.50	2b4ac0d2-50ab-4704-a5ce-d30e759c03a5	\N	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 22:10:56.945+00	2026-04-17 22:10:56.945+00
a9c857de-f59f-45a9-9c2e-6a6a8bc7ff3f	2026-04-17 22:24:41.636+00	Ingreso	Venta	1.00	\N	VENTA RÁPIDA: VENTA; 1.43 Libras MARACUYA - 	636913d0-a933-4f98-92a2-085fc3a49824	2026-04-17 22:24:41.636+00	2026-04-17 22:24:41.636+00
f83832dc-5e06-41d9-9654-6a5183bc1222	2026-04-18 16:11:24.043+00	Egreso	Compra	42.75	7bef2f49-872b-445c-ab00-a409bfecffe5	EFECTIVO: Liq LIQ-0000245 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:11:24.043+00	2026-04-18 16:11:24.043+00
e1380e6e-d97d-4d16-a374-0b4f01bdcb79	2026-04-18 16:13:30.742+00	Egreso	Compra	140.00	737ebdb0-c3ae-4f5e-887d-07f937e74d38	EFECTIVO: Liq LIQ-0000246 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:13:30.743+00	2026-04-18 16:13:30.743+00
3c739ada-8fbd-4398-bece-990c1981c660	2026-04-18 16:13:30.811+00	Egreso	Compra	176.80	737ebdb0-c3ae-4f5e-887d-07f937e74d38	TRANSFERENCIA: Liq LIQ-0000246	\N	2026-04-18 16:13:30.812+00	2026-04-18 16:13:30.812+00
822b8ed6-0513-4601-be78-ba67c4f9ff03	2026-04-18 16:14:16.377+00	Egreso	Compra	104.76	b39d997e-e876-43f9-955f-5991532f7a18	EFECTIVO: Liq LIQ-0000247 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:14:16.378+00	2026-04-18 16:14:16.378+00
7885782f-f342-4bad-b7bd-b4c7eff6835b	2026-04-18 16:17:30.014+00	Ingreso	Bancos	205.00	\N	INYECCIÓN: MONEDAS DE $1,00 Y MONEDAS DE 0,05 CTVS 	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:17:30.014+00	2026-04-18 16:17:30.014+00
37ce3339-f534-4e0d-9d98-e6e9ec0d8ca1	2026-04-18 16:18:55.948+00	Egreso	Compra	25.44	c8fc6f50-b67d-4b44-a00d-cc031c72bf42	EFECTIVO: Liq LIQ-0000248 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:18:55.948+00	2026-04-18 16:18:55.948+00
9ed7fc0e-654c-4b66-b3d0-361cd6009d62	2026-04-18 16:19:35.689+00	Egreso	Compra	15.89	06219581-3a21-48da-b0d4-3acd17bffa64	EFECTIVO: Liq LIQ-0000249 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:19:35.689+00	2026-04-18 16:19:35.689+00
d53cab1d-3ac3-4403-8e3a-ca8319b29877	2026-04-18 16:20:06.372+00	Egreso	Compra	12.49	7d242942-ea20-46bb-9dc8-807f7aaca232	EFECTIVO: Liq LIQ-0000250 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:20:06.372+00	2026-04-18 16:20:06.372+00
928717ad-2b23-4d9f-aa62-5a979e2fe07e	2026-04-18 16:21:45.501+00	Egreso	Compra	19.54	ece59cf2-3944-486f-89f6-48f5b4864016	EFECTIVO: Liq LIQ-0000251 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:21:45.501+00	2026-04-18 16:21:45.501+00
2c96886b-1458-434e-a3da-213df8183361	2026-04-18 16:22:20.311+00	Egreso	Compra	23.08	2b235a91-edf8-4444-889e-b8a7b2d0142b	EFECTIVO: Liq LIQ-0000252 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:22:20.311+00	2026-04-18 16:22:20.311+00
df65201e-a67f-48f6-97c7-d390a5bfc16b	2026-04-18 16:23:39.582+00	Egreso	Compra	10.22	26e2dc5b-a438-4819-9b51-8131f14d7ac2	EFECTIVO: Liq LIQ-0000253 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:23:39.583+00	2026-04-18 16:23:39.583+00
708298e7-1399-49c8-9ebc-9d1983bbc0a6	2026-04-18 16:24:12.661+00	Egreso	Compra	2.27	9c21c4c1-d702-47e4-bf48-7b92767dbe07	EFECTIVO: Liq LIQ-0000254 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:24:12.661+00	2026-04-18 16:24:12.661+00
b8045527-3ca9-497f-a0bd-0829dab1acf5	2026-04-18 16:25:05.813+00	Egreso	Compra	36.70	4aa22d95-6cb6-4341-9c47-c47e0ae150a9	EFECTIVO: Liq LIQ-0000255 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:25:05.813+00	2026-04-18 16:25:05.813+00
d92c93d5-c93a-4366-903a-67f9adfe40d6	2026-04-18 16:26:23.58+00	Egreso	Compra	35.19	75c1bb81-1cd8-4434-8f98-f67fb50f70fc	EFECTIVO: Liq LIQ-0000256 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:26:23.58+00	2026-04-18 16:26:23.58+00
8e612e42-2899-4d30-9ca6-077be0fbc93b	2026-04-18 16:26:56.162+00	Egreso	Compra	10.98	0eeb106a-003f-4618-82f3-5201f43d22e2	EFECTIVO: Liq LIQ-0000257 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:26:56.162+00	2026-04-18 16:26:56.162+00
b2d4f87a-1f3c-4ce0-aa77-26ee7eb6ec62	2026-04-18 16:27:56.844+00	Egreso	Compra	26.00	8491f063-b461-4709-b494-3a35116fa3be	EFECTIVO: Liq LIQ-0000258 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:27:56.845+00	2026-04-18 16:27:56.845+00
6d1b4ddb-bae3-4be0-a565-bdf462d30430	2026-04-18 16:28:33.967+00	Egreso	Compra	64.02	46609806-072b-4199-8d5f-0c47be5ca08d	EFECTIVO: Liq LIQ-0000259 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:28:33.968+00	2026-04-18 16:28:33.968+00
2e944d90-2630-4db7-b2be-e9a3c562cf23	2026-04-18 16:31:03.86+00	Egreso	Compra	21.87	bddec045-db74-4cb6-b366-12b5cef1a19f	EFECTIVO: Liq LIQ-0000260 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:31:03.861+00	2026-04-18 16:31:03.861+00
6c0a822e-cbee-4a54-b3b8-d2ec2703aca9	2026-04-18 16:31:32.585+00	Egreso	Compra	124.89	89453b82-bb65-43c2-8f63-d395d0801997	EFECTIVO: Liq LIQ-0000261 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:31:32.586+00	2026-04-18 16:31:32.586+00
1bea8a8a-4918-403f-bf91-5d3adab29276	2026-04-18 16:33:16.102+00	Egreso	Compra	35.22	4dacbd86-8125-48b1-b9d9-f33e933f1006	EFECTIVO: Liq LIQ-0000262 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:33:16.102+00	2026-04-18 16:33:16.102+00
5581fa09-0872-41f9-800e-135b080e7461	2026-04-18 16:33:39.246+00	Egreso	Compra	59.76	01cbd0fa-c76f-4459-af38-a7a6025f6ab8	EFECTIVO: Liq LIQ-0000263 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:33:39.246+00	2026-04-18 16:33:39.246+00
fc1b41f2-76ec-47fd-8bb2-7aa1ee384369	2026-04-18 16:34:09.803+00	Egreso	Compra	190.01	8c4718bd-66c6-4d23-aa8a-0cbe212ab339	EFECTIVO: Liq LIQ-0000264 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:34:09.804+00	2026-04-18 16:34:09.804+00
f3e8dade-55dd-4f78-8cf7-f15a515c6302	2026-04-18 16:34:30.814+00	Egreso	Compra	36.86	1bce7280-5365-4ecc-a175-a5dcb67f23ce	EFECTIVO: Liq LIQ-0000265 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:34:30.814+00	2026-04-18 16:34:30.814+00
5a04ca06-de4e-4acf-a9af-3b40351838dd	2026-04-18 16:34:56.739+00	Egreso	Compra	72.03	5d1e961b-e7b4-4257-93d2-3b19b7eab8f4	EFECTIVO: Liq LIQ-0000266 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:34:56.739+00	2026-04-18 16:34:56.739+00
1378d9cc-4e19-4767-b457-3e881587eec2	2026-04-18 16:35:26.447+00	Egreso	Compra	29.69	22d87bb3-e0ed-4d1a-8b24-d0e32ad0e52f	EFECTIVO: Liq LIQ-0000267 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:35:26.447+00	2026-04-18 16:35:26.447+00
51c61099-3a81-4898-bb45-4b5b7ce0f304	2026-04-18 16:36:06.998+00	Egreso	Compra	49.09	fa088413-7613-4d7a-910e-8d16e50c9580	EFECTIVO: Liq LIQ-0000268 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:36:06.998+00	2026-04-18 16:36:06.998+00
1c4e4825-6d00-46af-8bce-83c29c960c0c	2026-04-18 16:36:30.628+00	Egreso	Compra	115.19	fcee95bb-fcc4-4898-91b0-b49d30d91309	EFECTIVO: Liq LIQ-0000269 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:36:30.628+00	2026-04-18 16:36:30.628+00
4a32d57e-7ae7-4c6a-a146-8ff52a34c55b	2026-04-18 16:36:56.443+00	Egreso	Compra	16.98	ee3ceb34-e020-4952-8c86-010b33c9de58	EFECTIVO: Liq LIQ-0000270 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:36:56.443+00	2026-04-18 16:36:56.443+00
668ec0d9-796f-4d06-91ae-7cf71cd73c72	2026-04-18 16:38:43.137+00	Egreso	Compra	17.08	ac8e1480-812b-4c9e-9e5f-9b91573e7e37	EFECTIVO: Liq LIQ-0000271 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:38:43.138+00	2026-04-18 16:38:43.138+00
7daf5ac5-7356-49ce-9375-cf3bb3f8472e	2026-04-18 16:39:12.416+00	Egreso	Compra	118.53	5b45257c-2f69-420b-858f-bca62a5b785d	EFECTIVO: Liq LIQ-0000272 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:39:12.416+00	2026-04-18 16:39:12.416+00
b534c761-1d67-45d8-b195-1027f1d60bef	2026-04-18 16:39:36.58+00	Egreso	Compra	32.89	82673a06-e607-4178-9e1c-f89f061dc1f3	EFECTIVO: Liq LIQ-0000273 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:39:36.58+00	2026-04-18 16:39:36.58+00
42e3fbae-354d-4288-adf0-6f9ae7381758	2026-04-18 16:40:06.209+00	Egreso	Compra	4.66	ed7748e2-6547-4e34-84a2-6b7ea2faec6c	EFECTIVO: Liq LIQ-0000274 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:40:06.209+00	2026-04-18 16:40:06.209+00
ce9a48c6-3dcb-4a36-9fb6-35b44ae17693	2026-04-18 16:40:34.081+00	Egreso	Compra	11.53	f880026c-1808-4d42-8fab-b47cb0822f5e	EFECTIVO: Liq LIQ-0000275 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:40:34.081+00	2026-04-18 16:40:34.081+00
69eca791-5b46-4b1c-aee6-a61efbba49c5	2026-04-18 16:41:01.068+00	Egreso	Compra	69.17	9a462d6c-77bc-480a-aa15-8c4de3497284	EFECTIVO: Liq LIQ-0000276 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:41:01.068+00	2026-04-18 16:41:01.068+00
3b245d36-0145-40e8-a0e4-d3a98b0e8c48	2026-04-18 16:41:17.148+00	Egreso	Compra	7.28	633033db-dc94-4eef-b96a-52e4edda90fd	EFECTIVO: Liq LIQ-0000277 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:41:17.148+00	2026-04-18 16:41:17.148+00
599d6ca0-60e7-41a2-aa79-5825a44fbda7	2026-04-18 16:41:55.742+00	Egreso	Compra	68.29	fdcf167b-b29e-40f0-8348-f3a2b41c25ed	EFECTIVO: Liq LIQ-0000278 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:41:55.742+00	2026-04-18 16:41:55.742+00
abac42bc-1b43-4868-ba0a-4351c8b34b1b	2026-04-18 16:42:24.309+00	Egreso	Compra	423.51	10443cbe-8ece-40ea-bc7b-bba19fb5f68c	EFECTIVO: Liq LIQ-0000279 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:42:24.309+00	2026-04-18 16:42:24.309+00
35d5b73a-c26b-41d2-aa5f-fa06b1daa420	2026-04-18 16:42:49.566+00	Egreso	Compra	14.55	548f96fe-1a92-4a9a-9e53-6727b6a9e44f	EFECTIVO: Liq LIQ-0000280 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:42:49.566+00	2026-04-18 16:42:49.566+00
e2abb4cd-af13-4570-ab96-cf41b29390e3	2026-04-18 16:43:19.18+00	Egreso	Compra	219.77	5d8e4307-2675-4c58-a33d-6b3d0e0cb557	EFECTIVO: Liq LIQ-0000281 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:43:19.18+00	2026-04-18 16:43:19.18+00
7fc99525-eead-4fd2-bb83-454ab6b02aff	2026-04-18 16:44:02.069+00	Egreso	Compra	18.19	2869b678-ff7d-46fc-91e2-fdaf54761817	EFECTIVO: Liq LIQ-0000282 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:44:02.069+00	2026-04-18 16:44:02.069+00
b483722b-6097-4f28-b3df-c99690be5061	2026-04-18 16:44:45.578+00	Egreso	Compra	1271.20	6a787954-25ef-44cc-bd11-72f07d2a5b31	TRANSFERENCIA: Liq LIQ-0000283	\N	2026-04-18 16:44:45.578+00	2026-04-18 16:44:45.578+00
574f10c8-8543-4c04-ab76-684217d10e36	2026-04-18 16:45:49.828+00	Ingreso	Venta	5.00	\N	VENTA RÁPIDA: VENTA; 7.15 Libras MAIZ  - 	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:45:49.828+00	2026-04-18 16:45:49.828+00
168e3443-8290-467a-b38a-f54bbecde508	2026-04-18 16:47:02.064+00	Ingreso	Venta	20.50	\N	VENTA RÁPIDA: VENTA; 68.35 Libras MAIZ  - 	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:47:02.065+00	2026-04-18 16:47:02.065+00
a6d69f60-b292-489e-95e5-e19c1bc61053	2026-04-18 16:48:41.143+00	Egreso	Gasto General	1.00	b90aa842-533a-4eba-8bd7-e1e5aaf92bf9	\N	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:48:41.143+00	2026-04-18 16:48:41.143+00
a890546e-d57f-4e86-9c67-85ff641ca86f	2026-04-18 16:49:01.551+00	Egreso	Gasto General	5.00	ac9ca24a-f373-481d-a9c7-bcc416a9fd5e	\N	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:49:01.551+00	2026-04-18 16:49:01.551+00
081b8fd8-9362-485b-a013-bb391eb1182d	2026-04-18 16:49:13.589+00	Egreso	Gasto General	15.00	676174e6-08a9-48d3-95b3-521d24c4eb84	\N	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:49:13.589+00	2026-04-18 16:49:13.589+00
e6dcbd62-f7cc-4d79-8b3a-1f92d33e7763	2026-04-18 16:49:22.13+00	Egreso	Gasto General	12.00	af2b884c-2b9c-4c36-bf68-2fe7eb58a0e7	\N	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:49:22.13+00	2026-04-18 16:49:22.13+00
8919cf24-f7e1-4193-8f75-2e272245177d	2026-04-18 16:49:59.361+00	Egreso	Gasto General	16.50	4800a27a-a970-4f9a-90fa-2298648fc3fd	\N	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:49:59.361+00	2026-04-18 16:49:59.361+00
3a460e10-e3d2-46be-bbfd-7c196d3314f8	2026-04-18 16:50:19.189+00	Egreso	Gasto General	6.00	3ccccad2-7cef-4c47-a1aa-7122135399ea	\N	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:50:19.189+00	2026-04-18 16:50:19.189+00
6bf775a6-1a79-433f-b245-5ce403e59863	2026-04-18 16:51:16.181+00	Egreso	Gasto General	150.00	59b373b9-3806-4a10-a12d-dd715b486f84	\N	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 16:51:16.181+00	2026-04-18 16:51:16.181+00
4eefde02-87dc-4f12-be23-1100e65fa01d	2026-04-18 18:20:23.683+00	Egreso	Compra	54.23	84f8406d-a951-49bf-a2f2-cc2973ecd9dc	EFECTIVO: Liq LIQ-0000284 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 18:20:23.683+00	2026-04-18 18:20:23.683+00
2e2be515-9ad2-422d-ad77-989cfe238745	2026-04-18 18:21:42.281+00	Egreso	Gasto General	20.00	7b728986-e086-4d10-939d-2ff3b6079c74	\N	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 18:21:42.282+00	2026-04-18 18:21:42.282+00
71479876-12d0-4398-8036-bbb8e83bdf2b	2026-04-18 18:39:31.349+00	Egreso	Compra	5.82	6a196a2a-54e1-4563-ac5e-4c010a921742	EFECTIVO: Liq LIQ-0000285 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 18:39:31.35+00	2026-04-18 18:39:31.35+00
c58cd377-279f-4772-be96-65b1e1933968	2026-04-18 19:10:25.24+00	Egreso	Compra	22.41	b4a23599-2866-40a5-a02f-5ced779e1cc4	EFECTIVO: Liq LIQ-0000286 (Pago fruta + saldos ant.)	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 19:10:25.241+00	2026-04-18 19:10:25.241+00
14fb426c-8581-4310-93c4-0283023e4aa5	2026-04-18 19:11:44.151+00	Ingreso	Bancos	2.75	\N	INYECCIÓN: VENTA DE GAS	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 19:11:44.151+00	2026-04-18 19:11:44.151+00
27f58f49-8914-43df-8315-e9d56c0a50f5	2026-04-18 20:17:07.339+00	Egreso	Gasto General	2.50	8008951e-d4c3-4a0e-bd13-0c36bc998c42	\N	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 20:17:07.339+00	2026-04-18 20:17:07.339+00
a934c635-3fad-496c-917b-0f537b79cece	2026-04-18 20:17:22.288+00	Egreso	Gasto General	1.00	4605ce9d-f0da-4c9d-afeb-82e01f104b0a	\N	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 20:17:22.289+00	2026-04-18 20:17:22.289+00
344abd8e-8984-4816-9c19-540ed4eb50a1	2026-04-18 20:22:02.216+00	Egreso	Nomina	179.75	0d3ee999-d1f8-4da3-a5bf-931001c47e61	GENERAL: PAGO DE NÓMINA 	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 20:22:02.216+00	2026-04-18 20:22:02.216+00
75ab98a2-8404-4faa-b244-e1da9186d316	2026-04-18 20:26:52.171+00	Egreso	Gasto General	5.00	749ea495-3571-454b-88a1-b21078221f36	\N	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 20:26:52.171+00	2026-04-18 20:26:52.171+00
f2fbe0d0-e423-42d8-b8c0-1aa90126ebdd	2026-04-18 20:27:53.272+00	Ingreso	Venta	5.00	\N	VENTA RÁPIDA: VENTA; 7.15 Libras MARACUYA - 	6c8c3740-71f5-4332-be60-6092a6a4c4a9	2026-04-18 20:27:53.272+00	2026-04-18 20:27:53.272+00
7df86e53-c36d-4b70-b18e-c42f26f9ec22	2026-04-20 13:03:48.431+00	Egreso	Nomina	100.00	96133f9a-eabf-4abb-8a51-510791c353ef	GENERAL: PAGO DE NÓMINA 	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 13:03:48.431+00	2026-04-20 13:03:48.431+00
acd9eb80-57eb-4da9-94c7-eb3deddcabd9	2026-04-20 13:06:16.238+00	Egreso	Nomina	70.00	c0a4d7be-9b78-43d0-a061-cbdb2a73d444	GENERAL: PAGO DE NÓMINA 	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 13:06:16.238+00	2026-04-20 13:06:16.238+00
2356c960-ee27-4ca6-ad2c-671e01575d87	2026-04-20 13:06:36.678+00	Egreso	Nomina	60.00	ff0a2e06-bbba-45f0-81a1-2f8d54c26583	GENERAL: PAGO DE NÓMINA 	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 13:06:36.678+00	2026-04-20 13:06:36.678+00
dbd08439-7092-4bf1-a100-3ff5f56e1bf5	2026-04-20 13:07:17.667+00	Egreso	Nomina	120.00	ab5e1680-286a-43ae-96a7-087a8910740c	GENERAL: PAGO DE NÓMINA 	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 13:07:17.667+00	2026-04-20 13:07:17.667+00
06c8c512-ad65-471d-bf75-8cd0ebfe3530	2026-04-20 13:11:12.964+00	Egreso	Gasto General	80.00	fe339e01-b169-4a85-af13-a32dc7a44b79	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 13:11:12.964+00	2026-04-20 13:11:12.964+00
5924a848-7653-4a24-be69-47683a36a43e	2026-04-20 13:12:20.248+00	Egreso	Gasto General	50.80	10ced3f4-7056-49c3-8bba-2c4de70f206b	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 13:12:20.248+00	2026-04-20 13:12:20.248+00
5ab510a1-4173-4b4e-8699-b16cb84bc2b2	2026-04-20 13:14:18.772+00	Egreso	Gasto General	10.00	2800cbc2-6338-4ef5-8488-0c624d30d7dc	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 13:14:18.772+00	2026-04-20 13:14:18.772+00
7ad0054e-430b-4f12-978e-7b51a847dbf2	2026-04-20 13:14:47.537+00	Egreso	Gasto General	10.00	b21de181-1aaf-4d1f-a595-151bc7691280	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 13:14:47.537+00	2026-04-20 13:14:47.537+00
7d50e4ab-5d4b-4db8-8f78-ad9be3850dca	2026-04-20 18:25:58.952+00	Egreso	Compra	9.50	ec6a3dd4-1882-43b5-906c-1229f1aac3d8	EFECTIVO: Liq LIQ-0000287 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:25:58.953+00	2026-04-20 18:25:58.953+00
52cb6685-fb05-4685-af1b-5dc0391bda53	2026-04-20 18:26:21.643+00	Egreso	Compra	210.90	cb146e0b-6fdc-4bc5-81b2-66576dc0ba9f	EFECTIVO: Liq LIQ-0000288 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:26:21.643+00	2026-04-20 18:26:21.643+00
c30213ec-c754-4b4a-ba04-18fbae7a87c4	2026-04-20 18:26:46.299+00	Egreso	Compra	14.25	077c94da-c72e-4b45-8547-07b6ca0e7bfe	EFECTIVO: Liq LIQ-0000289 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:26:46.299+00	2026-04-20 18:26:46.299+00
8a0c0974-4e44-4d14-a3be-e90d06c66f91	2026-04-20 18:27:17.254+00	Egreso	Compra	9.51	f8ef0cd1-3968-4f51-a8ce-bde6194e7e85	EFECTIVO: Liq LIQ-0000290 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:27:17.254+00	2026-04-20 18:27:17.254+00
5d71bf02-9fd3-419d-a69c-a00a7c94ac62	2026-04-20 18:28:01.246+00	Egreso	Compra	15.14	29299a2d-1daa-4ea4-9c6e-e35e15eee98e	EFECTIVO: Liq LIQ-0000291 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:28:01.246+00	2026-04-20 18:28:01.246+00
83a24790-3a84-4a17-9750-c2ca3bfa7252	2026-04-20 18:28:27.369+00	Egreso	Compra	36.28	838d4d03-2adc-4946-b4b1-3c9d0d0de69f	EFECTIVO: Liq LIQ-0000292 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:28:27.37+00	2026-04-20 18:28:27.37+00
00d2ccf5-d000-4432-ac08-6b48f07c1a66	2026-04-20 18:28:55.244+00	Egreso	Compra	23.84	7d3ab548-3f06-405c-9354-fc2a1ada48d7	EFECTIVO: Liq LIQ-0000293 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:28:55.244+00	2026-04-20 18:28:55.244+00
24051792-9000-4a77-83f3-275c8cfbd0b6	2026-04-20 18:29:25.728+00	Egreso	Compra	10.74	9e5f4d44-482a-489d-84c0-974183ba4a8f	EFECTIVO: Liq LIQ-0000294 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:29:25.728+00	2026-04-20 18:29:25.728+00
306a22e8-407f-48bb-9b6d-fc53ded1596a	2026-04-20 18:29:51.981+00	Egreso	Compra	138.39	a58c3a78-bc1f-428c-bfb8-1bf34ebb6095	EFECTIVO: Liq LIQ-0000295 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:29:51.981+00	2026-04-20 18:29:51.981+00
ce715872-f727-4d73-8d58-2e60ec04b939	2026-04-20 18:30:35.244+00	Egreso	Compra	2.33	8f283c32-8456-4bda-a012-2a8ca23c8a0c	EFECTIVO: Liq LIQ-0000296 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:30:35.244+00	2026-04-20 18:30:35.244+00
dea9665b-99f4-4353-b401-580e36c652f3	2026-04-20 18:31:07.057+00	Egreso	Compra	284.89	c4e1ee5c-96a3-437f-b489-fdbc3302e592	EFECTIVO: Liq LIQ-0000297 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:31:07.057+00	2026-04-20 18:31:07.057+00
6527e210-59fe-4949-9c00-880862957862	2026-04-20 18:31:31.991+00	Egreso	Compra	265.54	aaa2bb63-6f82-4d5f-a444-11caa0eb7b1a	EFECTIVO: Liq LIQ-0000298 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:31:31.992+00	2026-04-20 18:31:31.992+00
0ac448f3-8ea9-4eaf-b3c5-6a005b663da7	2026-04-20 18:32:26.418+00	Egreso	Compra	2.33	88084d5f-78fa-4a7d-b97c-0c6103237e06	EFECTIVO: Liq LIQ-0000299 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:32:26.418+00	2026-04-20 18:32:26.418+00
82f0e791-4d10-419f-9606-bc6a4f69dd79	2026-04-20 18:32:47.168+00	Egreso	Compra	7.57	e9baae56-4a3c-4d22-bfaa-fe8e2eac324b	EFECTIVO: Liq LIQ-0000300 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:32:47.168+00	2026-04-20 18:32:47.168+00
35e74bbf-4f99-47a1-bf51-7eb03356a567	2026-04-20 18:34:16.643+00	Egreso	Gasto General	3.00	9d97f3fd-2ce4-4145-8201-5a2d4a7ebfa2	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:34:16.643+00	2026-04-20 18:34:16.643+00
0b803d18-e4b3-4156-9162-45080e0267e4	2026-04-20 18:34:43.348+00	Egreso	Gasto General	5.00	bfcae1c4-7a0f-4982-97ea-d6c095643e4e	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:34:43.348+00	2026-04-20 18:34:43.348+00
e02eabe7-29c8-43b6-b49c-10fdf16349e4	2026-04-20 18:34:59.592+00	Egreso	Gasto General	5.00	144da6de-cb57-4ea6-87d3-7baa16e5238c	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:34:59.592+00	2026-04-20 18:34:59.592+00
658905ef-1a81-4ad0-86ec-74e7df2f1fd1	2026-04-20 18:35:54.647+00	Egreso	Gasto General	1.00	a7aee9d9-fe50-4b53-b028-9b3289c007cc	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:35:54.647+00	2026-04-20 18:35:54.647+00
d218f71c-9a55-4d5a-891b-35b5d74875a2	2026-04-20 18:36:09.103+00	Egreso	Gasto General	28.00	d03b051d-a19f-45e7-bd65-0f3443045479	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:36:09.103+00	2026-04-20 18:36:09.103+00
fbe541fe-2171-4be5-b4bd-403924d4fb4c	2026-04-20 18:36:37.645+00	Egreso	Gasto General	30.00	90557d73-7dd1-4a04-9b71-c980833626b2	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:36:37.645+00	2026-04-20 18:36:37.645+00
f7e1fdc4-4e25-41c4-afeb-805d8694e3a0	2026-04-20 18:37:00.154+00	Egreso	Gasto General	7.00	3b7518a1-5545-4420-9d5f-53d75187e564	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:37:00.154+00	2026-04-20 18:37:00.154+00
5aa5538c-b115-4030-88d0-bc687749bced	2026-04-20 18:38:41.008+00	Ingreso	Bancos	70.00	\N	INYECCIÓN: PARA TRANSFERENCIA FERNANDO BER	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:38:41.008+00	2026-04-20 18:38:41.008+00
bd25812c-39bf-4e4b-8c89-22573277a3b6	2026-04-20 18:39:17.107+00	Ingreso	Bancos	100.00	\N	INYECCIÓN: MONEDAS 	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:39:17.107+00	2026-04-20 18:39:17.107+00
a00b1e27-0e9b-410c-bc25-67cc40e7e2d9	2026-04-20 18:53:46.846+00	Egreso	Compra	54.71	93cd60f0-6173-4813-bba1-9db69ed604d0	EFECTIVO: Liq LIQ-0000301 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 18:53:46.847+00	2026-04-20 18:53:46.847+00
d38477f7-fc4c-4937-8811-b7e69fa4f20c	2026-04-20 19:35:07.378+00	Egreso	Gasto General	3.00	6a5573c2-65d6-4d37-a7a1-b0d54a67c259	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 19:35:07.379+00	2026-04-20 19:35:07.379+00
3b695642-b60c-4a8f-95e8-c4ba148daaef	2026-04-20 19:35:40.005+00	Egreso	Gasto General	2.50	95b977f8-9065-4fd6-8a4d-45e150f69086	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 19:35:40.005+00	2026-04-20 19:35:40.005+00
b67ee77a-d03b-473b-a4cc-f07e34870f65	2026-04-20 19:37:05.482+00	Egreso	Compra	10.83	f492a289-02ac-4fbd-a052-475254942c08	EFECTIVO: Liq LIQ-0000302 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 19:37:05.482+00	2026-04-20 19:37:05.482+00
35ad8adb-937a-4a2d-9869-db6d8deecc46	2026-04-20 19:37:33.548+00	Egreso	Compra	14.55	abb6dda1-7878-4213-a278-f4741521a8e2	EFECTIVO: Liq LIQ-0000303 (Pago fruta + saldos ant.)	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 19:37:33.548+00	2026-04-20 19:37:33.548+00
2597bd91-1de6-41bb-8808-8a5bc2a67f03	2026-04-20 21:24:40.45+00	Egreso	Gasto General	20.00	f9aab540-c0d4-449b-9244-975f03fb9aa8	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 21:24:40.45+00	2026-04-20 21:24:40.45+00
71a9d5bb-d474-438a-84ac-2bde8bb26fbf	2026-04-20 21:25:35.924+00	Egreso	Gasto General	10.00	f23aa53b-5805-42e3-8dc4-441e7655b3ec	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 21:25:35.924+00	2026-04-20 21:25:35.924+00
ad783591-8da1-4f59-82f1-c85bf5ff0901	2026-04-20 21:53:47.486+00	Egreso	Gasto General	3.00	5226ba99-ebc8-4138-a99a-7dbc51522b96	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 21:53:47.487+00	2026-04-20 21:53:47.487+00
be67b75f-4848-49fa-9907-572f27aef464	2026-04-20 22:24:56.282+00	Egreso	Gasto General	3.00	cbff50c2-7c68-4513-8185-fb3a239ba9f3	\N	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 22:24:56.283+00	2026-04-20 22:24:56.283+00
1491a77c-fab1-412f-91d1-1f04a110a08d	2026-04-21 14:32:21.138+00	Egreso	Compra	10.80	f72e8890-194e-4bcf-b4aa-d4d622ba969e	EFECTIVO: Liq LIQ-0000304 (Pago fruta + saldos ant.)	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 14:32:21.139+00	2026-04-21 14:32:21.139+00
a4911c71-9e67-484c-a626-b888d8616b28	2026-04-21 14:32:45.041+00	Egreso	Compra	54.00	19888698-c282-4f42-bc96-26a83904054e	EFECTIVO: Liq LIQ-0000305 (Pago fruta + saldos ant.)	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 14:32:45.041+00	2026-04-21 14:32:45.041+00
b03b76ee-c334-4094-aada-7fe75864cc38	2026-04-21 14:33:08.387+00	Egreso	Compra	36.00	65638a21-f9bd-4f9d-b865-5063b0d88350	EFECTIVO: Liq LIQ-0000306 (Pago fruta + saldos ant.)	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 14:33:08.387+00	2026-04-21 14:33:08.387+00
e9f26024-322e-49bc-aa0d-34f8e1185a37	2026-04-21 14:33:52.204+00	Egreso	Compra	14.40	6eb4b6eb-7aaf-4b79-ab9f-8d7badaa6a10	EFECTIVO: Liq LIQ-0000307 (Pago fruta + saldos ant.)	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 14:33:52.204+00	2026-04-21 14:33:52.204+00
c604d45b-bc9f-4f4a-b863-6b50b7e82069	2026-04-21 20:05:25.344+00	Egreso	Compra	15.62	4062d69a-e302-42e4-af7c-c2a9ee2304c6	EFECTIVO: Liq LIQ-0000308 (Pago fruta + saldos ant.)	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 20:05:25.344+00	2026-04-21 20:05:25.344+00
454c73f9-f011-4509-a572-5d789830a270	2026-04-21 20:05:51.225+00	Egreso	Compra	1.12	3f244ee8-955b-4805-ae87-396335d8e5ed	EFECTIVO: Liq LIQ-0000309 (Pago fruta + saldos ant.)	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 20:05:51.225+00	2026-04-21 20:05:51.225+00
911b5dbc-2807-41d5-9de3-c2508d0ecc93	2026-04-21 20:08:55.162+00	Ingreso	Venta	26.00	\N	VENTA RÁPIDA: VENTA; 86.68 Libras MAIZ  - 	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 20:08:55.162+00	2026-04-21 20:08:55.162+00
dde5e922-61f7-47e4-9372-e72cdf23e24f	2026-04-21 20:09:55.104+00	Egreso	Gasto General	2.50	cadc02fa-e1f6-4e4d-8687-ef2ca0bd2073	\N	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 20:09:55.104+00	2026-04-21 20:09:55.104+00
3630839d-9e3b-44cc-b191-0fb423467ad0	2026-04-21 20:10:04.484+00	Egreso	Gasto General	6.00	f947d50f-fe4c-4a23-a4b2-1d05d603da7b	\N	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 20:10:04.484+00	2026-04-21 20:10:04.484+00
b1de0a2d-11f8-4abb-be77-d3ef282258ef	2026-04-21 20:10:13.762+00	Egreso	Gasto General	2.00	9240fed3-f9f5-407b-9ef7-abf3a05153bb	\N	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 20:10:13.762+00	2026-04-21 20:10:13.762+00
91c9ab05-694b-4431-8d62-2eba07f0a31b	2026-04-21 20:10:22.099+00	Egreso	Gasto General	1.00	2d65a73f-0f51-4345-beeb-a5106b4a05f5	\N	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 20:10:22.099+00	2026-04-21 20:10:22.099+00
540462e1-6898-4f81-8563-cd49c09fd309	2026-04-21 20:10:31.188+00	Egreso	Gasto General	0.50	5648d8f9-2250-4984-affd-cd30cb4bd842	\N	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 20:10:31.188+00	2026-04-21 20:10:31.188+00
539ea4bf-4a0b-4af8-ad04-5948bcef6853	2026-04-21 20:10:47.146+00	Egreso	Gasto General	10.00	1e6ff5bf-d85a-4b64-8e45-84ee4599807e	\N	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 20:10:47.146+00	2026-04-21 20:10:47.146+00
0d8a6d4d-8448-4fff-ab4c-ffa11f3a9383	2026-04-21 20:11:01.524+00	Egreso	Gasto General	42.20	0b27ed3c-58de-45d4-bf9b-5e0fc85d7ae5	\N	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 20:11:01.524+00	2026-04-21 20:11:01.524+00
7cc0b6d3-3c99-43e7-b6f1-b3c5f16bd9fe	2026-04-21 20:11:15.531+00	Egreso	Gasto General	2.50	ad4cbe00-38bd-4f27-951b-fe668fa3c32f	\N	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 20:11:15.531+00	2026-04-21 20:11:15.531+00
e80f230d-a6a7-4abd-ab75-c03646c4ac25	2026-04-21 21:44:26.578+00	Egreso	Compra	4.47	d2ac5cac-554f-4fa4-b146-8471735f6305	EFECTIVO: Liq LIQ-0000310 (Pago fruta + saldos ant.)	d1646688-7f88-4b32-9de5-bcc5cfe39c76	2026-04-21 21:44:26.578+00	2026-04-21 21:44:26.578+00
89503648-c55e-430e-89ba-9d7382969ab5	2026-04-22 16:08:25.246+00	Egreso	Compra	48.60	10c420f8-2bd8-44c1-8513-10f87eecbc65	EFECTIVO: Liq LIQ-0000311 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:08:25.246+00	2026-04-22 16:08:25.246+00
b2f2b844-2d7a-4701-8f4c-465ed1c6509b	2026-04-22 16:08:52.599+00	Egreso	Compra	36.00	0c92f7ee-2d4e-4f2a-8a0a-4414c87839c2	EFECTIVO: Liq LIQ-0000312 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:08:52.6+00	2026-04-22 16:08:52.6+00
bad0cfa4-bbd4-472a-b650-9b46c2f90986	2026-04-22 16:09:31.88+00	Egreso	Compra	32.40	2de77b24-081f-407f-afe6-5d41da0c6d08	EFECTIVO: Liq LIQ-0000313 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:09:31.88+00	2026-04-22 16:09:31.88+00
a8538b15-7f9c-4350-9039-5bdb67278bce	2026-04-22 16:11:04.277+00	Egreso	Compra	13.50	da169697-72b5-4438-b837-8fca2e12830b	EFECTIVO: Liq LIQ-0000314 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:11:04.277+00	2026-04-22 16:11:04.277+00
19643f1b-5695-4cf3-bf6c-056d23ecb8d9	2026-04-22 16:11:56.35+00	Egreso	Compra	72.00	24ef2bf8-6b75-4922-880f-debbd8f28718	EFECTIVO: Liq LIQ-0000315 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:11:56.35+00	2026-04-22 16:11:56.35+00
5149a5ee-2f83-4b7f-a59d-0d119740d4e6	2026-04-22 16:12:34.274+00	Egreso	Compra	16.20	ba173e4d-c398-466b-802d-4fba343932ab	EFECTIVO: Liq LIQ-0000316 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:12:34.274+00	2026-04-22 16:12:34.274+00
dfa9d3aa-9412-44ba-9d6d-8445ec38326d	2026-04-22 16:19:44.141+00	Egreso	Compra	347.99	9182a162-697c-4d3d-80d5-df70b1d4cf5b	EFECTIVO: Liq LIQ-0000317 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:19:44.141+00	2026-04-22 16:19:44.141+00
53c8094e-8bb5-4fa4-a9c8-0ec56d3e125d	2026-04-22 16:20:09.245+00	Egreso	Compra	93.90	51004751-0c13-4d1f-a48b-6683056dc52c	EFECTIVO: Liq LIQ-0000318 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:20:09.245+00	2026-04-22 16:20:09.245+00
26fb4b19-e21f-4e57-b022-d16f8d6fec7b	2026-04-22 16:20:43.452+00	Egreso	Compra	29.54	741b65b5-c114-4af6-8f4a-22a9f642ce87	EFECTIVO: Liq LIQ-0000319 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:20:43.452+00	2026-04-22 16:20:43.452+00
46b548ba-05e7-4daa-907f-63fede7f14e8	2026-04-22 16:21:10.574+00	Egreso	Compra	46.91	23fb2688-8864-40ec-af64-3a514d25ee9f	EFECTIVO: Liq LIQ-0000320 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:21:10.574+00	2026-04-22 16:21:10.574+00
81fa34b1-3ebc-4842-8a1b-ca75beb2bb2b	2026-04-22 16:22:11.961+00	Egreso	Compra	186.32	c70fdb82-e86e-45de-b502-40762904ff96	EFECTIVO: Liq LIQ-0000321 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:22:11.961+00	2026-04-22 16:22:11.961+00
c5c80f3b-d5be-4091-9637-c80d88a83bf5	2026-04-22 16:22:37.374+00	Egreso	Compra	16.71	92207935-fe77-4e60-ad07-69a1e6cb5088	EFECTIVO: Liq LIQ-0000322 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:22:37.374+00	2026-04-22 16:22:37.374+00
3e561be9-34cc-4c14-9dc3-062145001af2	2026-04-22 16:23:09.945+00	Egreso	Compra	154.82	4ad33dd9-5416-4923-9f8a-752185d65d8a	EFECTIVO: Liq LIQ-0000323 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:23:09.945+00	2026-04-22 16:23:09.945+00
2ad64e06-021f-4d23-a21a-f488d657ad47	2026-04-22 16:23:45.901+00	Egreso	Compra	79.62	01a96358-40e6-4495-9bf9-152614b63b24	EFECTIVO: Liq LIQ-0000324 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:23:45.901+00	2026-04-22 16:23:45.901+00
2e44dbdd-2573-4a3b-8cc4-ed80d115e0f0	2026-04-22 16:24:17.367+00	Egreso	Compra	10.67	3073efcb-b310-4754-83ba-f62b758af0b7	EFECTIVO: Liq LIQ-0000325 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:24:17.367+00	2026-04-22 16:24:17.367+00
1088fc11-2d8b-4770-95a1-673132917322	2026-04-22 16:24:44.045+00	Egreso	Compra	121.44	6b1c55fb-3348-4d46-baca-cf413f7d59a8	EFECTIVO: Liq LIQ-0000326 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:24:44.045+00	2026-04-22 16:24:44.045+00
f608f877-4b74-424b-944a-edc3d3fe5153	2026-04-22 16:25:10.546+00	Egreso	Compra	22.31	41d36de8-c883-4cf2-9afc-c0c92f46d987	EFECTIVO: Liq LIQ-0000327 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:25:10.546+00	2026-04-22 16:25:10.546+00
a88850b4-3613-4042-85d1-4d68f8d19b1a	2026-04-22 16:26:02.298+00	Ingreso	Bancos	120.00	\N	INYECCIÓN: DEVOLUCION DE ROSA	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:26:02.298+00	2026-04-22 16:26:02.298+00
47f19f42-b855-4bca-84db-8bfb5a4b02e4	2026-04-22 16:26:19.403+00	Ingreso	Bancos	5.00	\N	INYECCIÓN: MONEDAS DE 0,05 CTVS	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:26:19.403+00	2026-04-22 16:26:19.403+00
36d56e33-3159-40c4-804a-7ff39af4cc30	2026-04-22 16:26:35.114+00	Ingreso	Bancos	50.00	\N	INYECCIÓN: MONEDAS DE O,50 CTVS	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:26:35.114+00	2026-04-22 16:26:35.114+00
d3d5b52b-5990-4aec-8fcd-d9b0b8ca45a7	2026-04-22 16:26:58.769+00	Egreso	Gasto General	7.00	8df38bfd-bac2-4114-8f1a-9518a8b600df	\N	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:26:58.769+00	2026-04-22 16:26:58.769+00
2e6013ba-cdc0-4f9d-adbf-d5da7299cf3c	2026-04-22 16:27:09.458+00	Egreso	Gasto General	1000.00	dc01a0ba-85d7-4d11-a937-73eefcf461d2	\N	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:27:09.458+00	2026-04-22 16:27:09.458+00
841296fb-679a-440f-9ce5-ae418f86f872	2026-04-22 16:27:17.852+00	Egreso	Gasto General	1.00	bceceaf9-d2c8-417c-a180-8d8b0fde4fa4	\N	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:27:17.852+00	2026-04-22 16:27:17.852+00
85cec638-1ce0-4925-a383-69a20cd828e7	2026-04-22 16:27:35.946+00	Egreso	Gasto General	1.00	0d699bb7-f9bb-4e22-9c19-2af28bd12950	\N	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:27:35.946+00	2026-04-22 16:27:35.946+00
43c4af21-7eeb-41af-9f0c-a6abe32f7a92	2026-04-22 16:27:55.645+00	Egreso	Gasto General	7.00	6831261a-1ef4-4ba0-8b2f-80e4e455990d	\N	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 16:27:55.646+00	2026-04-22 16:27:55.646+00
1df77878-30dd-47c8-b053-62c417d64a7c	2026-04-22 18:52:11.425+00	Egreso	Compra	10.48	3c21d9a9-711b-449e-b8ba-2122acb13a7a	EFECTIVO: Liq LIQ-0000328 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 18:52:11.426+00	2026-04-22 18:52:11.426+00
9a77f3bf-aea8-40c7-a3e1-30d8be25c9df	2026-04-22 22:08:31.95+00	Egreso	Gasto General	3.00	ada785a7-0be7-4631-8dd5-6a283519d7cd	\N	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 22:08:31.95+00	2026-04-22 22:08:31.95+00
20e2ceef-caac-4666-8afa-2b2ad7e9f42b	2026-04-22 22:08:46.09+00	Egreso	Gasto General	2.50	dd692976-1a59-47b7-8634-49ab36763ab6	\N	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 22:08:46.09+00	2026-04-22 22:08:46.09+00
ac4a94ea-fd0f-45a4-99f1-8403d66cd2e3	2026-04-22 22:13:58.359+00	Egreso	Compra	17.46	75ff738d-e8fb-466d-9147-9c38d8a3dd4a	EFECTIVO: Liq LIQ-0000329 (Pago fruta + saldos ant.)	4f2a405c-467e-451e-bee2-e445d332d1ff	2026-04-22 22:13:58.359+00	2026-04-22 22:13:58.359+00
10189120-8d05-4d27-a7d3-a6b5e01f0e0f	2026-04-23 16:14:38.341+00	Egreso	Compra	153.00	a83ffaa1-1ad0-41d6-a515-3e11b8a1cf68	EFECTIVO: Liq LIQ-0000330 (Pago fruta + saldos ant.)	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 16:14:38.341+00	2026-04-23 16:14:38.341+00
a8d18234-39ea-4dfb-9db0-6cd26da29722	2026-04-23 16:19:47.263+00	Egreso	Compra	24.06	29135cb7-eae5-4b68-9605-db3db12f8e1a	EFECTIVO: Liq LIQ-0000331 (Pago fruta + saldos ant.)	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 16:19:47.263+00	2026-04-23 16:19:47.263+00
76d6d86c-4b06-47c1-80f1-b9a9324def76	2026-04-23 16:20:59.558+00	Egreso	Compra	6.98	41f5865e-1f22-4b88-86d4-e73b1895e666	EFECTIVO: Liq LIQ-0000332 (Pago fruta + saldos ant.)	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 16:20:59.558+00	2026-04-23 16:20:59.558+00
b7f21eac-1f56-437d-ada6-a52e99c12bb9	2026-04-23 19:19:04.3+00	Egreso	Compra	61.35	8f1b7c8c-7a0c-428b-8453-172372ceb04c	EFECTIVO: Liq LIQ-0000333 (Pago fruta + saldos ant.)	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 19:19:04.3+00	2026-04-23 19:19:04.3+00
b5603b1a-bdeb-4494-ac0c-205980def3be	2026-04-23 19:19:58.173+00	Egreso	Compra	84.88	41cd734a-127f-43c3-9c76-9b5b320ad2a8	EFECTIVO: Liq LIQ-0000334 (Pago fruta + saldos ant.)	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 19:19:58.174+00	2026-04-23 19:19:58.174+00
72704e96-f4ea-457c-a580-1155c9df19f0	2026-04-23 19:20:35.77+00	Egreso	Compra	87.30	9d28c3af-36ad-4e2c-80ec-68f0bfda7d52	EFECTIVO: Liq LIQ-0000335 (Pago fruta + saldos ant.)	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 19:20:35.77+00	2026-04-23 19:20:35.77+00
a43f3029-7ab9-489b-9e49-6e7cf7e1a93f	2026-04-23 19:21:10.242+00	Egreso	Compra	72.32	cf098947-1f6e-4c98-a7d6-ada331c0b22c	EFECTIVO: Liq LIQ-0000336 (Pago fruta + saldos ant.)	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 19:21:10.242+00	2026-04-23 19:21:10.242+00
4ff91d3b-ff51-4ffd-9ff3-db943288f738	2026-04-23 19:22:09.157+00	Egreso	Gasto General	3.00	7e5204c6-73dd-43a0-93cc-1c3876af396d	\N	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 19:22:09.157+00	2026-04-23 19:22:09.157+00
00bce0f7-b3b7-47f6-b9b5-917d53d49b59	2026-04-23 19:22:33.578+00	Egreso	Gasto General	5.00	700a6e8e-2e81-41db-b769-8ddd76de54c2	\N	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 19:22:33.578+00	2026-04-23 19:22:33.578+00
9e66daa0-3611-45dc-a428-fd9ef80ffaf6	2026-04-23 19:22:45.741+00	Egreso	Gasto General	3.00	732e2b37-ce8d-40f0-b21c-937d2bfa31f9	\N	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 19:22:45.741+00	2026-04-23 19:22:45.741+00
87f003c9-9089-4d8e-aef5-a4d91db7ed78	2026-04-23 19:23:39.831+00	Egreso	Gasto General	7.00	5dd5bfda-9d92-437d-b5d4-83db7014e013	\N	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 19:23:39.831+00	2026-04-23 19:23:39.831+00
a89b57be-64a3-4973-bf2f-eae2089b131e	2026-04-23 19:24:49.87+00	Egreso	Gasto General	2.50	0ea0259d-4bb7-4de6-ab5e-273251919446	\N	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 19:24:49.871+00	2026-04-23 19:24:49.871+00
8907891e-0e96-4e39-8cbf-05be5ecc86cb	2026-04-23 20:20:46.637+00	Ingreso	Venta	2.00	\N	VENTA RÁPIDA: VENTA; 2.86 Libras MARACUYA - 	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 20:20:46.638+00	2026-04-23 20:20:46.638+00
b744cbf0-f38a-41b4-a48d-e815d4eb7a23	2026-04-23 21:45:34.947+00	Egreso	Gasto General	8.40	d96017d7-dc3f-4c2e-aefb-3570ab66cff9	\N	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 21:45:34.947+00	2026-04-23 21:45:34.947+00
38eea23c-25ad-41b7-8b3d-975ca393c6b9	2026-04-23 22:07:44.34+00	Egreso	Compra	9.51	65e19210-8f3b-45ee-a61a-8caf7e9e4299	EFECTIVO: Liq LIQ-0000337 (Pago fruta + saldos ant.)	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 22:07:44.34+00	2026-04-23 22:07:44.34+00
93482a40-c698-4ea4-b14d-67e3126fde7e	2026-04-23 22:25:20.864+00	Egreso	Gasto General	21.40	78f633a3-1460-4486-ac8d-eda100b8649a	\N	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 22:25:20.865+00	2026-04-23 22:25:20.865+00
12e9aa8a-4b00-4b46-a108-c6c35d2581bc	2026-04-23 22:25:37.439+00	Egreso	Gasto General	3.00	7ca8b7cf-efb2-4a73-a381-ebbcc565816d	\N	8c889ae9-fb24-4043-82da-6b7de9f477c7	2026-04-23 22:25:37.439+00	2026-04-23 22:25:37.439+00
e3c4401e-3ada-4c02-9b20-5999fb3ef7e3	2026-04-24 16:11:46.947+00	Egreso	Compra	6.64	f8d85c75-07cd-40e8-9a0f-896c6c3adce1	EFECTIVO: Liq LIQ-0000338 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:11:46.947+00	2026-04-24 16:11:46.947+00
305365ce-38f6-4185-87c9-4ef53a5143ae	2026-04-24 16:12:25.279+00	Egreso	Compra	13.00	4f44eeac-3703-4f4e-b578-090da867f6cc	EFECTIVO: Liq LIQ-0000339 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:12:25.279+00	2026-04-24 16:12:25.279+00
07c1b0db-546f-415e-b312-1bebf609785c	2026-04-24 16:12:50.539+00	Egreso	Compra	20.00	518c02f2-738f-440f-a3e8-ef4973d45af6	EFECTIVO: Liq LIQ-0000340 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:12:50.54+00	2026-04-24 16:12:50.54+00
1e463cd7-6c65-4daf-aad8-7c5899e6071c	2026-04-24 16:13:52.553+00	Egreso	Compra	10.48	607a7eae-5530-4ead-8ac2-9e3d7693bf86	EFECTIVO: Liq LIQ-0000341 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:13:52.553+00	2026-04-24 16:13:52.553+00
a5dfd0cc-6503-4402-a6c3-d039fb80d03c	2026-04-24 16:14:28.045+00	Egreso	Compra	162.96	e2eb8312-c8e4-43f9-a19d-a0a1f8bf77b5	EFECTIVO: Liq LIQ-0000342 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:14:28.045+00	2026-04-24 16:14:28.045+00
005efcbc-93ba-443d-a95d-947b5bf4c2d7	2026-04-24 16:14:55.341+00	Egreso	Compra	249.32	4c122956-9835-479b-b840-53b9ba744a8a	EFECTIVO: Liq LIQ-0000343 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:14:55.341+00	2026-04-24 16:14:55.341+00
21e008f8-52da-4de6-88d6-774960e3afb0	2026-04-24 16:15:40.273+00	Egreso	Compra	110.20	994992f1-a279-495f-8cd9-d30d7a5ecaa1	EFECTIVO: Liq LIQ-0000344 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:15:40.273+00	2026-04-24 16:15:40.273+00
746b4b8d-50a4-4cc9-90f6-343f7faddb22	2026-04-24 16:16:14.901+00	Egreso	Compra	43.19	c3de2cff-05d9-40f9-919a-d4ef73c97adb	EFECTIVO: Liq LIQ-0000345 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:16:14.902+00	2026-04-24 16:16:14.902+00
c3d2ae2d-61f4-4860-80fb-3a1dfe4ecb3f	2026-04-24 16:16:40.042+00	Egreso	Compra	28.52	48bfd55a-d6dc-48af-9152-e5108edd2310	EFECTIVO: Liq LIQ-0000346 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:16:40.042+00	2026-04-24 16:16:40.042+00
5a38dc7b-66e4-4cf1-9808-6482f62196ce	2026-04-24 16:18:15.048+00	Egreso	Compra	17.51	5184eb37-cc60-40f9-8b16-240a013fe17a	EFECTIVO: Liq LIQ-0000347 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:18:15.049+00	2026-04-24 16:18:15.049+00
ce7730a7-bfa1-4b93-a40a-f2971c10bf13	2026-04-24 16:19:17.996+00	Ingreso	Bancos	50.00	\N	INYECCIÓN: MONEDAS	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:19:17.997+00	2026-04-24 16:19:17.997+00
31937009-29af-437e-b1fa-751f1e984dff	2026-04-24 16:23:33.649+00	Egreso	Gasto General	5.00	978abbcd-4df7-4b2a-9c3b-e34de2d226ca	\N	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:23:33.649+00	2026-04-24 16:23:33.649+00
2b20a86b-2542-4f29-8afb-233f3bd573fb	2026-04-24 16:23:54.468+00	Egreso	Gasto General	6.00	dd8ff10b-11d3-4a1e-8246-dbb5194bf004	\N	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:23:54.468+00	2026-04-24 16:23:54.468+00
e8dccff0-a3ef-465e-baf3-0d0f5c86b3e4	2026-04-24 16:24:46.841+00	Egreso	Gasto General	2.00	f39d5ef8-2f3e-47a7-88c8-dd872d812006	\N	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:24:46.841+00	2026-04-24 16:24:46.841+00
5adc6e05-7800-4691-9f0f-4fe1bd4a2678	2026-04-20 21:40:52.05+00	Egreso	Préstamo	60.00	ad41c04b-4e9e-4132-8156-ed4b25a0bf8f	EDICIÓN: PRESTO LUNES 20 DE ABRIL Y EL VIERNES 24 DE ABRIL	4b0d8a84-a254-4e20-a4b0-09c251615301	2026-04-20 21:40:52.05+00	2026-04-24 16:25:19.124+00
382ff367-5976-48c4-ac5f-499d40b1441e	2026-04-24 16:46:27.142+00	Egreso	Compra	5.82	68d0931d-f383-4c7c-bcbe-4b574dc57a65	EFECTIVO: Liq LIQ-0000348 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 16:46:27.142+00	2026-04-24 16:46:27.142+00
6cde49ba-1f62-47d0-a0fe-e1e32e6ab0f3	2026-04-24 17:38:37.039+00	Egreso	Compra	19.79	749a8d09-7bfa-4c9d-9534-b61de4abcc0d	EFECTIVO: Liq LIQ-0000349 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 17:38:37.04+00	2026-04-24 17:38:37.04+00
7db360c4-87bf-44d7-bc6c-e83dbe8c03ac	2026-04-24 17:39:44.55+00	Egreso	Compra	60.63	dff66696-2db6-4bbd-86af-372fbcfeb6fc	EFECTIVO: Liq LIQ-0000350 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 17:39:44.55+00	2026-04-24 17:39:44.55+00
1ef9e221-9453-49d0-85a1-4b7a2acb9b95	2026-04-24 17:40:49.253+00	Egreso	Gasto General	10.50	bf162c54-1fa6-4c66-be87-26cf4d820f96	\N	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 17:40:49.253+00	2026-04-24 17:40:49.253+00
3b41ebe0-4fc6-4458-9ba0-a6bdf0851a9b	2026-04-24 17:42:17.521+00	Ingreso	Venta	5.00	\N	VENTA RÁPIDA: VENTA; 7.7 Libras MARACUYA - 	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 17:42:17.521+00	2026-04-24 17:42:17.521+00
83804e62-a60a-49d5-ae28-d01fd0f84534	2026-04-24 18:52:45.038+00	Egreso	Compra	13.96	9b195358-10f7-4fbd-985a-7c6d2ab8ce56	EFECTIVO: Liq LIQ-0000351 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 18:52:45.038+00	2026-04-24 18:52:45.038+00
8208badb-d2f9-46dc-96c4-920b23598324	2026-04-24 18:53:37.443+00	Egreso	Gasto General	2.50	d38f191e-9844-42ac-ad91-28bb9fc4beac	\N	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 18:53:37.443+00	2026-04-24 18:53:37.443+00
2e9daa8c-d057-429b-b5b7-033f52cbe858	2026-04-24 18:53:52.647+00	Egreso	Gasto General	47.00	d28af719-2ea1-4c83-b2df-93498040c98d	\N	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 18:53:52.647+00	2026-04-24 18:53:52.647+00
0dfecc04-3557-4974-9509-eb00827b7bf1	2026-04-24 18:54:13.996+00	Egreso	Gasto General	20.00	aa8d5d40-57be-48d2-b3fa-246e8dad035b	\N	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 18:54:13.996+00	2026-04-24 18:54:13.996+00
dbadf2e5-f771-4b15-980b-72b2f66f8662	2026-04-24 18:54:25.979+00	Egreso	Gasto General	20.00	871d46a4-ee22-4e69-82b9-ba485c6d4014	\N	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 18:54:25.98+00	2026-04-24 18:54:25.98+00
faeda922-a6ce-43ce-88c7-037d534a0675	2026-04-24 19:30:48.838+00	Egreso	Compra	2.00	a35899d7-f388-4150-a913-ca1cf4da3b5c	EFECTIVO: Liq LIQ-0000352 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 19:30:48.838+00	2026-04-24 19:30:48.838+00
f29e02f4-4643-444d-8ed1-6a31b5026b35	2026-04-24 20:56:37.688+00	Ingreso	Bancos	2900.00	\N	INYECCIÓN: EFECTIVO PARA TRANSFERENCIA DR	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 20:56:37.689+00	2026-04-24 20:56:37.689+00
6de4254c-9ab7-474d-9cb6-50b20a17d886	2026-04-24 21:16:07.737+00	Egreso	Compra	31.04	a655643f-b65a-4419-97d3-b82ff0177bc3	EFECTIVO: Liq LIQ-0000353 (Pago fruta + saldos ant.)	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 21:16:07.738+00	2026-04-24 21:16:07.738+00
7b1faa89-0314-4797-9ee6-a4a6caca3f7e	2026-04-24 21:16:51.629+00	Ingreso	Bancos	2.75	\N	INYECCIÓN: VENTA DE GAS 	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 21:16:51.629+00	2026-04-24 21:16:51.629+00
4b0e39b9-b4cf-4039-8417-979f5d84f2af	2026-04-24 22:40:19.65+00	Egreso	Gasto General	10.00	a0707224-d2e3-4c3c-8048-1a56792a263f	\N	14920715-dbb2-4c21-92cf-ef7e5c814643	2026-04-24 22:40:19.651+00	2026-04-24 22:40:19.651+00
\.


--
-- Data for Name: Nominas; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Nominas" (id, codigo, "fechaPago", "tipoPeriodo", "sueldoBase", "unidadesTrabajadas", "subTotal", bono, "descuentoGeneral", "descuentoPrestamo", "totalPagar", "PersonaId", "UsuarioId", "PrestamoId", "createdAt", "updatedAt") FROM stdin;
6f692f2b-cef9-4a41-bb8c-71c8e5f11f14	NOM-0000001	2026-03-28 20:33:26.905+00	Semanal	120.00	7.00	120.00	0.00	0.00	10.00	110.00	db2ae49f-73e8-4c33-8efb-b40274ab0c99	436e223e-918f-4b80-b807-69d1ab32a934	faee69a7-1a45-40f9-b516-4aebb12630ff	2026-03-28 20:33:26.905+00	2026-03-28 20:33:26.905+00
93b0094b-78c9-4ae1-8480-48861be72cbf	NOM-0000002	2026-04-06 16:04:52.005+00	Semanal	250.00	7.00	250.00	0.00	0.00	0.00	250.00	e1a35616-8c9b-4fe3-9483-12190ccd9247	436e223e-918f-4b80-b807-69d1ab32a934	\N	2026-04-06 16:04:52.006+00	2026-04-06 16:04:52.006+00
402a6a09-ec99-4966-8821-9c95f82d733c	NOM-0000003	2026-04-06 16:07:13.488+00	Semanal	91.65	7.00	91.65	0.00	0.00	0.00	91.65	dddd9a32-f32d-4c49-9bb4-909e72754ffe	436e223e-918f-4b80-b807-69d1ab32a934	\N	2026-04-06 16:07:13.489+00	2026-04-06 16:07:13.489+00
d4b85e10-2dd2-49a1-b261-f6e97b3326e1	NOM-0000004	2026-04-06 16:07:29.888+00	Semanal	120.00	7.00	120.00	0.00	0.00	0.00	120.00	03aec8e2-aa63-49c5-8dcc-2605c6961a41	436e223e-918f-4b80-b807-69d1ab32a934	\N	2026-04-06 16:07:29.888+00	2026-04-06 16:07:29.888+00
d4fe84f7-aa69-48e9-bee2-649923a3cc96	NOM-0000005	2026-04-06 16:09:04.858+00	Semanal	120.00	7.00	120.00	0.00	0.00	60.00	60.00	33feadd6-8b06-4ddd-a105-385094cdc11b	436e223e-918f-4b80-b807-69d1ab32a934	1ba855a5-fd2b-49cd-bc72-640ee32f0c66	2026-04-06 16:09:04.858+00	2026-04-06 16:09:04.858+00
cd137367-9c2a-48bb-8a7f-8cb23623e66a	NOM-0000006	2026-04-13 12:49:12.699+00	Semanal	120.00	7.00	120.00	0.00	0.00	0.00	120.00	60ab9824-90ef-47c5-87d4-c2ac7b46c065	436e223e-918f-4b80-b807-69d1ab32a934	47328410-6909-4477-9ee5-021363014ca6	2026-04-13 12:49:12.699+00	2026-04-13 12:49:12.699+00
048cb2f6-c074-4f8b-961a-5f0a1103cada	NOM-0000007	2026-04-13 12:49:25.27+00	Semanal	100.00	7.00	100.00	0.00	0.00	0.00	100.00	dddd9a32-f32d-4c49-9bb4-909e72754ffe	436e223e-918f-4b80-b807-69d1ab32a934	\N	2026-04-13 12:49:25.27+00	2026-04-13 12:49:25.27+00
de1cd6ff-38d1-49da-906d-730aafdfe46e	NOM-0000008	2026-04-13 12:49:45.273+00	Semanal	120.00	7.00	120.00	0.00	0.00	60.00	60.00	33feadd6-8b06-4ddd-a105-385094cdc11b	436e223e-918f-4b80-b807-69d1ab32a934	b8c041cd-68c1-49f5-9fc8-029dcdc204bf	2026-04-13 12:49:45.274+00	2026-04-13 12:49:45.274+00
4fb81fa8-b6e7-4d68-9b6f-fc65c5d31864	NOM-0000009	2026-04-13 12:49:56.388+00	Semanal	120.00	7.00	120.00	0.00	0.00	0.00	120.00	03aec8e2-aa63-49c5-8dcc-2605c6961a41	436e223e-918f-4b80-b807-69d1ab32a934	\N	2026-04-13 12:49:56.388+00	2026-04-13 12:49:56.388+00
06aee00e-744f-45c6-9e72-49f2ee4a37cb	NOM-0000010	2026-04-13 12:50:14.132+00	Semanal	250.00	7.00	250.00	0.00	0.00	0.00	250.00	e1a35616-8c9b-4fe3-9483-12190ccd9247	436e223e-918f-4b80-b807-69d1ab32a934	\N	2026-04-13 12:50:14.132+00	2026-04-13 12:50:14.132+00
0d3ee999-d1f8-4da3-a5bf-931001c47e61	NOM-0000011	2026-04-18 20:22:02.181+00	Jornal	250.00	1.00	250.00	0.00	0.00	70.25	179.75	e1a35616-8c9b-4fe3-9483-12190ccd9247	436e223e-918f-4b80-b807-69d1ab32a934	d9a2c348-abd1-48b2-a9ae-e2e5c4ad00d8	2026-04-18 20:22:02.181+00	2026-04-18 20:22:02.181+00
96133f9a-eabf-4abb-8a51-510791c353ef	NOM-0000012	2026-04-20 13:03:48.394+00	Semanal	120.00	7.00	120.00	0.00	0.00	20.00	100.00	60ab9824-90ef-47c5-87d4-c2ac7b46c065	436e223e-918f-4b80-b807-69d1ab32a934	47328410-6909-4477-9ee5-021363014ca6	2026-04-20 13:03:48.394+00	2026-04-20 13:03:48.394+00
c0a4d7be-9b78-43d0-a061-cbdb2a73d444	NOM-0000013	2026-04-20 13:06:16.193+00	Semanal	70.00	7.00	70.00	0.00	0.00	0.00	70.00	dddd9a32-f32d-4c49-9bb4-909e72754ffe	436e223e-918f-4b80-b807-69d1ab32a934	\N	2026-04-20 13:06:16.194+00	2026-04-20 13:06:16.194+00
ff0a2e06-bbba-45f0-81a1-2f8d54c26583	NOM-0000014	2026-04-20 13:06:36.642+00	Semanal	120.00	7.00	120.00	0.00	0.00	60.00	60.00	33feadd6-8b06-4ddd-a105-385094cdc11b	436e223e-918f-4b80-b807-69d1ab32a934	d016dce3-4eb5-4646-bcec-80ae79b18d52	2026-04-20 13:06:36.643+00	2026-04-20 13:06:36.643+00
ab5e1680-286a-43ae-96a7-087a8910740c	NOM-0000015	2026-04-20 13:07:17.595+00	Semanal	120.00	7.00	120.00	0.00	0.00	0.00	120.00	03aec8e2-aa63-49c5-8dcc-2605c6961a41	436e223e-918f-4b80-b807-69d1ab32a934	\N	2026-04-20 13:07:17.595+00	2026-04-20 13:07:17.595+00
\.


--
-- Data for Name: Personas; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Personas" (id, "nombreCompleto", "tipoIdentificacion", "numeroIdentificacion", tipo, telefono, correo, direccion, "estaActivo", "fechaCreacion", "createdAt", "updatedAt", "fechaNacimiento") FROM stdin;
881c21da-80e1-40c5-87b3-6896cfc21c2f	JUAN PEREZ	Cédula		Productor		\N		t	2026-03-30 18:13:33.962+00	2026-03-30 18:14:48.242+00	2026-03-30 18:14:48.242+00	\N
f45aed61-5473-413a-9eb3-efb718c6c06d	S/N	Cédula	0967148226	Productor		\N		t	2026-03-28 20:23:48.191+00	2026-03-28 20:26:02.167+00	2026-03-30 19:27:24.209+00	\N
b6ff72fa-3ed3-4809-9e95-501b809c9950	ANTONIO MORA COOL 	Cédula	1302514821	Productor	0996724723	\N		t	2026-03-31 13:56:52.864+00	2026-03-31 13:57:56.991+00	2026-03-31 13:58:23.71+00	\N
33feadd6-8b06-4ddd-a105-385094cdc11b	JIMMY HOLGUIN CHOMPOY 	Cédula	1313398107	Trabajador	0999454286	\N	VIA MANABI 	t	2026-03-31 16:19:04.418+00	2026-03-31 16:32:23.168+00	2026-03-31 16:32:23.168+00	1986-06-11
03aec8e2-aa63-49c5-8dcc-2605c6961a41	XIMENA VERA CHEVEZ	Cédula	0928080035	Trabajador	0939042692	\N	VIA GUAYAS 	t	2026-03-30 18:13:33.962+00	2026-03-30 18:30:52.452+00	2026-03-31 16:37:24.628+00	2003-07-10
e1a35616-8c9b-4fe3-9483-12190ccd9247	STEVEN VERA PINCAY 	Cédula	1311248940	Trabajador	0958906328	\N	VIA MANABI 	t	2026-03-30 18:13:33.962+00	2026-03-30 18:30:22.81+00	2026-03-31 16:38:20.325+00	1998-01-27
dddd9a32-f32d-4c49-9bb4-909e72754ffe	SANDRO PAUL PINARGOTE PINARGOTE 	Cédula	0928080365	Trabajador	0939952740	\N	VIA GUAYAS	t	2026-03-31 20:05:25.324+00	2026-03-31 20:43:39.791+00	2026-03-31 20:43:39.791+00	2003-11-19
60ab9824-90ef-47c5-87d4-c2ac7b46c065	JOSE VICENTE PICO QUIROZ	Cédula	1303949802	Trabajador	0939102308	\N	VIA MANABI	t	2026-03-31 20:05:25.324+00	2026-03-31 21:16:40.149+00	2026-03-31 21:16:40.149+00	1959-04-15
c1a349f2-0ff5-4a39-acf0-78f61c45b817	GEOVANNY MEJIA 	Cédula	0919079533	Productor		\N		t	2026-04-02 20:29:02.58+00	2026-04-02 20:29:45.886+00	2026-04-02 20:29:45.886+00	\N
9a08db95-c4ff-45bf-a4f8-2191222f8946	ERWIN JULIAN SANCHEZ BERMELLO	Cédula	0925426041	Productor		\N	LA PUNTILLA	t	2026-04-02 22:06:50.845+00	2026-04-02 22:11:08.14+00	2026-04-02 22:11:08.14+00	\N
49402d3e-eca4-497f-a67a-50c740883dd3	ANDRES GILER 	RUC	0928342534001	Comprador		\N		t	2026-04-07 14:38:20.98+00	2026-04-07 14:51:03.342+00	2026-04-07 14:51:03.342+00	\N
db2ae49f-73e8-4c33-8efb-b40274ab0c99	JUAN PEREZ	Cédula	0987645321	Trabajador		\N		t	2026-03-28 20:23:48.191+00	2026-03-28 20:31:46.491+00	2026-04-22 00:18:40.055+00	1996-05-09
\.


--
-- Data for Name: Prestamos; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Prestamos" (id, "montoTotal", "cuotasPactadas", "cuotasPagadas", comentario, "montoCuota", "saldoPendiente", estado, "fechaPrestamo", "PersonaId", "createdAt", "updatedAt", "UsuarioId", "CajaId") FROM stdin;
faee69a7-1a45-40f9-b516-4aebb12630ff	100.00	10	10	EMERGENCIA MEDICA	10.00	0.00	Pagado	2026-03-28 20:32:31.501+00	db2ae49f-73e8-4c33-8efb-b40274ab0c99	2026-03-28 20:32:31.501+00	2026-03-30 14:25:32.622+00	436e223e-918f-4b80-b807-69d1ab32a934	f5d67914-e497-4a50-99de-e96d09f01314
1ba855a5-fd2b-49cd-bc72-640ee32f0c66	60.00	1	1	PRESTO MARTES Y JUEVES	60.00	0.00	Pagado	2026-03-31 16:40:32.135+00	33feadd6-8b06-4ddd-a105-385094cdc11b	2026-03-31 16:40:32.135+00	2026-04-06 16:09:04.709+00	436e223e-918f-4b80-b807-69d1ab32a934	b50721c2-08e2-463a-a0f0-0041ac5707ad
b8c041cd-68c1-49f5-9fc8-029dcdc204bf	60.00	1	1	PIDIO EL JUEVES 9	60.00	0.00	Pagado	2026-04-09 22:19:05.333+00	33feadd6-8b06-4ddd-a105-385094cdc11b	2026-04-09 22:19:05.334+00	2026-04-13 12:49:45.128+00	436e223e-918f-4b80-b807-69d1ab32a934	15b9a287-e977-4374-9c81-58d01bc780bb
d9a2c348-abd1-48b2-a9ae-e2e5c4ad00d8	70.25	1	1	SOBRE LA DEV. DEL PRESTAMO DE SOFIA	70.25	0.00	Pagado	2026-04-15 16:16:58.921+00	e1a35616-8c9b-4fe3-9483-12190ccd9247	2026-04-15 16:16:58.921+00	2026-04-18 20:22:02.035+00	436e223e-918f-4b80-b807-69d1ab32a934	9ba52a35-c19c-45bb-b535-358cbaee6ef5
47328410-6909-4477-9ee5-021363014ca6	70.00	1	1	PRESTO EL JUEVES, Y VIERNES 17	70.00	50.00	Pendiente	2026-04-02 21:30:31.76+00	60ab9824-90ef-47c5-87d4-c2ac7b46c065	2026-04-02 21:30:31.76+00	2026-04-20 13:03:48.239+00	436e223e-918f-4b80-b807-69d1ab32a934	0028889b-9d19-4401-8da9-fbdb75385cb4
d016dce3-4eb5-4646-bcec-80ae79b18d52	60.00	1	1	PRESTO LUNES 13 Y MIERCOLES 15, JUEVES 16 + $5 DE MAIZ	60.00	0.00	Pagado	2026-04-13 19:55:48.856+00	33feadd6-8b06-4ddd-a105-385094cdc11b	2026-04-13 19:55:48.856+00	2026-04-20 13:06:36.49+00	436e223e-918f-4b80-b807-69d1ab32a934	50df0617-4113-4855-be22-d596adb26685
ad41c04b-4e9e-4132-8156-ed4b25a0bf8f	60.00	1	0	PRESTO LUNES 20 DE ABRIL Y EL VIERNES 24 DE ABRIL	60.00	60.00	Pendiente	2026-04-20 21:40:51.951+00	33feadd6-8b06-4ddd-a105-385094cdc11b	2026-04-20 21:40:51.951+00	2026-04-24 16:25:19.008+00	436e223e-918f-4b80-b807-69d1ab32a934	4b0d8a84-a254-4e20-a4b0-09c251615301
\.


--
-- Data for Name: Productos; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Productos" (id, nombre, "unidadMedida", stock, "estaActivo", "fechaCreacion", "inversionInicial") FROM stdin;
d6f1eeb0-96d8-4c31-a96f-9bf8c24e9ba5	PIMIENTA	Quintales	0.00	t	2026-03-30 14:22:58.583+00	0.00
8ae27e50-3a7d-469e-88ca-137b2882b33c	MARACUYA	Kilogramos	1191.40	t	2026-03-28 21:23:56.165+00	0.00
27a59f8d-af5a-42a9-8d13-02b5f866034d	CACAO SECO	Quintales	76159.69	t	2026-03-28 20:26:22.574+00	0.00
7a83b1a2-5220-467b-bdcc-0665d572c30d	CACAO BABA 	Quintales	157.46	t	2026-03-30 14:22:25.267+00	0.00
d805a20e-f1fa-4d9f-adcb-f34c0eee6160	MAIZ 	Quintales	5.23	t	2026-04-10 16:13:08.332+00	0.00
\.


--
-- Data for Name: Reportes; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Reportes" (id, nombre, tipo, url, "publicId", "fechaCreacion", "fechaRangoInicio", "fechaRangoFin", formato, "UsuarioId") FROM stdin;
\.


--
-- Data for Name: Respaldos; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Respaldos" (id, "nombreArchivo", "urlCloudinary", tamano, estado, "CajaId", "fechaGeneracion", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Retenciones; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Retenciones" (id, descripcion, "porcentajeRetencion", "valorRetenido", "LiquidacionId", "createdAt", "updatedAt") FROM stdin;
9e836d6d-e2ae-4d09-900b-e4738572995f	RETENCION DE LA FUENTE 3%	3.00	122.40	1880d29e-9759-46e7-94a0-f581edec626f	2026-03-28 20:29:39.345+00	2026-03-28 20:29:39.345+00
4ab2d973-5902-47cd-9f49-2dc56ba3ff16	RETENCION EN LA FUENTE	3.00	1.76	3ad71b26-bce7-4b79-b716-cc0656624abc	2026-03-30 18:15:49.111+00	2026-03-30 18:15:49.111+00
ccaf1025-e9fe-428b-a084-d9cd10a38102	RETENCION EN LA FUENTE	3.00	0.24	cad6002c-87ce-498c-9816-14ae8acaf491	2026-03-30 18:17:22.468+00	2026-03-30 18:17:22.468+00
7dfe7a13-91b2-46ce-b45c-f0bea1b1c0f0	RETENCION EN LA FUENTE	3.00	0.09	68c3258a-229a-4522-ba8e-7db2eae69ee0	2026-03-30 18:26:08.88+00	2026-03-30 18:26:08.88+00
8f18aa40-6fe9-4f33-a259-7872db939a98	RETENCION EN LA FUENTE	3.00	1.50	f77a9c72-e8af-4f45-a5f6-28a60e896aab	2026-03-30 18:49:52.518+00	2026-03-30 18:49:52.518+00
3fa959d3-ccff-4fa8-aadd-26ada0742a29	RETENCION EN LA FUENTE	3.00	0.36	04926d47-b75e-4494-b028-c557092749f2	2026-03-30 18:51:34.213+00	2026-03-30 18:51:34.213+00
61e3e6ee-dfda-41dd-99c4-daa138fb8bc9	RETENCION EN LA FUENTE	3.00	1.59	c72da676-f391-4a97-9df4-51ebf763681d	2026-03-30 19:23:06.942+00	2026-03-30 19:23:06.942+00
cf1b786e-a985-46ca-8d6e-8518961dcffd	RETENCION EN LA FUENTE	3.00	0.51	0f0092ee-4b0a-461a-9af3-ec2c7bd200a2	2026-03-30 20:01:25.61+00	2026-03-30 20:01:25.61+00
6e937e01-5929-43ce-a7a0-646fc80ecd96	RETENCION EN LA FUENTE	3.00	0.21	5a59992c-c07b-4dbd-878e-b135d935af97	2026-03-30 20:17:53.243+00	2026-03-30 20:17:53.243+00
3971b702-a7a2-4379-a93d-b6d152f8fb2d	RETENCION EN LA FUENTE	3.00	0.30	3d736b6a-9010-4739-9a0c-9097cece7479	2026-03-30 21:45:10.112+00	2026-03-30 21:45:10.112+00
7b456ea6-496b-47d2-bdfb-89e829c77c47	RETENCION EN LA FUENTE	3.00	15.24	134bc834-706e-42ec-b29b-3a5a91b99608	2026-03-31 16:20:54.369+00	2026-03-31 16:20:54.369+00
30751421-e516-4189-be1a-d1acb38a0d85	RETENCION EN LA FUENTE	3.00	1.61	6696b84e-21f1-4ba4-81cd-7cf1a2f43851	2026-03-31 16:26:27.797+00	2026-03-31 16:26:27.797+00
da6443cd-66c5-4716-9cf1-6c60b9d5ebd0	RETENCION EN LA FUENTE	3.00	0.47	7fb3f4dd-a740-45a5-b8ca-75b20cfd95f6	2026-03-31 16:54:55.115+00	2026-03-31 16:54:55.115+00
99aa5545-b1d0-4507-8d3c-dc27f73e40c9	RETENCION EN LA FUENTE	3.00	0.51	d94a9e3c-c7f7-4537-aa28-6c774b56b9e2	2026-03-31 18:50:04.346+00	2026-03-31 18:50:04.346+00
b8973937-d51f-4832-bf4a-11b85c43b52f	RETENCION EN LA FUENTE	3.00	0.26	90c9ac96-b9ca-4c87-813e-0c731f8b0b91	2026-03-31 20:08:27.713+00	2026-03-31 20:08:27.713+00
a65bfb51-f9c5-4c0b-8a90-4d93b8f9ebc7	RETENCION EN LA FUENTE	3.00	3.47	3dca3d13-3fc2-4a48-a2db-50a70d74d1e1	2026-03-31 20:10:31.512+00	2026-03-31 20:10:31.512+00
251e0ca8-84b5-4055-b28e-324c31ba83f7	RETENCION EN LA FUENTE	3.00	0.16	8cd4debf-f52b-4613-80f7-d27977f59471	2026-03-31 21:57:19.181+00	2026-03-31 21:57:19.181+00
c318ce32-0636-402c-ae5c-b0414ca3ed46	RETENCION EN LA FUENTE	3.00	0.06	baf304ef-a46f-4a39-84a4-98f63deb9ede	2026-04-01 12:52:56.256+00	2026-04-01 12:52:56.256+00
5390cf87-e6e5-492a-b37b-372c7b3f0094	RETENCION EN LA FUENTE	3.00	0.54	23561d0c-1737-4f0c-9b31-29d039182a16	2026-04-01 15:37:35.056+00	2026-04-01 15:37:35.056+00
3fc27978-e9ab-4e5a-8a06-1edc58c4963e	RETENCION EN LA FUENTE	3.00	0.47	69b4a9c8-234c-4850-849f-130fdef14c67	2026-04-01 15:38:15.792+00	2026-04-01 15:38:15.792+00
a7fb9bda-a43a-491f-8f2f-8d5254d9c81e	RETENCION EN LA FUENTE	3.00	1.23	bddb15b5-aa49-43a7-a62c-e4a92f1e000a	2026-04-01 15:39:10.214+00	2026-04-01 15:39:10.214+00
4371c9de-e88b-4aad-882e-be57232b69e4	RETENCION EN LA FUENTE	3.00	0.89	4824eacd-4389-47df-a085-c0222794e52e	2026-04-01 15:39:52.14+00	2026-04-01 15:39:52.14+00
4cbbdf87-c639-40cf-9efc-bbaf5b54b0cb	RETENCION EN LA FUENTE	3.00	2.64	b4c9a09a-3782-4879-ad81-c5f5f20667d0	2026-04-01 15:40:46.691+00	2026-04-01 15:40:46.691+00
7fa09494-7cc6-4c3c-831f-5ddfa73051f9	RETENCION EN LA FUENTE	3.00	1.19	8f65a2f2-2401-46e6-82e5-1241d3bd36f1	2026-04-01 15:41:30.641+00	2026-04-01 15:41:30.641+00
94572970-d146-4b0b-8291-7804409e23b7	RETENCION EN LA FUENTE	3.00	0.37	dadb1d62-837e-4e4f-8a71-b8b8bbded5bf	2026-04-01 15:43:10.279+00	2026-04-01 15:43:10.279+00
fb2e6735-2b05-4ff3-b574-7d1eaa619b18	RETENCION EN LA FUENTE	3.00	0.75	dc3ea860-98c2-40ff-acbd-850c8524a575	2026-04-01 15:44:02.419+00	2026-04-01 15:44:02.419+00
a42e183d-87b0-4665-9ce7-843449c6f094	RETENCION EN LA FUENTE	3.00	0.13	887d9dba-9dcf-4e4b-b2d0-9239925893f1	2026-04-01 15:50:12.408+00	2026-04-01 15:50:12.408+00
89aca7fb-1863-440f-bd3b-c55ea31fe189	RETENCION EN LA FUENTE	3.00	2.90	795a999f-1d86-410a-8b1c-8f206cb34739	2026-04-01 15:52:00.485+00	2026-04-01 15:52:00.485+00
310ef592-2f23-4ea8-a3a5-9c604b89ed9e	RETENCION EN LA FUENTE	3.00	0.14	054646cf-7984-4119-b0a5-76465fd4a94b	2026-04-01 15:52:31.812+00	2026-04-01 15:52:31.812+00
f8bf11b4-da30-4890-8f3f-f7d5dfbdb474	RETENCION EN LA FUENTE	3.00	1.31	05a973d5-5a1a-40e4-8a9a-15b26c551ead	2026-04-01 15:53:10.252+00	2026-04-01 15:53:10.252+00
3782454f-c93c-42df-8f14-925048f761ca	RETENCION EN LA FUENTE	3.00	2.63	c86bc212-15bd-4485-b141-1ad397f149c7	2026-04-01 15:55:27.348+00	2026-04-01 15:55:27.348+00
6349e417-b84c-4549-a69e-413b39f1235a	RETENCION EN LA FUENTE	3.00	4.10	81b9240f-5741-44d4-9e78-e3c9329caa87	2026-04-01 15:55:58.185+00	2026-04-01 15:55:58.185+00
af3d14e6-c121-4fc2-a0ef-d5e238dfc6fa	RETENCION EN LA FUENTE	3.00	12.36	c055b336-8dcf-4b91-a06b-4aa31715ae71	2026-04-01 15:56:26.785+00	2026-04-01 15:56:26.785+00
1deee8a1-6e01-4f79-957a-673d814a608d	RETENCION EN LA FUENTE	3.00	7.98	f4f87733-e27b-4bb4-9c18-cc40599dfd6c	2026-04-01 15:57:10.29+00	2026-04-01 15:57:10.29+00
5ab3a51c-954b-446f-9a6d-49ed42997f2f	RETENCION EN LA FUENTE	3.00	0.79	01ede9d5-7ee9-4b98-9997-44e6f29ed035	2026-04-01 15:58:00.922+00	2026-04-01 15:58:00.922+00
21561a0e-4ec8-4ee3-9e48-b40cac3601f0	RETENCION EN LA FUENTE	1.95	1.19	1489dac4-044a-4399-8066-e13b43f992cc	2026-04-01 16:07:24.946+00	2026-04-01 16:07:24.946+00
881f68de-fd36-43dd-91df-7590e07e6209	RETENCION EN LA FUENTE	3.00	0.09	fe00a0c3-9527-4996-91b2-035e9239b6ba	2026-04-01 18:37:18.77+00	2026-04-01 18:37:18.77+00
67c02def-e895-4afe-933d-e26e47373d53	RETENCION EN LA FUENTE	3.00	0.03	21495ead-f14f-496c-b748-842624cbe49f	2026-04-01 19:13:04.863+00	2026-04-01 19:13:04.863+00
8a5bff6a-b1b0-4f7d-b65f-d947797bbf20	RETENCION EN LA FUENTE	3.00	0.75	d46aa130-66fc-4a17-b02c-f850b3c6f1b0	2026-04-02 18:06:26.314+00	2026-04-02 18:06:26.314+00
056308a9-2677-4829-b22c-7728b31dbae3	RETENCION EN LA FUENTE	3.00	0.82	cdd3912d-ea0f-4b02-bd81-33b128d58868	2026-04-02 20:31:55.565+00	2026-04-02 20:31:55.565+00
0769998f-976b-4b1d-bad5-c5d4e9c413d2	RETENCION EN LA FUENTE	3.00	0.32	cdda056e-0ef1-4332-b17a-15dc665fa2dd	2026-04-02 22:09:00.583+00	2026-04-02 22:09:00.583+00
9f96590c-97c2-4f24-911f-c16df0fbe45f	RETENCION EN LA FUENTE	3.00	0.52	d04e84ff-5e93-46fb-abce-5659d65237e3	2026-04-04 17:34:39.037+00	2026-04-04 17:34:39.037+00
afa6554d-6fcc-416e-8879-8d8f99ddc585	RETENCION EN LA FUENTE	3.00	0.79	93cbd3b9-5a95-42a3-b039-320c0aba4fd6	2026-04-04 17:35:37.631+00	2026-04-04 17:35:37.631+00
0a8bf408-787d-49fd-97c3-391089171f59	RETENCION EN LA FUENTE	3.00	0.62	065d9815-6f19-4477-a78f-07e17361ee45	2026-04-04 17:36:22.145+00	2026-04-04 17:36:22.145+00
f10d4f2e-82d6-4b0c-ab78-43e2c410efc4	RETENCION EN LA FUENTE	3.00	0.48	5a70e473-2d52-4ec9-971d-35c0f4171ce2	2026-04-04 17:37:10.395+00	2026-04-04 17:37:10.395+00
5d265585-1b6c-4e0a-8ba5-01fa477c5f2c	RETENCION EN LA FUENTE	3.00	1.84	e7b985bf-abef-4ef6-944f-044b827cee3b	2026-04-04 17:37:49.262+00	2026-04-04 17:37:49.262+00
cfc4a5a6-c54f-4196-a22a-12be92bfbc43	RETENCION EN LA FUENTE	3.00	0.52	596a6bc1-c5da-4b85-bdd8-273b49fd090a	2026-04-04 18:09:45.115+00	2026-04-04 18:09:45.115+00
7e1570dc-7832-46c0-ad5a-0554247d3e70	RETENCION EN LA FUENTE	3.00	0.16	2717e06c-3efb-477c-9b8d-48950bcc01ed	2026-04-04 19:26:59.251+00	2026-04-04 19:26:59.251+00
98c77b74-7be5-40a2-8b54-28d6ce815a7b	RETENCION EN LA FUENTE	3.00	2.70	06b6b10f-fa1a-4eb2-a0bc-cb443fc0adb6	2026-04-06 18:36:38.99+00	2026-04-06 18:36:38.99+00
cc08f36f-381c-495d-9d97-0faa183b7d17	RETENCION EN LA FUENTE	3.00	0.42	28002cf7-4edd-4828-9372-4a425fb67ca6	2026-04-06 18:37:10.006+00	2026-04-06 18:37:10.006+00
5877b8cb-8c5f-4b70-ba73-a95aefc25596	RETENCION EN LA FUENTE	3.00	4.11	10d0016e-583a-4083-bbd1-49572a3aef62	2026-04-06 18:38:06.967+00	2026-04-06 18:38:06.967+00
6cf0935c-560d-489d-91d8-998338913b01	RETENCION EN LA FUENTE	3.00	2.14	ec773a21-2b56-4db6-b446-72a81b7aea18	2026-04-06 18:38:39.931+00	2026-04-06 18:38:39.931+00
256a7cee-6e7f-40ca-89d2-9b1034e1ef42	RETENCION EN LA FUENTE	3.00	0.24	e7ae8105-8d22-4f98-b8e8-ead4f69c3365	2026-04-06 18:39:06.569+00	2026-04-06 18:39:06.569+00
9d297cfa-4733-41f2-b535-11ff8b254901	RETENCION EN LA FUENTE	3.00	0.17	e80a85ed-9b71-4899-bfa9-9cdd0861ca69	2026-04-06 18:40:18.833+00	2026-04-06 18:40:18.833+00
54ee1c05-488c-41f5-a5cd-16a2b02a444b	RETENCION EN LA FUENTE	3.00	0.28	86a549d7-e3b2-4ebb-8954-6c3e4b749b28	2026-04-06 18:40:48.077+00	2026-04-06 18:40:48.077+00
6f69920a-aa1a-4d9a-9997-5deab84f98b1	RETENCION EN LA FUENTE	3.00	0.17	81aa3e21-aa4b-4231-871d-4b9067b5cddb	2026-04-06 18:42:42.398+00	2026-04-06 18:42:42.398+00
4586e18c-bb09-4c5b-8073-b6ed76fc52a6	RETENCION EN LA FUENTE	3.00	2.05	5835b333-6037-42c7-adcc-663a14d0d204	2026-04-06 18:46:27.411+00	2026-04-06 18:46:27.411+00
23f364df-8fe8-459e-a15a-714fee613e17	RETENCION EN LA FUENTE	3.00	2.14	4696f995-2932-470f-84ee-ae40d844d021	2026-04-06 21:41:06.907+00	2026-04-06 21:41:06.907+00
d8e467d9-a81d-4f8a-819b-376457f3ab82	RETENCION EN LA FUENTE	3.00	0.23	dc7555f5-e069-4f34-a0fe-e3a532804a4d	2026-04-06 21:41:41.941+00	2026-04-06 21:41:41.941+00
96ad0876-0e9a-4f07-b660-6ea89b4a244f	RETENCION EN LA FUENTE	3.00	0.37	c4385606-d15f-456c-a099-bab455d04346	2026-04-07 19:33:15.277+00	2026-04-07 19:33:15.277+00
d727b068-c1ec-4e8e-a734-dd914a021293	RETENCION EN LA FUENTE	3.00	0.57	6a05b7b1-2e10-4a5c-868e-bc63f3efe2be	2026-04-07 19:34:07.502+00	2026-04-07 19:34:07.502+00
4cc72a75-b938-411e-9f58-bd40db2c4175	RETENCION EN LA FUENTE	3.00	0.36	84bae186-4931-471a-8ee6-738cf1905341	2026-04-07 19:36:13.741+00	2026-04-07 19:36:13.741+00
5eff1fda-7bb2-4d3c-8b87-9336b624cc05	RETENCION EN LA FUENTE	3.00	0.35	22b82795-7b8c-4c20-92be-cb56668b93c8	2026-04-07 19:36:52.569+00	2026-04-07 19:36:52.569+00
0b29e0a5-8b31-4615-bbb5-b17a74103542	RETENCION EN LA FUENTE	3.00	2.01	bfe4df9e-b36d-4370-9877-ab8e252a69f1	2026-04-07 19:38:14.018+00	2026-04-07 19:38:14.018+00
c96085e1-d507-4817-9130-af5b6932f872	RETENCION EN LA FUENTE	3.00	0.66	5d233984-465f-4b49-be64-660a3fa88c65	2026-04-07 20:42:14.243+00	2026-04-07 20:42:14.243+00
9087bb9b-3940-4d76-811e-9e242bcd2968	RETENCION EN LA FUENTE	3.00	0.10	2e161662-209d-46fb-8677-0bba0be640e0	2026-04-07 20:42:59.492+00	2026-04-07 20:42:59.492+00
7ca4d35c-f3d9-4225-b326-912e430449e8	RETENCION EN LA FUENTE	3.00	2.80	78fe0c17-ae74-4f6e-ba63-5178dbe1e795	2026-04-07 22:47:35.739+00	2026-04-07 22:47:35.739+00
f7b48f46-dc92-4c7c-bc7d-c6d389f45336	RETENCION EN LA FUENTE	2.80	2.67	409e20c4-feff-4bf7-858f-d3bfe9b58511	2026-04-08 16:15:26.541+00	2026-04-08 16:15:26.541+00
565ea0a3-d948-44ec-93f6-e00bf98a098b	RETENCION EN LA FUENTE	3.00	1.01	e112ef97-de9f-42eb-a22f-72b0365c072f	2026-04-08 16:16:40.021+00	2026-04-08 16:16:40.021+00
eceab91f-04a8-47da-83ea-d0d92fe54a6c	RETENCION EN LA FUENTE	3.80	0.71	deeb4df1-5c8b-4244-b958-6accfc2fbb85	2026-04-08 16:25:28.698+00	2026-04-08 16:25:28.698+00
3148ef56-8dd4-4f06-944e-a17de8f07ce4	RETENCION EN LA FUENTE	4.00	0.42	e790d87f-9bc7-4621-a37d-cdaf8ad2c629	2026-04-08 16:27:12.415+00	2026-04-08 16:27:12.415+00
9763c804-af7a-43f4-8b41-de52606389c6	RETENCION EN LA FUENTE	3.00	0.23	9e33ba84-caa3-4ca5-a5b2-0188c68665c8	2026-04-08 16:28:26.706+00	2026-04-08 16:28:26.706+00
4923eeb8-7f26-4755-a623-aa9de5b26431	RETENCION EN LA FUENTE	3.00	0.57	a7bba41e-8f96-42d8-b1f6-e67819522bf6	2026-04-08 16:29:15.745+00	2026-04-08 16:29:15.745+00
146dc9dc-eda8-4d1a-a99b-ee079d04120d	RETENCION EN LA FUENTE	3.00	2.57	1a92652e-e132-454f-8aa8-87bbfaadb849	2026-04-08 20:34:14.853+00	2026-04-08 20:34:14.853+00
fbafeae6-ac6d-4b73-8aeb-33c92d4a5c31	RETENCION EN LA FUENTE	3.00	0.12	3ed15aeb-f2c9-44da-a609-793effc9d3bb	2026-04-08 20:35:06.296+00	2026-04-08 20:35:06.296+00
01927ae6-0d38-4c1f-a789-8edea4c56c77	RETENCION EN LA FUENTE	3.00	0.23	88485edf-ddac-48ef-9312-72d75ea60641	2026-04-08 20:36:14.573+00	2026-04-08 20:36:14.573+00
ccfe5499-6959-49ba-98a3-c64eab224b9c	RETENCION EN LA FUENTE	3.00	0.03	8fe380d6-a684-43e4-97bd-26645759b872	2026-04-09 19:10:53.698+00	2026-04-09 19:10:53.698+00
484fe9f2-62d0-46af-bc28-25dddd74e660	RETENCION EN LA FUENTE	3.00	0.52	e821bcf4-2da4-45d1-83f6-561f42ad3e74	2026-04-09 19:11:20.121+00	2026-04-09 19:11:20.121+00
4d370cfd-ce7f-4e61-8f0b-2bd9ecce44da	RETENCION EN LA FUENTE	3.00	0.46	9bf581c8-74dc-4155-afba-c8c2419b8189	2026-04-09 19:11:53.342+00	2026-04-09 19:11:53.342+00
6a3b5988-1329-4497-a69b-e0f6835d1d9d	RETENCION EN LA FUENTE	3.00	1.61	3317e5f2-edef-4b3d-9d53-a0fb5ab4d56f	2026-04-09 19:14:56.169+00	2026-04-09 19:14:56.169+00
804678a5-270b-4c0e-971b-1a558090cdec	RETENCION EN LA FUENTE	3.00	0.16	9fd5e4d3-9f41-4318-8e5b-029ea54a45cd	2026-04-09 19:15:22.509+00	2026-04-09 19:15:22.509+00
a3199228-a791-40b5-9aa0-a2e58abeb9bc	RETENCION EN LA FUENTE	3.00	2.89	00ab8e75-f5c8-4534-b0d3-2673744a50bb	2026-04-09 19:16:09.677+00	2026-04-09 19:16:09.677+00
18de35f7-d665-4bfe-a60c-b92f12337fec	RETENCION EN LA FUENTE	3.00	0.13	837efa01-6541-4a78-8ee3-9282a8d4415b	2026-04-09 19:16:35.222+00	2026-04-09 19:16:35.222+00
e62a2450-a471-49d3-83d7-b2627ee6800c	RETENCION EN LA FUENTE	3.00	1.68	ddbf5a6d-5eb4-40d5-9d4c-3d829b8a8723	2026-04-09 19:17:12.604+00	2026-04-09 19:17:12.604+00
b63eb548-4a3c-46ed-a9ca-5db82f29a639	RETENCION EN LA FUENTE	3.00	0.52	c9f81f62-d4b0-4cf0-8235-c3aac5075233	2026-04-09 19:17:44.308+00	2026-04-09 19:17:44.308+00
d89768ef-774f-4071-a384-fba09c684f34	RETENCION EN LA FUENTE	3.00	0.72	5d438660-647b-4123-a48f-3f7d5437808a	2026-04-09 21:57:24.32+00	2026-04-09 21:57:24.32+00
91084abf-cc5c-4a17-b224-95df6c0a8365	RETENCION EN LA FUENTE	3.00	0.13	a1da7605-8d11-4b8e-af05-3ca015475a0d	2026-04-10 16:14:13.393+00	2026-04-10 16:14:13.393+00
554a0b42-addf-4db4-abee-45a7d727dc49	RETENCION EN LA FUENTE	3.00	1.70	830ffdd2-1b8a-45c5-a934-256f9c6073aa	2026-04-10 16:14:40.467+00	2026-04-10 16:14:40.467+00
d0b3a520-3df4-43e8-860a-a1cb5b6dd018	RETENCION EN LA FUENTE	3.00	0.59	4e3bd702-593e-4a19-b966-83e2dd821261	2026-04-10 16:16:57.436+00	2026-04-10 16:16:57.436+00
4c92494f-75db-4e7a-9a68-f843005231bb	RETENCION EN LA FUENTE	3.00	0.52	50dbcfd4-e087-453c-b922-68ca0ddbb21c	2026-04-10 16:17:26.905+00	2026-04-10 16:17:26.905+00
fd15cac4-cab4-4336-982c-f40cefd2a0c0	RETENCION EN LA FUENTE	3.00	2.03	8954d1c6-c7b7-49c2-87c9-435c168284ad	2026-04-10 16:18:07.116+00	2026-04-10 16:18:07.116+00
ba2a1a4c-05be-4a92-ba7f-2d59166f3993	RETENCION EN LA FUENTE	3.00	2.79	9f0a3290-1622-4e8a-a0b9-ddbdebc8f3b0	2026-04-10 16:18:40.129+00	2026-04-10 16:18:40.129+00
759a0b8d-2bae-4679-aa9b-004777199bec	RETENCION EN LA FUENTE	3.00	3.87	625bfaeb-7b67-46ee-a21b-6d5c22303cc1	2026-04-10 16:19:12.698+00	2026-04-10 16:19:12.698+00
f14b5a0c-bcdd-483b-afb3-729f9ba42beb	RETENCION EN LA FUENTE	3.00	2.14	5f19af89-3a98-4067-98aa-d3eb3d2aae69	2026-04-10 16:20:04.357+00	2026-04-10 16:20:04.357+00
d205d22e-eb91-493d-862d-b05e51e56057	RETENCION EN LA FUENTE	3.00	3.99	b71bc2b7-3c3e-4a2a-b7c5-b2c4d881c637	2026-04-10 16:20:50.108+00	2026-04-10 16:20:50.108+00
b1c75a2c-28c8-4ae4-8941-38b6296a6b2f	RETENCION EN LA FUENTE	3.00	1.95	e81b1f96-8857-4e5d-9457-7ec3755fbfc7	2026-04-10 16:22:44.764+00	2026-04-10 16:22:44.764+00
1546e7c2-0e50-48b2-884b-d58ba9d95edd	RETENCION EN LA FUENTE	3.00	2.58	07f2421a-8ba5-46b3-90ba-289fe4974550	2026-04-10 16:23:18.305+00	2026-04-10 16:23:18.305+00
abb3a2ae-6da5-4e3c-9ff4-fac5657c456f	RETENCION EN LA FUENTE	3.00	1.08	12355294-0beb-4b91-9c0d-fc4d538eba10	2026-04-10 16:24:11.797+00	2026-04-10 16:24:11.797+00
0ca7b33b-c6b8-48aa-806b-e39eba42b0fe	RETENCION EN LA FUENTE	3.00	2.52	709f105e-3324-4657-b633-ddf99c766c12	2026-04-10 16:25:15.095+00	2026-04-10 16:25:15.095+00
2c450019-0003-4337-a4dd-93df17bf8935	RETENCION EN LA FUENTE	3.00	0.95	d88e031a-881a-41d6-b9bb-41c8f0152081	2026-04-10 16:25:48.509+00	2026-04-10 16:25:48.509+00
b42db957-8fe6-4f60-ba0b-db3243a663ea	RETENCION EN LA FUENTE	3.00	1.17	c0ea8911-398c-418e-9799-a42e033fdc00	2026-04-10 16:27:19.503+00	2026-04-10 16:27:19.503+00
77aad09f-7063-4af4-90b1-4ba86a824b97	RETENCION EN LA FUENTE	3.00	2.64	d852f1e2-5c4e-4876-8007-7f4a91e99220	2026-04-10 16:28:10.037+00	2026-04-10 16:28:10.037+00
2543d5ec-5e22-4335-b104-e65fd26c32ef	RETENCION EN LA FUENTE	3.00	1.02	6ab595a7-a711-4cc3-a73c-04ec0b29dd07	2026-04-10 16:28:52.21+00	2026-04-10 16:28:52.21+00
7f8204df-fad6-4726-b139-550bb5a289b5	RETENCION EN LA FUENTE	3.00	0.66	82163b3d-7b20-4727-840d-b6d850aaad44	2026-04-10 16:29:43.25+00	2026-04-10 16:29:43.25+00
28ef24f8-47dd-4330-b794-0dda1a649423	RETENCION EN LA FUENTE	3.00	1.31	4349c9c3-ef2f-4c27-8dd8-58243a1cd8a0	2026-04-10 16:30:28.944+00	2026-04-10 16:30:28.944+00
77ca1530-1ec8-4208-87ad-a602153a8c6b	RETENCION EN LA FUENTE	3.00	0.49	07c265e9-4e03-4b36-ae99-0175715b198c	2026-04-10 16:31:09.337+00	2026-04-10 16:31:09.337+00
9cf18a90-d254-4125-a063-5f5b0825f8cf	RETENCION EN LA FUENTE	3.00	0.58	04cad26e-58b3-48d3-9118-8df35f56bd53	2026-04-10 16:31:54.898+00	2026-04-10 16:31:54.898+00
69dd75ba-f0d7-4100-be22-6e7a07f2eebd	RETENCION EN LA FUENTE	3.00	0.19	37f8dcb4-3055-4a97-84ab-2197eb2e719e	2026-04-10 20:29:11.926+00	2026-04-10 20:29:11.926+00
01a550a2-2254-4b8b-a771-67b457ca1224	RETENCION EN LA FUENTE	3.00	2.89	7ded42ff-2cc1-4e8f-9124-22f6282d6adb	2026-04-10 20:30:02.399+00	2026-04-10 20:30:02.399+00
2b11d42f-a691-4685-a613-3361edefa8a8	RETENCION EN LA FUENTE	3.00	0.73	12bd36cf-e342-4463-9c45-e15899843ffb	2026-04-10 20:30:33.308+00	2026-04-10 20:30:33.308+00
e382dea9-4e92-45c0-9378-73cb1e651ab5	RETENCION EN LA FUENTE	3.00	5.44	cc4660a0-af99-45af-97c6-bc6d9bf4cfe9	2026-04-11 16:11:10.885+00	2026-04-11 16:11:10.885+00
d80b4c85-e3a9-436e-900c-217e66a5dc5b	RETENCION EN LA FUENTE	1.90	0.38	23629c56-d241-4032-ae6a-0bfc1e653abb	2026-04-11 16:13:54.428+00	2026-04-11 16:13:54.428+00
778ec0b3-aeda-4cd8-8a21-3ef24118cee1	RETENCION EN LA FUENTE	3.00	0.21	51438f0a-a4a8-4865-b3c7-acc162f9d746	2026-04-11 16:17:59.655+00	2026-04-11 16:17:59.655+00
58b0cc6c-f51b-4103-8dfb-984b577f4d99	RETENCION EN LA FUENTE	3.00	1.07	5837d910-f8be-460f-91e2-267824f7e173	2026-04-11 16:24:59.821+00	2026-04-11 16:24:59.821+00
f45770ab-6e8e-4c3b-a7bb-00eb81166455	RETENCION EN LA FUENTE	3.00	2.63	11a5e154-0037-43c2-8020-97275123eaa1	2026-04-11 16:25:24.907+00	2026-04-11 16:25:24.907+00
c6383418-d210-478a-8d51-8bb32f919e6b	RETENCION EN LA FUENTE	3.00	1.76	e4ad21de-af39-44fa-903f-41ec68fb2360	2026-04-11 16:25:56.407+00	2026-04-11 16:25:56.407+00
722840fb-c525-43f8-a3ac-aeaccb61ddff	RETENCION EN LA FUENTE	3.00	2.48	4b239367-879c-4a04-a235-6163a10ce9cf	2026-04-11 16:26:41.202+00	2026-04-11 16:26:41.202+00
0d37c8e5-74b6-4e6b-a398-6bc57efe373c	RETENCION EN LA FUENTE	3.00	3.28	f2185309-1778-4ca9-b746-3ca6315d2103	2026-04-11 16:27:11.398+00	2026-04-11 16:27:11.398+00
ab2688c8-d1e7-46fb-83c6-76798475de43	RETENCION EN LA FUENTE	3.00	2.84	bd5744d4-e242-4c53-bcf8-b01e8a44b8a9	2026-04-11 16:28:44.721+00	2026-04-11 16:28:44.721+00
28f911cb-8dc2-4706-a825-f9069124f202	RETENCION EN LA FUENTE	3.00	2.62	07ae510b-34a7-4c35-b37c-263970ad4fa7	2026-04-11 16:29:26.826+00	2026-04-11 16:29:26.826+00
1e2559e3-e0b1-40c5-81b2-4513e01edc79	RETENCION EN LA FUENTE	3.00	0.26	aa7e2867-b8b3-43ce-b063-5961a379074e	2026-04-11 16:29:57.44+00	2026-04-11 16:29:57.44+00
fe990631-da75-45a0-bab0-e2ce4bc69099	RETENCION EN LA FUENTE	3.00	0.13	016ffcfd-79bc-486a-85f5-d6f21990115e	2026-04-11 16:30:22.365+00	2026-04-11 16:30:22.365+00
177ba07e-3388-4c2d-a8c6-5b4b532a1e1d	RETENCION EN LA FUENTE	3.00	0.63	ecf0caba-d7cb-4e31-b0f8-86a2a343ba12	2026-04-11 16:30:59.531+00	2026-04-11 16:30:59.531+00
db411683-1257-452a-bb37-788c7974c442	RETENCION EN LA FUENTE	3.00	0.93	1508acbd-9c09-4ad3-936c-7cec0e7d6e59	2026-04-11 16:31:30.327+00	2026-04-11 16:31:30.327+00
d271ba00-7c80-4ac5-8e00-e9e7d89206a2	RETENCION EN LA FUENTE	3.00	0.26	cca8163b-d400-4dc0-ae6e-394842b18fd9	2026-04-11 16:32:08.704+00	2026-04-11 16:32:08.704+00
497fc91b-ab42-4151-825d-156e773446ba	RETENCION EN LA FUENTE	3.00	1.30	218ddb97-b366-4043-b8d4-e81b1e419786	2026-04-11 16:32:40.165+00	2026-04-11 16:32:40.165+00
1ba4e65c-8643-40ba-8bf9-080dd49e75bf	RETENCION EN LA FUENTE	3.00	2.55	8b35bb97-1711-477e-8d44-6882f7573602	2026-04-11 16:33:12.816+00	2026-04-11 16:33:12.816+00
f61b4e73-b5d6-4291-911e-210453a4cc76	RETENCION EN LA FUENTE	3.00	0.36	fc6606a1-35a7-4a15-a1e9-6a577d3b2c24	2026-04-11 16:34:55.4+00	2026-04-11 16:34:55.4+00
eb190474-135d-46f1-82d8-50e6d40c1637	RETENCION EN LA FUENTE	4.00	0.26	74cbc184-c4f2-4f7d-a650-780259cea6d8	2026-04-11 16:35:42.701+00	2026-04-11 16:35:42.701+00
cab15fa9-7b36-42e7-ac8c-073c52a3f967	RETENCION EN LA FUENTE	3.00	1.44	41637e68-bdc3-4a7d-969d-da411f3e877d	2026-04-11 16:36:12.924+00	2026-04-11 16:36:12.924+00
6cd3eba5-7df9-4a61-8520-042f58208069	RETENCION EN LA FUENTE	3.00	0.67	902e02cb-c728-40cb-8757-bd97f31953c1	2026-04-11 16:36:59.613+00	2026-04-11 16:36:59.613+00
d3231ce5-6f24-459f-950f-5087371827ff	RETENCION EN LA FUENTE	3.00	0.09	a71ea85c-07ef-43db-93b2-445f4eddd6d3	2026-04-11 19:14:43.69+00	2026-04-11 19:14:43.69+00
13ee0cdf-0255-4543-ad09-7585e6e559fd	RETENCION EN LA FUENTE	3.00	0.05	f65cbfc1-5913-49d3-b968-de1a4bc0da69	2026-04-11 19:15:56.504+00	2026-04-11 19:15:56.504+00
404cffe2-b416-400a-8d88-0aefe8e72c7a	RETENCION EN LA FUENTE	3.00	1.58	dbf51650-7dbc-411e-9cd6-b444528f2cbb	2026-04-11 19:16:27.267+00	2026-04-11 19:16:27.267+00
a421563a-9872-483a-8ebf-43148f8ac713	RETENCION EN LA FUENTE	3.00	2.34	84304428-f6c6-4956-b396-4d5b818808af	2026-04-11 19:17:20.639+00	2026-04-11 19:17:20.639+00
a0b9634a-ada0-4a2a-99b2-3ae1f251c0ed	RETENCION EN LA FUENTE	3.00	0.09	d8c6abb6-ee1a-4016-b54a-708f54b3d609	2026-04-11 19:17:43.864+00	2026-04-11 19:17:43.864+00
fd3d8fc2-434d-45be-bfc3-ef7265e84086	RETENCION EN LA FUENTE	3.00	2.95	dfacc269-721e-461a-94cd-f9e18b214fd4	2026-04-11 19:18:53.239+00	2026-04-11 19:18:53.239+00
308be1ac-fbf0-4f0b-a3d8-0b3dbce1fa08	RETENCION EN LA FUENTE	3.00	0.06	bd837d16-1d14-426f-81f1-d035d3d5fb96	2026-04-11 19:22:03.636+00	2026-04-11 19:22:03.636+00
eaa56571-4290-4b45-aac3-64c56e1c39f2	RETENCION EN LA FUENTE	3.00	0.19	95936f96-2bf7-40b6-a24f-47de1d8e3e69	2026-04-11 19:31:28.754+00	2026-04-11 19:31:28.754+00
6cb4e258-506d-4a5f-9210-89505bcecfc7	RETENCION EN LA FUENTE	3.00	0.16	09dca7b0-84a3-4ce2-8c18-f86e95abb2f3	2026-04-11 19:33:16.29+00	2026-04-11 19:33:16.29+00
f5f3128e-2c7a-433a-9c9f-a84c6571ff11	RETENCION EN LA FUENTE	3.00	0.81	14f054d6-0cb6-4eaf-92d2-054b081169d3	2026-04-11 20:27:26.174+00	2026-04-11 20:27:26.174+00
a2cec47d-7ef7-4b9b-996e-9a428e6a6520	RETENCION EN LA FUENTE	3.50	1.20	53c280c1-4c05-4da3-87f7-dd1d18c4cd24	2026-04-11 20:28:02.838+00	2026-04-11 20:28:02.838+00
378ffe0a-d0f8-43df-8447-d3c7f565227a	RETENCION EN LA FUENTE	3.00	0.45	acfea689-bac9-4760-ae78-4cc81086eee6	2026-04-13 19:27:29.158+00	2026-04-13 19:27:29.158+00
3e996748-f793-4976-abce-913291d6a44d	RETENCION EN LA FUENTE	3.00	0.14	78bb89a1-cd2e-43aa-85e0-5ac080896693	2026-04-14 20:12:18.836+00	2026-04-14 20:12:18.836+00
f1080e0c-9c45-4d11-ab7e-4228451cc67c	RETENCION EN LA FUENTE	3.00	0.70	3d6ff5f1-d5dc-4b9a-a1ca-2f16eee4239c	2026-04-14 20:13:46.746+00	2026-04-14 20:13:46.746+00
2d80c3c6-c350-49e8-ab7a-1faea1a2fe70	RETENCION EN LA FUENTE	3.00	0.21	c1305d34-8057-46c6-9b89-f2939109cd84	2026-04-14 20:14:15.516+00	2026-04-14 20:14:15.516+00
b5f42d58-b4a0-417a-9de6-09793cb7e5fd	RETENCION EN LA FUENTE	3.00	0.28	b2487492-c533-48f5-8b17-bf4f817202fe	2026-04-14 20:15:13.973+00	2026-04-14 20:15:13.973+00
972850de-669d-4097-a0fa-b9d75cfa07b7	RETENCION EN LA FUENTE	3.00	0.96	0c7896b7-026f-4657-a71b-fa39d786b5d4	2026-04-15 16:04:46.46+00	2026-04-15 16:04:46.46+00
89fa4ff9-63cc-4a4e-807a-0a40441cc4a2	RETENCION EN LA FUENTE	3.00	9.59	af6fc6ae-23fc-464d-b9c2-a3906a522ce7	2026-04-15 16:05:10.71+00	2026-04-15 16:05:10.71+00
be0b93e8-a9ca-4875-9027-071a3a6225bb	RETENCION EN LA FUENTE	3.00	2.38	e23f71a4-8fc5-4a29-a2ad-2d767a4ef514	2026-04-15 16:06:01.161+00	2026-04-15 16:06:01.161+00
964d7241-bcbd-4cef-b528-b3dbd5ddb846	RETENCION EN LA FUENTE	3.00	10.48	74495e5b-2fe9-411b-9453-2ce1f5547dc8	2026-04-15 16:06:35.111+00	2026-04-15 16:06:35.111+00
5164fe3a-5311-4c51-947b-4878e0753ffc	RETENCION EN LA FUENTE	3.00	2.79	8a6da259-b130-4eeb-a4bf-ebf3c4f051f7	2026-04-15 16:07:24.06+00	2026-04-15 16:07:24.06+00
857d40ec-3e8f-4b4d-8231-d89224698c6a	RETENCION EN LA FUENTE	3.00	0.67	9181b938-79d1-4d89-861b-4b4d7ca0ad82	2026-04-15 16:07:58.187+00	2026-04-15 16:07:58.187+00
0d027fe6-f54d-4273-9a0b-e8da4fd681c3	RETENCION EN LA FUENTE	3.00	0.24	bd30dec7-f10c-4051-bccd-4f1f46572b2c	2026-04-15 16:08:28.692+00	2026-04-15 16:08:28.692+00
155e2052-1a2c-47d4-a6f4-e50d22fc4447	RETENCION EN LA FUENTE	3.00	10.04	d65eee05-a62e-42b3-8572-ed10fabb33e2	2026-04-15 16:08:57.895+00	2026-04-15 16:08:57.895+00
01d0d47d-111b-4a67-8dd1-41dd8c5e03c8	RETENCION EN LA FUENTE	3.00	1.00	e6e5da9b-6a8a-4041-b7b6-811ca18f2d82	2026-04-15 19:43:18.897+00	2026-04-15 19:43:18.897+00
f43004de-6342-4d1e-848b-b21353857ce8	RETENCION EN LA FUENTE	3.00	1.79	376ed702-c5fb-4d4d-ac7c-5f36684cebbc	2026-04-16 16:35:29.409+00	2026-04-16 16:35:29.409+00
c51ad842-3ebd-47ea-a761-ab7f8121699a	RETENCION EN LA FUENTE	3.00	31.01	9177334c-93f4-4154-9faf-219617475daf	2026-04-16 16:43:13.933+00	2026-04-16 16:43:13.933+00
29bb4131-0d04-4a3d-8bdc-536e87716d76	RETENCION EN LA FUENTE	3.00	6.00	45133d31-e01d-41af-9e7c-46ce2340f356	2026-04-16 16:43:52.049+00	2026-04-16 16:43:52.049+00
efbdf5ca-3714-425e-9560-ca689871f584	RETENCION EN LA FUENTE	3.00	0.88	0b0d98cd-0470-4d17-94d9-c8e6cabd9d1c	2026-04-16 16:44:21.801+00	2026-04-16 16:44:21.801+00
0b3fc93d-ca43-4d4e-8818-d9175bc6595a	RETENCION EN LA FUENTE	3.00	1.12	9e347876-444c-4b38-b26e-aa012d2c8655	2026-04-16 16:45:20.908+00	2026-04-16 16:45:20.908+00
e5de5f1f-d5fd-4874-9612-0f3235199cfb	RETENCION EN LA FUENTE	3.00	0.41	7101732f-34c2-4108-b853-03c383cfbad2	2026-04-16 16:45:57.445+00	2026-04-16 16:45:57.445+00
7ea38c0d-3c09-4f5a-8553-7e301bee7271	RETENCION EN LA FUENTE	8.00	0.35	1898e34a-05ea-405e-8177-38b73987222b	2026-04-16 19:27:38.502+00	2026-04-16 19:27:38.502+00
3d7eb32e-1930-438d-b224-87114e802072	RETENCION EN LA FUENTE	3.00	0.18	78a65d0a-c9f1-4acf-9a3c-4f0e9851d467	2026-04-16 19:28:46.367+00	2026-04-16 19:28:46.367+00
b0991a10-9a6d-492a-aecf-5f865cea348a	RETENCION EN LA FUENTE	3.00	0.36	929daac0-58c5-48d1-bd58-0d0b1d985ed8	2026-04-16 19:29:17.984+00	2026-04-16 19:29:17.984+00
1778acd2-480a-4c10-a603-85092a9ea77b	RETENCION EN LA FUENTE	3.00	1.44	b28e9ac1-16a3-4333-a24a-ce911ad6eeab	2026-04-16 19:30:57.242+00	2026-04-16 19:30:57.242+00
3979dbf1-772b-45e3-8da9-dae0c615491a	RETENCION EN LA FUENTE	3.00	0.97	ed4c2a48-34a7-430e-b2f8-a6337d659320	2026-04-16 19:31:29.941+00	2026-04-16 19:31:29.941+00
87114311-076e-4ed0-bb29-289b74969868	RETENCION EN LA FUENTE	3.00	0.37	13dfbef0-8451-47f3-a4d5-dba983013b1f	2026-04-16 20:22:45+00	2026-04-16 20:22:45+00
cec07907-1395-4863-91c6-4082612d52d1	RETENCION EN LA FUENTE	3.00	0.28	73971e47-e776-456d-8e02-1ae86daa3d82	2026-04-16 22:22:21.534+00	2026-04-16 22:22:21.534+00
97a2b9b9-df3a-407b-9552-23414e63ac01	RETENCION EN LA FUENTE	2.90	3.79	8f8d37f7-8498-4822-9551-0ca29e57a0f5	2026-04-17 15:43:02.466+00	2026-04-17 15:43:02.466+00
3b2b8a87-d5c0-4205-a469-115ff6552518	RETENCION EN LA FUENTE	3.00	0.43	ab72416a-f3c2-4b65-bd9c-66791ef70c3e	2026-04-17 16:12:41.906+00	2026-04-17 16:12:41.906+00
7edfdf52-0ad9-4384-98a0-60e951f690ae	RETENCION EN LA FUENTE	3.00	0.92	d2cac3c2-1e4b-4cd9-8253-0571e733a7e4	2026-04-17 16:13:57.396+00	2026-04-17 16:13:57.396+00
8a5b68f3-c00a-4a3d-8f48-6c0c95f1c871	RETENCION EN LA FUENTE	3.00	0.55	7a1445ae-105c-4023-8a05-31d0784f1ad0	2026-04-17 16:14:35.904+00	2026-04-17 16:14:35.904+00
b2f00ea7-37fb-4922-aa4f-b1dc3a64b620	RETENCION EN LA FUENTE	3.00	0.84	88afea12-c8a8-4a0c-9bc0-6d0442792b93	2026-04-17 16:15:06.1+00	2026-04-17 16:15:06.1+00
d329bcdf-3804-4a75-9f2c-1670e70ccb28	RETENCION EN LA FUENTE	3.00	4.50	3d72c113-936d-4a86-8b19-cd2efc218a19	2026-04-17 16:20:03.669+00	2026-04-17 16:20:03.669+00
a1a28ccd-7ee9-4e82-85dd-3caf609797bf	RETENCION EN LA FUENTE	3.00	0.97	84baf8e2-2d16-4de9-b738-2b55989191c6	2026-04-17 16:20:34.038+00	2026-04-17 16:20:34.038+00
28be02ba-af21-4a24-a219-e00d4270019b	RETENCION EN LA FUENTE	3.00	5.41	59c220f7-024e-47e9-a564-32754a11b962	2026-04-17 16:21:01.572+00	2026-04-17 16:21:01.572+00
65d542fc-90ca-430d-8244-d5fcfd0209ba	RETENCION EN LA FUENTE	3.00	0.36	e242f9ec-5324-4ef7-97ea-3bdf81e7f87e	2026-04-17 16:21:32.022+00	2026-04-17 16:21:32.022+00
7f532432-73fe-4e1b-b8e3-b331cfe53ac3	RETENCION EN LA FUENTE	3.00	2.38	2fcea9a0-5200-4441-997c-26c44e8b41ed	2026-04-17 16:22:12.357+00	2026-04-17 16:22:12.357+00
7319cbf0-fc71-49ea-a3fb-9ea9ff82c424	RETENCION EN LA FUENTE	3.00	1.24	677d15a3-4a1c-4cca-b0da-17adf72ad624	2026-04-17 16:23:29.537+00	2026-04-17 16:23:29.537+00
266b9825-6916-42db-a3fb-ca9e8e26d236	RETENCION EN LA FUENTE	3.00	0.58	3175c88b-c5b5-4a1c-8d7b-0ace14981b36	2026-04-17 16:24:29.598+00	2026-04-17 16:24:29.598+00
744a794e-abef-4fa9-9a79-f6007187c09b	RETENCION EN LA FUENTE	3.00	0.50	35760561-bdbb-4985-9d11-be4f2c49916e	2026-04-17 19:53:04.47+00	2026-04-17 19:53:04.47+00
ec989a61-7ae6-4d86-95c7-7b7826debb41	RETENCION EN LA FUENTE	3.90	0.82	522ee860-5a1f-4e23-a9ac-971b4f2a2565	2026-04-17 20:07:50.9+00	2026-04-17 20:07:50.9+00
6331d5ed-d9b5-4718-9363-37379b5a2c4f	RETENCION EN LA FUENTE	1.00	3.20	737ebdb0-c3ae-4f5e-887d-07f937e74d38	2026-04-18 16:13:30.595+00	2026-04-18 16:13:30.595+00
aef3ee35-eb44-45bc-b424-b0becf44e71a	RETENCION EN LA FUENTE	3.00	3.24	b39d997e-e876-43f9-955f-5991532f7a18	2026-04-18 16:14:16.307+00	2026-04-18 16:14:16.307+00
00b3c397-90a6-49ca-8579-c00c44d359ea	RETENCION EN LA FUENTE	3.00	0.78	c8fc6f50-b67d-4b44-a00d-cc031c72bf42	2026-04-18 16:18:55.743+00	2026-04-18 16:18:55.743+00
e22ae413-2d99-409e-bf8e-2c8943089c59	RETENCION EN LA FUENTE	3.00	0.49	06219581-3a21-48da-b0d4-3acd17bffa64	2026-04-18 16:19:35.609+00	2026-04-18 16:19:35.609+00
672eaaeb-1e8d-4e13-9131-d0a7c72e2c16	RETENCION EN LA FUENTE	3.00	0.38	7d242942-ea20-46bb-9dc8-807f7aaca232	2026-04-18 16:20:06.303+00	2026-04-18 16:20:06.303+00
c0cc0710-7944-4ce7-87b1-125bd3287fdc	RETENCION EN LA FUENTE	3.00	0.60	ece59cf2-3944-486f-89f6-48f5b4864016	2026-04-18 16:21:45.434+00	2026-04-18 16:21:45.434+00
5b6be35b-9caf-43b1-99c6-8132772eb106	RETENCION EN LA FUENTE	3.00	0.71	2b235a91-edf8-4444-889e-b8a7b2d0142b	2026-04-18 16:22:20.226+00	2026-04-18 16:22:20.226+00
eb1edf31-577d-46a3-af28-14f8456a1b39	RETENCION EN LA FUENTE	3.00	0.31	26e2dc5b-a438-4819-9b51-8131f14d7ac2	2026-04-18 16:23:39.449+00	2026-04-18 16:23:39.449+00
cb4a293c-6eda-49a7-bb6b-a30bb9b2b981	RETENCION EN LA FUENTE	3.00	0.07	9c21c4c1-d702-47e4-bf48-7b92767dbe07	2026-04-18 16:24:12.512+00	2026-04-18 16:24:12.512+00
391e00f9-b186-4ed1-9859-77efff8dfcd0	RETENCION EN LA FUENTE	3.00	1.13	4aa22d95-6cb6-4341-9c47-c47e0ae150a9	2026-04-18 16:25:05.714+00	2026-04-18 16:25:05.714+00
964f3d26-4093-4b51-8092-e59cbc7787f9	RETENCION EN LA FUENTE	3.00	1.08	75c1bb81-1cd8-4434-8f98-f67fb50f70fc	2026-04-18 16:26:23.475+00	2026-04-18 16:26:23.475+00
f7910bd8-3715-4488-bd07-d1e512bc1193	RETENCION EN LA FUENTE	3.00	0.33	0eeb106a-003f-4618-82f3-5201f43d22e2	2026-04-18 16:26:56.099+00	2026-04-18 16:26:56.099+00
998447a0-e2cb-4a72-aac8-0f08dbb299e1	RETENCION EN LA FUENTE	3.00	0.80	8491f063-b461-4709-b494-3a35116fa3be	2026-04-18 16:27:56.728+00	2026-04-18 16:27:56.728+00
2155cbc1-bcd7-4c0e-842b-f00857ddc745	RETENCION EN LA FUENTE	3.00	1.98	46609806-072b-4199-8d5f-0c47be5ca08d	2026-04-18 16:28:33.899+00	2026-04-18 16:28:33.899+00
f06bebe8-a750-46c9-94d6-0bf74d7358fc	RETENCION EN LA FUENTE	3.00	0.67	bddec045-db74-4cb6-b366-12b5cef1a19f	2026-04-18 16:31:03.795+00	2026-04-18 16:31:03.795+00
925b4235-4385-4538-a1af-0ad9de11731b	RETENCION EN LA FUENTE	3.00	3.86	89453b82-bb65-43c2-8f63-d395d0801997	2026-04-18 16:31:32.512+00	2026-04-18 16:31:32.512+00
8df02731-6001-42f8-b5e8-db7c7bacc2d9	RETENCION EN LA FUENTE	3.00	1.08	4dacbd86-8125-48b1-b9d9-f33e933f1006	2026-04-18 16:33:16.037+00	2026-04-18 16:33:16.037+00
5a2b4958-de1f-421b-9bc1-f68581a8e3b2	RETENCION EN LA FUENTE	3.00	1.84	01cbd0fa-c76f-4459-af38-a7a6025f6ab8	2026-04-18 16:33:39.132+00	2026-04-18 16:33:39.132+00
410675f5-e475-4f2d-b8b4-376a42939502	RETENCION EN LA FUENTE	3.00	5.87	8c4718bd-66c6-4d23-aa8a-0cbe212ab339	2026-04-18 16:34:09.737+00	2026-04-18 16:34:09.737+00
6f89fa3c-605a-4dcf-8d76-7e9a4861fb1b	RETENCION EN LA FUENTE	3.00	1.14	1bce7280-5365-4ecc-a175-a5dcb67f23ce	2026-04-18 16:34:30.717+00	2026-04-18 16:34:30.717+00
82bbbd90-3a13-49c9-b3ac-c6a263b30da8	RETENCION EN LA FUENTE	3.00	2.22	5d1e961b-e7b4-4257-93d2-3b19b7eab8f4	2026-04-18 16:34:56.619+00	2026-04-18 16:34:56.619+00
01b33a9f-2018-4030-9a0e-44a29362e088	RETENCION EN LA FUENTE	3.00	0.91	22d87bb3-e0ed-4d1a-8b24-d0e32ad0e52f	2026-04-18 16:35:26.373+00	2026-04-18 16:35:26.373+00
1d107040-da29-44cd-8752-65456f25e5f2	RETENCION EN LA FUENTE	3.00	1.51	fa088413-7613-4d7a-910e-8d16e50c9580	2026-04-18 16:36:06.905+00	2026-04-18 16:36:06.905+00
ae9ded25-36f3-407c-bd06-ddb9f89e04d3	RETENCION EN LA FUENTE	3.00	3.56	fcee95bb-fcc4-4898-91b0-b49d30d91309	2026-04-18 16:36:30.545+00	2026-04-18 16:36:30.545+00
34184346-625e-4b19-8c47-5957bbb99287	RETENCION EN LA FUENTE	3.00	0.52	ee3ceb34-e020-4952-8c86-010b33c9de58	2026-04-18 16:36:56.342+00	2026-04-18 16:36:56.342+00
9d397e32-f787-411a-bc05-2356fe2d7aca	RETENCION EN LA FUENTE	3.00	0.52	ac8e1480-812b-4c9e-9e5f-9b91573e7e37	2026-04-18 16:38:42.85+00	2026-04-18 16:38:42.85+00
314666a7-fd84-44f2-bad2-07f4969b2662	RETENCION EN LA FUENTE	3.00	3.66	5b45257c-2f69-420b-858f-bca62a5b785d	2026-04-18 16:39:12.302+00	2026-04-18 16:39:12.302+00
6124da9c-2abe-40a0-9d05-d509cae5688a	RETENCION EN LA FUENTE	3.00	1.01	82673a06-e607-4178-9e1c-f89f061dc1f3	2026-04-18 16:39:36.507+00	2026-04-18 16:39:36.507+00
d5fdf09e-d9c3-4ab5-b3f2-a53d2c7ae73c	RETENCION EN LA FUENTE	3.00	0.14	ed7748e2-6547-4e34-84a2-6b7ea2faec6c	2026-04-18 16:40:06.11+00	2026-04-18 16:40:06.11+00
2697707e-655d-419f-a0c1-1806a56a6eee	RETENCION EN LA FUENTE	3.00	0.35	f880026c-1808-4d42-8fab-b47cb0822f5e	2026-04-18 16:40:34.01+00	2026-04-18 16:40:34.01+00
c2626646-19be-476b-b16f-2f875ffdc901	RETENCION EN LA FUENTE	3.00	2.13	9a462d6c-77bc-480a-aa15-8c4de3497284	2026-04-18 16:41:01.002+00	2026-04-18 16:41:01.002+00
7fdd06f4-fff6-4631-93b0-cbfdad0e46ff	RETENCION EN LA FUENTE	3.00	0.22	633033db-dc94-4eef-b96a-52e4edda90fd	2026-04-18 16:41:17.062+00	2026-04-18 16:41:17.062+00
47e3d90f-ba87-4d1e-ae70-e1a6dc4685f5	RETENCION EN LA FUENTE	3.00	2.11	fdcf167b-b29e-40f0-8348-f3a2b41c25ed	2026-04-18 16:41:55.609+00	2026-04-18 16:41:55.609+00
52e90549-861f-414d-ab30-4bec744cf8b8	RETENCION EN LA FUENTE	3.00	13.09	10443cbe-8ece-40ea-bc7b-bba19fb5f68c	2026-04-18 16:42:24.22+00	2026-04-18 16:42:24.22+00
6d93ecca-2829-4ea8-b789-e40eeb7b0fc4	RETENCION EN LA FUENTE	3.00	0.45	548f96fe-1a92-4a9a-9e53-6727b6a9e44f	2026-04-18 16:42:49.498+00	2026-04-18 16:42:49.498+00
298d84ca-829f-4e10-a204-c8369173d41f	RETENCION EN LA FUENTE	3.00	6.79	5d8e4307-2675-4c58-a33d-6b3d0e0cb557	2026-04-18 16:43:19.113+00	2026-04-18 16:43:19.113+00
e8cc19e8-5867-44b2-8d11-536dca722faa	RETENCION EN LA FUENTE	3.00	0.56	2869b678-ff7d-46fc-91e2-fdaf54761817	2026-04-18 16:44:02.001+00	2026-04-18 16:44:02.001+00
6181fb4f-8538-4f7f-89f2-71789fd68d02	RETENCION EN LA FUENTE	3.00	1.67	84f8406d-a951-49bf-a2f2-cc2973ecd9dc	2026-04-18 18:20:23.577+00	2026-04-18 18:20:23.577+00
c62ac70b-e8f3-49f1-a581-1a64fecb1ea4	RETENCION EN LA FUENTE	3.00	0.18	6a196a2a-54e1-4563-ac5e-4c010a921742	2026-04-18 18:39:31.221+00	2026-04-18 18:39:31.221+00
416b58db-af68-4994-bf8c-70f87990091e	RETENCION EN LA FUENTE	3.00	0.69	b4a23599-2866-40a5-a02f-5ced779e1cc4	2026-04-18 19:10:25.139+00	2026-04-18 19:10:25.139+00
39893b27-915f-40f6-b4dc-5bab5c17102d	RETENCION EN LA FUENTE	3.00	0.29	f8ef0cd1-3968-4f51-a8ce-bde6194e7e85	2026-04-20 18:27:17.175+00	2026-04-20 18:27:17.175+00
2a72599c-a88c-4384-8e45-440aa4d4d37d	RETENCION EN LA FUENTE	3.00	0.46	29299a2d-1daa-4ea4-9c6e-e35e15eee98e	2026-04-20 18:28:01.173+00	2026-04-20 18:28:01.173+00
25dd1da4-f4fb-427e-9247-041dc6dec68a	RETENCION EN LA FUENTE	3.00	1.12	838d4d03-2adc-4946-b4b1-3c9d0d0de69f	2026-04-20 18:28:27.304+00	2026-04-20 18:28:27.304+00
52b1e0d5-6ef8-4d0f-bf6f-3748ff23d249	RETENCION EN LA FUENTE	3.00	0.73	7d3ab548-3f06-405c-9354-fc2a1ada48d7	2026-04-20 18:28:54.95+00	2026-04-20 18:28:54.95+00
ab9a5375-b73f-4322-b895-3aae824e2c34	RETENCION EN LA FUENTE	3.00	0.33	9e5f4d44-482a-489d-84c0-974183ba4a8f	2026-04-20 18:29:25.626+00	2026-04-20 18:29:25.626+00
95bfa7e3-6e0e-460f-a8a5-a1910665cdeb	RETENCION EN LA FUENTE	3.00	4.28	a58c3a78-bc1f-428c-bfb8-1bf34ebb6095	2026-04-20 18:29:51.908+00	2026-04-20 18:29:51.908+00
d304faa5-0e79-4b28-bd32-f7f405475b0c	RETENCION EN LA FUENTE	3.00	0.07	8f283c32-8456-4bda-a012-2a8ca23c8a0c	2026-04-20 18:30:35.145+00	2026-04-20 18:30:35.145+00
8e614a72-ac1d-413d-a748-b1863eac0f0f	RETENCION EN LA FUENTE	3.00	8.81	c4e1ee5c-96a3-437f-b489-fdbc3302e592	2026-04-20 18:31:06.948+00	2026-04-20 18:31:06.948+00
3c3acc8d-2f71-423c-b3d0-78ef4cec25ec	RETENCION EN LA FUENTE	3.00	8.21	aaa2bb63-6f82-4d5f-a444-11caa0eb7b1a	2026-04-20 18:31:31.913+00	2026-04-20 18:31:31.913+00
b0fbf76f-51a1-4a86-81b1-84967ab3109d	RETENCION EN LA FUENTE	3.00	0.07	88084d5f-78fa-4a7d-b97c-0c6103237e06	2026-04-20 18:32:26.313+00	2026-04-20 18:32:26.313+00
8f3a6755-f582-44b9-a681-22fc2abed22b	RETENCION EN LA FUENTE	3.00	0.23	e9baae56-4a3c-4d22-bfaa-fe8e2eac324b	2026-04-20 18:32:47.103+00	2026-04-20 18:32:47.103+00
47830b70-8bb9-4c4a-91e3-b30802e15cca	RETENCION EN LA FUENTE	3.00	1.69	93cd60f0-6173-4813-bba1-9db69ed604d0	2026-04-20 18:53:46.78+00	2026-04-20 18:53:46.78+00
b5e2a004-4c32-4428-ae4b-745ac69b1abf	RETENCION EN LA FUENTE	5.00	0.56	f492a289-02ac-4fbd-a052-475254942c08	2026-04-20 19:37:05.412+00	2026-04-20 19:37:05.412+00
27671530-36ed-4919-a440-c7ff3c95c2df	RETENCION EN LA FUENTE	3.00	0.45	abb6dda1-7878-4213-a278-f4741521a8e2	2026-04-20 19:37:33.441+00	2026-04-20 19:37:33.441+00
8335138b-43b9-4719-afa9-ed1fa75aa8fa	RETENCION EN LA FUENTE	3.00	0.48	4062d69a-e302-42e4-af7c-c2a9ee2304c6	2026-04-21 20:05:25.045+00	2026-04-21 20:05:25.045+00
a75443e6-e969-4f9c-8b2a-7b032318c476	RETENCION EN LA FUENTE	3.00	0.03	3f244ee8-955b-4805-ae87-396335d8e5ed	2026-04-21 20:05:50.819+00	2026-04-21 20:05:50.819+00
1d4bcef7-9982-4f76-ac9f-bcacdfd38e41	RETENCION EN LA FUENTE	3.00	0.13	d2ac5cac-554f-4fa4-b146-8471735f6305	2026-04-21 21:44:26.508+00	2026-04-21 21:44:26.508+00
e0243b49-3ad6-45c0-bf60-8eff4a504466	RETENCION EN LA FUENTE	3.00	10.76	9182a162-697c-4d3d-80d5-df70b1d4cf5b	2026-04-22 16:19:44.042+00	2026-04-22 16:19:44.042+00
2fe03cf7-a00c-48f6-945d-d55861db43a5	RETENCION EN LA FUENTE	3.00	2.90	51004751-0c13-4d1f-a48b-6683056dc52c	2026-04-22 16:20:09.141+00	2026-04-22 16:20:09.141+00
e89a2c1a-f7cc-4432-9662-b00ad902b9b1	RETENCION EN LA FUENTE	3.00	0.91	741b65b5-c114-4af6-8f4a-22a9f642ce87	2026-04-22 16:20:43.244+00	2026-04-22 16:20:43.244+00
62b10bb7-1bd8-4e04-8dc5-6ff386b56c30	RETENCION EN LA FUENTE	3.00	1.45	23fb2688-8864-40ec-af64-3a514d25ee9f	2026-04-22 16:21:10.507+00	2026-04-22 16:21:10.507+00
b7c4dd7e-b5d0-46fd-8180-1418df03599b	RETENCION EN LA FUENTE	3.00	5.76	c70fdb82-e86e-45de-b502-40762904ff96	2026-04-22 16:22:11.851+00	2026-04-22 16:22:11.851+00
4707ebcb-6dd0-4b66-a1d6-8d2dbc5e2c9f	RETENCION EN LA FUENTE	3.00	0.51	92207935-fe77-4e60-ad07-69a1e6cb5088	2026-04-22 16:22:37.303+00	2026-04-22 16:22:37.303+00
a0dd9a6f-61d0-4445-ae8f-5f0c62537da1	RETENCION EN LA FUENTE	3.00	4.78	4ad33dd9-5416-4923-9f8a-752185d65d8a	2026-04-22 16:23:09.812+00	2026-04-22 16:23:09.812+00
40404e7d-cad1-46ce-9063-683f020b3498	RETENCION EN LA FUENTE	3.00	2.46	01a96358-40e6-4495-9bf9-152614b63b24	2026-04-22 16:23:45.722+00	2026-04-22 16:23:45.722+00
460af6a0-6dd2-413f-8cf3-af2679e6261c	RETENCION EN LA FUENTE	3.00	0.33	3073efcb-b310-4754-83ba-f62b758af0b7	2026-04-22 16:24:17.3+00	2026-04-22 16:24:17.3+00
93d167f0-a9a2-42fe-a727-1cf31b08c834	RETENCION EN LA FUENTE	3.00	3.75	6b1c55fb-3348-4d46-baca-cf413f7d59a8	2026-04-22 16:24:43.916+00	2026-04-22 16:24:43.916+00
ae7cddf3-60a5-4e8c-9cfa-10f4a8cce8fe	RETENCION EN LA FUENTE	3.00	0.69	41d36de8-c883-4cf2-9afc-c0c92f46d987	2026-04-22 16:25:10.409+00	2026-04-22 16:25:10.409+00
27d9727e-d125-478b-b8fb-aa72726b2b68	RETENCION EN LA FUENTE	3.00	0.32	3c21d9a9-711b-449e-b8ba-2122acb13a7a	2026-04-22 18:52:10.404+00	2026-04-22 18:52:10.404+00
809c7a2e-627a-4fd4-aaa5-87daaa9676d8	RETENCION EN LA FUENTE	3.00	0.54	75ff738d-e8fb-466d-9147-9c38d8a3dd4a	2026-04-22 22:13:58.267+00	2026-04-22 22:13:58.267+00
43f83c0a-516e-48cd-a64f-5604c9f251cd	RETENCION EN LA FUENTE	3.00	0.74	29135cb7-eae5-4b68-9605-db3db12f8e1a	2026-04-23 16:19:47.197+00	2026-04-23 16:19:47.197+00
9c4f8435-c9c5-4868-a7c2-0976d66d4d93	RETENCION EN LA FUENTE	3.00	0.21	41f5865e-1f22-4b88-86d4-e73b1895e666	2026-04-23 16:20:59.412+00	2026-04-23 16:20:59.412+00
b6279887-66ac-42ba-9b79-5ba567c2bdc2	RETENCION EN LA FUENTE	3.00	1.89	8f1b7c8c-7a0c-428b-8453-172372ceb04c	2026-04-23 19:19:04.222+00	2026-04-23 19:19:04.222+00
0844a352-8492-47d0-9b76-144742477d08	RETENCION EN LA FUENTE	3.00	2.62	41cd734a-127f-43c3-9c76-9b5b320ad2a8	2026-04-23 19:19:58.003+00	2026-04-23 19:19:58.003+00
dd9d5d17-2dbc-477b-ba3f-e9bd966a9728	RETENCION EN LA FUENTE	3.00	2.70	9d28c3af-36ad-4e2c-80ec-68f0bfda7d52	2026-04-23 19:20:35.604+00	2026-04-23 19:20:35.604+00
72f19f8d-6124-4c5a-96a1-c8e5519b13fc	RETENCION EN LA FUENTE	3.00	2.23	cf098947-1f6e-4c98-a7d6-ada331c0b22c	2026-04-23 19:21:10.144+00	2026-04-23 19:21:10.144+00
f0515472-ad1a-4ce4-93c6-f3c7c246c963	RETENCION EN LA FUENTE	3.00	0.29	65e19210-8f3b-45ee-a61a-8caf7e9e4299	2026-04-23 22:07:44.039+00	2026-04-23 22:07:44.039+00
64b47993-171c-4dcf-b1a1-5f30cdab7067	RETENCION EN LA FUENTE	3.00	0.20	f8d85c75-07cd-40e8-9a0f-896c6c3adce1	2026-04-24 16:11:46.647+00	2026-04-24 16:11:46.647+00
5ea921dc-ff4c-44f2-9b8e-348567dd962e	RETENCION EN LA FUENTE	3.00	0.32	607a7eae-5530-4ead-8ac2-9e3d7693bf86	2026-04-24 16:13:52.435+00	2026-04-24 16:13:52.435+00
eba4b98a-8cff-4cc6-8093-9eefadb0aac8	RETENCION EN LA FUENTE	3.00	5.04	e2eb8312-c8e4-43f9-a19d-a0a1f8bf77b5	2026-04-24 16:14:27.935+00	2026-04-24 16:14:27.935+00
916f16e1-c2ac-451f-95f6-1755272fc693	RETENCION EN LA FUENTE	3.00	7.71	4c122956-9835-479b-b840-53b9ba744a8a	2026-04-24 16:14:55.042+00	2026-04-24 16:14:55.042+00
cdbd84c3-c0b1-4b8f-a06f-469ff56fc00c	RETENCION EN LA FUENTE	3.00	3.40	994992f1-a279-495f-8cd9-d30d7a5ecaa1	2026-04-24 16:15:40.206+00	2026-04-24 16:15:40.206+00
c57c6bce-c36a-4c71-a5d5-40e4a2b0e9c7	RETENCION EN LA FUENTE	3.00	1.33	c3de2cff-05d9-40f9-919a-d4ef73c97adb	2026-04-24 16:16:14.801+00	2026-04-24 16:16:14.801+00
f1ec0e5a-9153-4481-b297-db608a7ce28d	RETENCION EN LA FUENTE	3.00	0.88	48bfd55a-d6dc-48af-9152-e5108edd2310	2026-04-24 16:16:39.905+00	2026-04-24 16:16:39.905+00
445458be-8a44-43e9-beb5-80272e28a888	RETENCION EN LA FUENTE	3.00	0.54	5184eb37-cc60-40f9-8b16-240a013fe17a	2026-04-24 16:18:14.916+00	2026-04-24 16:18:14.916+00
6d440117-959c-412e-a068-9faf39bf11a4	RETENCION EN LA FUENTE	3.00	0.18	68d0931d-f383-4c7c-bcbe-4b574dc57a65	2026-04-24 16:46:27.022+00	2026-04-24 16:46:27.022+00
ca6d400f-e981-4312-b7e7-25435c94e5e2	RETENCION EN LA FUENTE	3.00	0.61	749a8d09-7bfa-4c9d-9534-b61de4abcc0d	2026-04-24 17:38:36.638+00	2026-04-24 17:38:36.638+00
e40a81b6-ac12-4f68-b9fd-124df83018b9	RETENCION EN LA FUENTE	3.00	1.87	dff66696-2db6-4bbd-86af-372fbcfeb6fc	2026-04-24 17:39:44.441+00	2026-04-24 17:39:44.441+00
50836906-9ace-47cb-9870-916414738c19	RETENCION EN LA FUENTE	3.00	0.43	9b195358-10f7-4fbd-985a-7c6d2ab8ce56	2026-04-24 18:52:44.638+00	2026-04-24 18:52:44.638+00
31b3820a-64f3-4bb9-87c8-3dc0dbe79f8f	RETENCION EN LA FUENTE	3.00	0.96	a655643f-b65a-4419-97d3-b82ff0177bc3	2026-04-24 21:16:07.338+00	2026-04-24 21:16:07.338+00
\.


--
-- Data for Name: Tickets; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Tickets" (id, numero, "identificacionTemporal", "placaVehiculo", "pesoBruto", "taraVehiculo", "pesoNeto", "fechaIngreso", "estadoTicket", "ProductoId") FROM stdin;
\.


--
-- Data for Name: Usuarios; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Usuarios" (id, "nombresCompletos", cedula, telefono, correo, clave, rol, "estaActivo", "createdAt", "updatedAt") FROM stdin;
436e223e-918f-4b80-b807-69d1ab32a934	Super Administrador	0940501596	0967148226	crisrodam1996@gmail.com	$2b$13$s4Zz3AVkv9.PJW316Y0jSOoVIFscr7LuSIxmNXWYHydajKJxdvuw2	Administrador	t	2026-03-28 19:19:41.859+00	2026-03-28 19:19:41.859+00
\.


--
-- Data for Name: Ventas; Type: TABLE DATA; Schema: public; Owner: aroma_de_oro_user
--

COPY public."Ventas" (id, "codigoVenta", unidad, "cantidadBruta", calificacion, impurezas, "descuentoMerma", "cantidadNeta", "precioUnitario", "totalFactura", "retencionConcepto", "retencionPorcentaje", "valorRetenido", "montoAnticipo", "totalALiquidar", "montoAbonado", "montoPendiente", "tipoVenta", "PersonaId", "ProductoId", "UsuarioId", "CajaId", "createdAt", "updatedAt", "pagoEfectivo", "pagoTransferencia", "pagoCheque") FROM stdin;
7d0243a3-ced6-45ca-a5cf-223320fce070	VNT-0000001	Libras	7505.00	0.00	0.00	7429.95	75.05	128.00	9606.40	\N	0.00	0.00	0.00	9606.40	9606.40	0.00	Contado	49402d3e-eca4-497f-a67a-50c740883dd3	27a59f8d-af5a-42a9-8d13-02b5f866034d	436e223e-918f-4b80-b807-69d1ab32a934	64b0cd09-31ef-474a-ab70-7c5dbbe5ccae	2026-04-07 16:43:14.268+00	2026-04-07 16:43:14.268+00	0.00	0.00	0.00
\.


--
-- Name: AbonosCuentasPorCobrar AbonosCuentasPorCobrar_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."AbonosCuentasPorCobrar"
    ADD CONSTRAINT "AbonosCuentasPorCobrar_pkey" PRIMARY KEY (id);


--
-- Name: AbonosCuentasPorPagar AbonosCuentasPorPagar_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."AbonosCuentasPorPagar"
    ADD CONSTRAINT "AbonosCuentasPorPagar_pkey" PRIMARY KEY (id);


--
-- Name: Anticipos Anticipos_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Anticipos"
    ADD CONSTRAINT "Anticipos_pkey" PRIMARY KEY (id);


--
-- Name: Cajas Cajas_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Cajas"
    ADD CONSTRAINT "Cajas_pkey" PRIMARY KEY (id);


--
-- Name: CuentasPorCobrar CuentasPorCobrar_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."CuentasPorCobrar"
    ADD CONSTRAINT "CuentasPorCobrar_pkey" PRIMARY KEY (id);


--
-- Name: CuentasPorPagar CuentasPorPagar_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."CuentasPorPagar"
    ADD CONSTRAINT "CuentasPorPagar_pkey" PRIMARY KEY (id);


--
-- Name: DetalleLiquidaciones DetalleLiquidaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."DetalleLiquidaciones"
    ADD CONSTRAINT "DetalleLiquidaciones_pkey" PRIMARY KEY (id);


--
-- Name: Empresa Empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Empresa"
    ADD CONSTRAINT "Empresa_pkey" PRIMARY KEY (id);


--
-- Name: Gastos Gastos_codigo_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key1; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key1" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key10; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key10" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key100; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key100" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key101; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key101" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key102; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key102" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key103; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key103" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key104; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key104" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key105; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key105" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key106; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key106" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key107; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key107" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key108; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key108" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key109; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key109" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key11; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key11" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key110; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key110" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key111; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key111" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key112; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key112" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key113; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key113" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key114; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key114" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key115; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key115" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key116; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key116" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key117; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key117" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key118; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key118" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key119; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key119" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key12; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key12" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key120; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key120" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key121; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key121" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key122; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key122" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key123; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key123" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key124; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key124" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key125; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key125" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key126; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key126" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key127; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key127" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key128; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key128" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key129; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key129" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key13; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key13" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key130; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key130" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key131; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key131" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key132; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key132" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key133; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key133" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key134; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key134" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key135; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key135" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key136; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key136" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key137; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key137" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key138; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key138" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key139; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key139" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key14; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key14" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key140; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key140" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key141; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key141" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key142; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key142" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key143; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key143" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key144; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key144" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key145; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key145" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key146; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key146" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key147; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key147" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key148; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key148" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key149; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key149" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key15; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key15" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key150; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key150" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key151; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key151" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key152; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key152" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key153; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key153" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key154; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key154" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key155; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key155" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key156; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key156" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key157; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key157" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key158; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key158" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key159; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key159" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key16; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key16" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key160; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key160" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key161; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key161" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key162; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key162" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key163; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key163" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key164; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key164" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key165; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key165" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key166; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key166" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key167; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key167" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key168; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key168" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key169; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key169" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key17; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key17" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key170; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key170" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key171; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key171" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key172; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key172" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key173; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key173" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key174; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key174" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key18; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key18" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key19; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key19" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key2; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key2" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key20; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key20" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key21; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key21" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key22; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key22" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key23; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key23" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key24; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key24" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key25; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key25" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key26; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key26" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key27; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key27" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key28; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key28" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key29; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key29" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key3; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key3" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key30; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key30" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key31; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key31" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key32; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key32" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key33; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key33" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key34; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key34" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key35; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key35" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key36; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key36" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key37; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key37" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key38; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key38" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key39; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key39" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key4; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key4" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key40; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key40" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key41; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key41" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key42; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key42" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key43; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key43" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key44; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key44" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key45; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key45" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key46; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key46" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key47; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key47" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key48; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key48" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key49; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key49" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key5; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key5" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key50; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key50" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key51; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key51" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key52; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key52" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key53; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key53" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key54; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key54" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key55; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key55" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key56; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key56" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key57; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key57" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key58; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key58" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key59; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key59" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key6; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key6" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key60; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key60" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key61; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key61" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key62; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key62" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key63; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key63" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key64; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key64" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key65; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key65" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key66; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key66" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key67; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key67" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key68; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key68" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key69; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key69" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key7; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key7" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key70; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key70" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key71; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key71" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key72; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key72" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key73; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key73" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key74; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key74" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key75; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key75" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key76; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key76" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key77; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key77" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key78; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key78" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key79; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key79" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key8; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key8" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key80; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key80" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key81; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key81" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key82; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key82" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key83; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key83" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key84; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key84" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key85; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key85" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key86; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key86" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key87; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key87" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key88; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key88" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key89; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key89" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key9; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key9" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key90; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key90" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key91; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key91" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key92; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key92" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key93; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key93" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key94; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key94" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key95; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key95" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key96; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key96" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key97; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key97" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key98; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key98" UNIQUE (codigo);


--
-- Name: Gastos Gastos_codigo_key99; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_codigo_key99" UNIQUE (codigo);


--
-- Name: Gastos Gastos_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_pkey" PRIMARY KEY (id);


--
-- Name: LiquidacionAnticipos LiquidacionAnticipos_AnticipoId_LiquidacionId_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."LiquidacionAnticipos"
    ADD CONSTRAINT "LiquidacionAnticipos_AnticipoId_LiquidacionId_key" UNIQUE ("AnticipoId", "LiquidacionId");


--
-- Name: LiquidacionAnticipos LiquidacionAnticipos_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."LiquidacionAnticipos"
    ADD CONSTRAINT "LiquidacionAnticipos_pkey" PRIMARY KEY (id);


--
-- Name: Liquidaciones Liquidaciones_codigo_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key1; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key1" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key10; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key10" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key100; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key100" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key101; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key101" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key102; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key102" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key103; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key103" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key104; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key104" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key105; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key105" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key106; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key106" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key107; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key107" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key108; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key108" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key109; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key109" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key11; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key11" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key110; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key110" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key111; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key111" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key112; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key112" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key113; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key113" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key114; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key114" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key115; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key115" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key116; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key116" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key117; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key117" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key118; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key118" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key119; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key119" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key12; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key12" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key120; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key120" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key121; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key121" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key122; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key122" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key123; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key123" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key124; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key124" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key125; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key125" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key126; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key126" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key127; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key127" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key128; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key128" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key129; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key129" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key13; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key13" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key130; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key130" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key131; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key131" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key132; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key132" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key133; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key133" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key134; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key134" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key135; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key135" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key136; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key136" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key137; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key137" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key138; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key138" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key139; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key139" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key14; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key14" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key140; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key140" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key141; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key141" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key142; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key142" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key143; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key143" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key144; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key144" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key145; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key145" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key146; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key146" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key147; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key147" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key148; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key148" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key149; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key149" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key15; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key15" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key150; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key150" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key151; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key151" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key152; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key152" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key153; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key153" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key154; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key154" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key155; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key155" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key156; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key156" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key157; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key157" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key158; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key158" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key159; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key159" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key16; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key16" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key160; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key160" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key161; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key161" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key162; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key162" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key163; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key163" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key164; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key164" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key165; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key165" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key166; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key166" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key167; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key167" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key168; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key168" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key169; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key169" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key17; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key17" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key170; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key170" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key171; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key171" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key172; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key172" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key173; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key173" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key174; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key174" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key175; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key175" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key176; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key176" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key18; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key18" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key19; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key19" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key2; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key2" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key20; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key20" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key21; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key21" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key22; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key22" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key23; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key23" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key24; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key24" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key25; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key25" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key26; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key26" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key27; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key27" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key28; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key28" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key29; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key29" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key3; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key3" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key30; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key30" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key31; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key31" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key32; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key32" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key33; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key33" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key34; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key34" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key35; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key35" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key36; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key36" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key37; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key37" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key38; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key38" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key39; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key39" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key4; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key4" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key40; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key40" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key41; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key41" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key42; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key42" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key43; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key43" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key44; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key44" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key45; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key45" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key46; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key46" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key47; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key47" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key48; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key48" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key49; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key49" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key5; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key5" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key50; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key50" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key51; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key51" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key52; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key52" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key53; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key53" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key54; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key54" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key55; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key55" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key56; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key56" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key57; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key57" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key58; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key58" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key59; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key59" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key6; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key6" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key60; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key60" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key61; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key61" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key62; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key62" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key63; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key63" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key64; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key64" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key65; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key65" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key66; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key66" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key67; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key67" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key68; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key68" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key69; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key69" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key7; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key7" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key70; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key70" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key71; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key71" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key72; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key72" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key73; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key73" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key74; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key74" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key75; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key75" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key76; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key76" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key77; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key77" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key78; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key78" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key79; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key79" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key8; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key8" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key80; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key80" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key81; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key81" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key82; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key82" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key83; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key83" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key84; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key84" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key85; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key85" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key86; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key86" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key87; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key87" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key88; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key88" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key89; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key89" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key9; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key9" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key90; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key90" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key91; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key91" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key92; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key92" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key93; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key93" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key94; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key94" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key95; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key95" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key96; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key96" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key97; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key97" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key98; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key98" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_codigo_key99; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_codigo_key99" UNIQUE (codigo);


--
-- Name: Liquidaciones Liquidaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_pkey" PRIMARY KEY (id);


--
-- Name: Movimientos Movimientos_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Movimientos"
    ADD CONSTRAINT "Movimientos_pkey" PRIMARY KEY (id);


--
-- Name: Nominas Nominas_codigo_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key1; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key1" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key10; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key10" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key100; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key100" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key101; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key101" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key102; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key102" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key103; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key103" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key104; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key104" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key105; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key105" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key106; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key106" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key107; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key107" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key108; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key108" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key109; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key109" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key11; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key11" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key110; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key110" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key111; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key111" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key112; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key112" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key113; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key113" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key114; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key114" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key115; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key115" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key116; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key116" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key117; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key117" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key118; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key118" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key119; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key119" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key12; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key12" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key120; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key120" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key121; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key121" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key122; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key122" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key123; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key123" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key124; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key124" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key125; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key125" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key126; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key126" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key127; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key127" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key128; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key128" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key129; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key129" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key13; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key13" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key130; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key130" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key131; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key131" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key132; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key132" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key133; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key133" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key134; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key134" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key135; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key135" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key136; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key136" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key137; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key137" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key138; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key138" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key139; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key139" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key14; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key14" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key140; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key140" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key141; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key141" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key142; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key142" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key143; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key143" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key144; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key144" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key145; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key145" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key146; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key146" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key147; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key147" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key148; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key148" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key149; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key149" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key15; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key15" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key150; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key150" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key151; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key151" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key152; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key152" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key153; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key153" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key154; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key154" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key155; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key155" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key156; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key156" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key157; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key157" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key158; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key158" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key159; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key159" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key16; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key16" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key160; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key160" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key161; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key161" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key162; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key162" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key163; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key163" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key164; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key164" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key165; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key165" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key166; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key166" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key167; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key167" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key168; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key168" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key169; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key169" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key17; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key17" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key170; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key170" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key171; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key171" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key172; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key172" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key173; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key173" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key174; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key174" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key175; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key175" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key176; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key176" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key18; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key18" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key19; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key19" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key2; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key2" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key20; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key20" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key21; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key21" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key22; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key22" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key23; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key23" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key24; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key24" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key25; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key25" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key26; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key26" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key27; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key27" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key28; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key28" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key29; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key29" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key3; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key3" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key30; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key30" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key31; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key31" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key32; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key32" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key33; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key33" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key34; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key34" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key35; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key35" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key36; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key36" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key37; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key37" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key38; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key38" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key39; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key39" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key4; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key4" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key40; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key40" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key41; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key41" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key42; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key42" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key43; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key43" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key44; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key44" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key45; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key45" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key46; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key46" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key47; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key47" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key48; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key48" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key49; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key49" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key5; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key5" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key50; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key50" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key51; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key51" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key52; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key52" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key53; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key53" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key54; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key54" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key55; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key55" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key56; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key56" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key57; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key57" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key58; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key58" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key59; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key59" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key6; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key6" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key60; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key60" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key61; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key61" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key62; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key62" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key63; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key63" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key64; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key64" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key65; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key65" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key66; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key66" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key67; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key67" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key68; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key68" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key69; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key69" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key7; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key7" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key70; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key70" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key71; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key71" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key72; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key72" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key73; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key73" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key74; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key74" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key75; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key75" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key76; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key76" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key77; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key77" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key78; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key78" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key79; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key79" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key8; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key8" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key80; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key80" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key81; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key81" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key82; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key82" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key83; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key83" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key84; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key84" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key85; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key85" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key86; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key86" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key87; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key87" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key88; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key88" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key89; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key89" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key9; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key9" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key90; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key90" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key91; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key91" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key92; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key92" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key93; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key93" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key94; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key94" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key95; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key95" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key96; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key96" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key97; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key97" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key98; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key98" UNIQUE (codigo);


--
-- Name: Nominas Nominas_codigo_key99; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_codigo_key99" UNIQUE (codigo);


--
-- Name: Nominas Nominas_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_pkey" PRIMARY KEY (id);


--
-- Name: Personas Personas_correo_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key1; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key1" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key10; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key10" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key100; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key100" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key101; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key101" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key102; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key102" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key103; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key103" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key104; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key104" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key105; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key105" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key106; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key106" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key107; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key107" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key108; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key108" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key109; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key109" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key11; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key11" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key110; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key110" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key111; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key111" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key112; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key112" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key113; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key113" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key114; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key114" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key115; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key115" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key116; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key116" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key117; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key117" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key118; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key118" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key119; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key119" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key12; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key12" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key120; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key120" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key121; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key121" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key122; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key122" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key123; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key123" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key124; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key124" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key125; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key125" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key126; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key126" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key127; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key127" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key128; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key128" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key129; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key129" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key13; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key13" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key130; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key130" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key131; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key131" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key132; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key132" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key133; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key133" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key134; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key134" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key135; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key135" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key136; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key136" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key137; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key137" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key138; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key138" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key139; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key139" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key14; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key14" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key140; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key140" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key141; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key141" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key142; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key142" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key143; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key143" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key144; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key144" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key145; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key145" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key146; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key146" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key147; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key147" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key148; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key148" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key149; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key149" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key15; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key15" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key150; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key150" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key151; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key151" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key152; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key152" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key153; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key153" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key154; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key154" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key155; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key155" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key156; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key156" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key157; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key157" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key158; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key158" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key159; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key159" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key16; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key16" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key160; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key160" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key161; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key161" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key162; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key162" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key163; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key163" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key164; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key164" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key165; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key165" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key166; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key166" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key167; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key167" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key168; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key168" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key169; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key169" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key17; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key17" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key170; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key170" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key171; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key171" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key172; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key172" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key173; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key173" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key174; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key174" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key175; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key175" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key176; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key176" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key18; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key18" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key19; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key19" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key2; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key2" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key20; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key20" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key21; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key21" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key22; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key22" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key23; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key23" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key24; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key24" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key25; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key25" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key26; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key26" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key27; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key27" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key28; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key28" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key29; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key29" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key3; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key3" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key30; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key30" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key31; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key31" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key32; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key32" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key33; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key33" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key34; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key34" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key35; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key35" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key36; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key36" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key37; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key37" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key38; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key38" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key39; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key39" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key4; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key4" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key40; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key40" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key41; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key41" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key42; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key42" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key43; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key43" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key44; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key44" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key45; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key45" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key46; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key46" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key47; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key47" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key48; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key48" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key49; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key49" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key5; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key5" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key50; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key50" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key51; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key51" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key52; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key52" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key53; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key53" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key54; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key54" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key55; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key55" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key56; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key56" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key57; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key57" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key58; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key58" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key59; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key59" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key6; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key6" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key60; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key60" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key61; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key61" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key62; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key62" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key63; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key63" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key64; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key64" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key65; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key65" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key66; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key66" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key67; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key67" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key68; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key68" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key69; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key69" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key7; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key7" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key70; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key70" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key71; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key71" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key72; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key72" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key73; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key73" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key74; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key74" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key75; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key75" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key76; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key76" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key77; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key77" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key78; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key78" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key79; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key79" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key8; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key8" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key80; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key80" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key81; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key81" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key82; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key82" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key83; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key83" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key84; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key84" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key85; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key85" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key86; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key86" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key87; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key87" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key88; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key88" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key89; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key89" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key9; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key9" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key90; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key90" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key91; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key91" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key92; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key92" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key93; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key93" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key94; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key94" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key95; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key95" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key96; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key96" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key97; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key97" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key98; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key98" UNIQUE (correo);


--
-- Name: Personas Personas_correo_key99; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_correo_key99" UNIQUE (correo);


--
-- Name: Personas Personas_numeroIdentificacion_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key1; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key1" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key10; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key10" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key100; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key100" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key101; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key101" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key102; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key102" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key103; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key103" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key104; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key104" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key105; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key105" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key106; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key106" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key107; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key107" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key108; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key108" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key109; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key109" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key11; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key11" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key110; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key110" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key111; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key111" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key112; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key112" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key113; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key113" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key114; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key114" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key115; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key115" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key116; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key116" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key117; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key117" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key118; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key118" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key119; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key119" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key12; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key12" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key120; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key120" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key121; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key121" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key122; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key122" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key123; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key123" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key124; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key124" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key125; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key125" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key126; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key126" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key127; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key127" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key128; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key128" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key129; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key129" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key13; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key13" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key130; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key130" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key131; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key131" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key132; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key132" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key133; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key133" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key134; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key134" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key135; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key135" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key136; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key136" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key137; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key137" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key138; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key138" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key139; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key139" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key14; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key14" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key140; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key140" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key141; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key141" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key142; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key142" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key143; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key143" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key144; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key144" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key145; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key145" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key146; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key146" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key147; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key147" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key148; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key148" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key149; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key149" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key15; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key15" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key150; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key150" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key151; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key151" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key152; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key152" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key153; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key153" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key154; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key154" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key155; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key155" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key156; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key156" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key157; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key157" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key158; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key158" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key159; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key159" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key16; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key16" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key160; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key160" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key161; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key161" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key162; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key162" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key163; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key163" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key164; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key164" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key165; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key165" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key166; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key166" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key167; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key167" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key168; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key168" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key169; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key169" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key17; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key17" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key170; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key170" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key171; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key171" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key172; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key172" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key173; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key173" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key174; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key174" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key175; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key175" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key176; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key176" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key18; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key18" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key19; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key19" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key2; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key2" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key20; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key20" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key21; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key21" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key22; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key22" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key23; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key23" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key24; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key24" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key25; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key25" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key26; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key26" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key27; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key27" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key28; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key28" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key29; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key29" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key3; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key3" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key30; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key30" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key31; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key31" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key32; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key32" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key33; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key33" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key34; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key34" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key35; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key35" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key36; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key36" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key37; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key37" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key38; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key38" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key39; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key39" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key4; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key4" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key40; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key40" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key41; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key41" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key42; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key42" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key43; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key43" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key44; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key44" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key45; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key45" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key46; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key46" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key47; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key47" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key48; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key48" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key49; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key49" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key5; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key5" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key50; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key50" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key51; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key51" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key52; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key52" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key53; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key53" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key54; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key54" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key55; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key55" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key56; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key56" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key57; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key57" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key58; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key58" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key59; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key59" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key6; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key6" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key60; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key60" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key61; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key61" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key62; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key62" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key63; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key63" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key64; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key64" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key65; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key65" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key66; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key66" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key67; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key67" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key68; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key68" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key69; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key69" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key7; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key7" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key70; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key70" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key71; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key71" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key72; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key72" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key73; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key73" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key74; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key74" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key75; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key75" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key76; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key76" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key77; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key77" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key78; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key78" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key79; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key79" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key8; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key8" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key80; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key80" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key81; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key81" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key82; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key82" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key83; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key83" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key84; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key84" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key85; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key85" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key86; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key86" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key87; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key87" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key88; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key88" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key89; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key89" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key9; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key9" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key90; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key90" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key91; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key91" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key92; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key92" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key93; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key93" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key94; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key94" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key95; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key95" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key96; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key96" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key97; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key97" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key98; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key98" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_numeroIdentificacion_key99; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_numeroIdentificacion_key99" UNIQUE ("numeroIdentificacion");


--
-- Name: Personas Personas_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Personas"
    ADD CONSTRAINT "Personas_pkey" PRIMARY KEY (id);


--
-- Name: Prestamos Prestamos_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Prestamos_pkey" PRIMARY KEY (id);


--
-- Name: Productos Productos_nombre_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key1; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key1" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key10; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key10" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key100; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key100" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key101; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key101" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key102; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key102" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key103; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key103" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key104; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key104" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key105; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key105" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key106; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key106" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key107; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key107" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key108; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key108" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key109; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key109" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key11; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key11" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key110; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key110" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key111; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key111" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key112; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key112" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key113; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key113" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key114; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key114" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key115; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key115" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key116; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key116" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key117; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key117" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key118; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key118" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key119; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key119" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key12; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key12" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key120; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key120" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key121; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key121" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key122; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key122" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key123; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key123" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key124; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key124" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key125; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key125" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key126; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key126" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key127; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key127" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key128; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key128" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key129; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key129" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key13; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key13" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key130; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key130" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key131; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key131" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key132; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key132" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key133; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key133" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key134; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key134" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key135; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key135" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key136; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key136" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key137; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key137" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key138; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key138" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key139; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key139" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key14; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key14" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key140; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key140" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key141; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key141" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key142; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key142" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key143; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key143" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key144; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key144" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key145; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key145" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key146; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key146" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key147; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key147" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key148; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key148" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key149; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key149" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key15; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key15" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key150; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key150" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key151; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key151" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key152; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key152" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key153; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key153" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key154; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key154" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key155; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key155" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key156; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key156" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key157; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key157" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key158; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key158" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key159; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key159" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key16; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key16" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key160; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key160" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key161; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key161" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key162; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key162" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key163; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key163" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key164; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key164" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key165; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key165" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key166; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key166" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key167; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key167" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key168; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key168" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key169; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key169" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key17; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key17" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key170; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key170" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key171; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key171" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key172; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key172" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key173; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key173" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key174; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key174" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key175; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key175" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key176; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key176" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key18; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key18" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key19; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key19" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key2; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key2" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key20; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key20" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key21; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key21" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key22; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key22" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key23; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key23" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key24; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key24" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key25; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key25" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key26; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key26" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key27; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key27" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key28; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key28" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key29; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key29" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key3; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key3" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key30; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key30" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key31; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key31" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key32; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key32" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key33; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key33" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key34; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key34" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key35; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key35" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key36; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key36" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key37; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key37" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key38; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key38" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key39; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key39" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key4; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key4" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key40; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key40" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key41; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key41" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key42; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key42" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key43; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key43" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key44; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key44" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key45; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key45" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key46; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key46" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key47; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key47" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key48; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key48" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key49; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key49" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key5; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key5" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key50; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key50" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key51; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key51" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key52; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key52" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key53; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key53" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key54; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key54" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key55; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key55" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key56; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key56" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key57; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key57" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key58; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key58" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key59; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key59" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key6; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key6" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key60; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key60" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key61; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key61" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key62; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key62" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key63; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key63" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key64; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key64" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key65; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key65" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key66; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key66" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key67; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key67" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key68; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key68" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key69; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key69" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key7; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key7" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key70; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key70" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key71; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key71" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key72; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key72" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key73; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key73" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key74; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key74" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key75; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key75" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key76; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key76" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key77; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key77" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key78; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key78" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key79; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key79" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key8; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key8" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key80; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key80" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key81; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key81" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key82; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key82" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key83; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key83" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key84; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key84" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key85; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key85" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key86; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key86" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key87; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key87" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key88; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key88" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key89; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key89" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key9; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key9" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key90; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key90" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key91; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key91" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key92; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key92" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key93; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key93" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key94; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key94" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key95; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key95" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key96; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key96" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key97; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key97" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key98; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key98" UNIQUE (nombre);


--
-- Name: Productos Productos_nombre_key99; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_nombre_key99" UNIQUE (nombre);


--
-- Name: Productos Productos_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_pkey" PRIMARY KEY (id);


--
-- Name: Reportes Reportes_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Reportes"
    ADD CONSTRAINT "Reportes_pkey" PRIMARY KEY (id);


--
-- Name: Respaldos Respaldos_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Respaldos"
    ADD CONSTRAINT "Respaldos_pkey" PRIMARY KEY (id);


--
-- Name: Retenciones Retenciones_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Retenciones"
    ADD CONSTRAINT "Retenciones_pkey" PRIMARY KEY (id);


--
-- Name: Tickets Tickets_numero_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key1; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key1" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key10; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key10" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key100; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key100" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key101; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key101" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key102; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key102" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key103; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key103" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key104; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key104" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key105; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key105" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key106; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key106" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key107; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key107" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key108; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key108" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key109; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key109" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key11; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key11" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key110; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key110" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key111; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key111" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key112; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key112" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key113; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key113" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key114; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key114" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key115; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key115" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key116; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key116" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key117; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key117" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key118; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key118" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key119; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key119" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key12; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key12" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key120; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key120" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key121; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key121" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key122; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key122" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key123; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key123" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key124; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key124" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key125; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key125" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key126; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key126" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key127; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key127" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key128; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key128" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key129; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key129" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key13; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key13" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key130; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key130" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key131; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key131" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key132; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key132" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key133; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key133" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key134; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key134" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key135; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key135" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key136; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key136" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key137; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key137" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key138; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key138" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key139; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key139" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key14; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key14" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key140; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key140" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key141; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key141" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key142; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key142" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key143; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key143" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key144; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key144" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key145; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key145" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key146; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key146" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key147; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key147" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key148; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key148" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key149; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key149" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key15; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key15" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key150; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key150" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key151; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key151" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key152; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key152" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key153; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key153" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key154; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key154" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key155; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key155" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key156; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key156" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key157; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key157" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key158; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key158" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key159; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key159" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key16; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key16" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key160; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key160" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key161; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key161" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key162; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key162" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key163; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key163" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key164; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key164" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key165; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key165" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key166; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key166" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key167; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key167" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key168; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key168" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key169; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key169" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key17; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key17" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key170; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key170" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key171; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key171" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key172; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key172" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key173; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key173" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key174; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key174" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key175; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key175" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key176; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key176" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key18; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key18" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key19; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key19" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key2; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key2" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key20; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key20" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key21; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key21" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key22; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key22" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key23; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key23" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key24; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key24" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key25; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key25" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key26; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key26" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key27; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key27" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key28; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key28" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key29; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key29" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key3; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key3" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key30; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key30" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key31; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key31" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key32; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key32" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key33; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key33" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key34; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key34" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key35; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key35" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key36; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key36" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key37; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key37" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key38; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key38" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key39; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key39" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key4; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key4" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key40; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key40" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key41; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key41" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key42; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key42" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key43; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key43" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key44; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key44" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key45; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key45" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key46; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key46" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key47; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key47" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key48; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key48" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key49; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key49" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key5; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key5" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key50; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key50" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key51; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key51" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key52; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key52" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key53; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key53" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key54; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key54" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key55; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key55" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key56; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key56" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key57; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key57" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key58; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key58" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key59; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key59" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key6; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key6" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key60; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key60" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key61; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key61" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key62; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key62" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key63; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key63" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key64; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key64" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key65; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key65" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key66; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key66" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key67; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key67" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key68; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key68" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key69; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key69" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key7; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key7" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key70; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key70" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key71; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key71" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key72; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key72" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key73; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key73" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key74; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key74" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key75; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key75" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key76; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key76" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key77; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key77" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key78; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key78" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key79; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key79" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key8; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key8" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key80; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key80" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key81; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key81" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key82; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key82" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key83; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key83" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key84; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key84" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key85; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key85" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key86; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key86" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key87; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key87" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key88; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key88" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key89; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key89" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key9; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key9" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key90; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key90" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key91; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key91" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key92; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key92" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key93; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key93" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key94; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key94" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key95; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key95" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key96; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key96" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key97; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key97" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key98; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key98" UNIQUE (numero);


--
-- Name: Tickets Tickets_numero_key99; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_numero_key99" UNIQUE (numero);


--
-- Name: Tickets Tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_pkey" PRIMARY KEY (id);


--
-- Name: Usuarios Usuarios_cedula_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key1; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key1" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key10; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key10" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key100; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key100" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key101; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key101" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key102; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key102" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key103; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key103" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key104; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key104" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key105; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key105" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key106; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key106" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key107; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key107" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key108; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key108" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key109; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key109" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key11; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key11" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key110; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key110" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key111; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key111" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key112; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key112" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key113; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key113" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key114; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key114" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key115; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key115" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key116; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key116" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key117; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key117" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key118; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key118" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key119; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key119" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key12; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key12" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key120; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key120" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key121; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key121" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key122; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key122" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key123; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key123" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key124; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key124" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key125; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key125" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key126; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key126" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key127; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key127" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key128; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key128" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key129; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key129" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key13; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key13" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key130; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key130" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key131; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key131" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key132; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key132" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key133; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key133" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key134; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key134" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key135; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key135" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key136; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key136" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key137; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key137" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key138; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key138" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key139; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key139" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key14; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key14" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key140; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key140" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key141; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key141" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key142; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key142" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key143; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key143" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key144; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key144" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key145; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key145" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key146; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key146" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key147; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key147" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key148; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key148" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key149; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key149" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key15; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key15" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key150; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key150" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key151; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key151" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key152; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key152" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key153; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key153" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key154; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key154" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key155; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key155" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key156; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key156" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key157; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key157" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key158; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key158" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key159; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key159" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key16; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key16" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key160; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key160" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key161; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key161" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key162; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key162" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key163; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key163" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key164; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key164" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key165; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key165" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key166; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key166" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key167; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key167" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key168; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key168" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key169; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key169" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key17; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key17" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key170; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key170" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key171; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key171" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key172; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key172" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key173; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key173" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key174; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key174" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key175; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key175" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key176; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key176" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key18; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key18" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key19; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key19" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key2; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key2" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key20; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key20" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key21; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key21" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key22; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key22" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key23; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key23" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key24; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key24" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key25; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key25" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key26; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key26" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key27; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key27" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key28; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key28" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key29; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key29" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key3; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key3" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key30; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key30" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key31; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key31" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key32; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key32" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key33; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key33" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key34; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key34" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key35; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key35" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key36; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key36" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key37; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key37" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key38; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key38" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key39; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key39" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key4; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key4" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key40; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key40" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key41; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key41" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key42; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key42" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key43; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key43" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key44; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key44" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key45; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key45" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key46; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key46" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key47; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key47" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key48; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key48" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key49; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key49" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key5; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key5" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key50; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key50" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key51; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key51" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key52; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key52" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key53; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key53" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key54; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key54" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key55; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key55" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key56; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key56" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key57; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key57" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key58; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key58" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key59; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key59" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key6; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key6" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key60; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key60" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key61; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key61" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key62; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key62" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key63; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key63" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key64; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key64" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key65; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key65" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key66; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key66" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key67; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key67" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key68; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key68" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key69; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key69" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key7; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key7" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key70; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key70" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key71; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key71" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key72; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key72" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key73; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key73" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key74; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key74" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key75; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key75" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key76; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key76" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key77; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key77" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key78; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key78" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key79; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key79" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key8; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key8" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key80; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key80" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key81; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key81" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key82; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key82" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key83; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key83" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key84; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key84" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key85; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key85" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key86; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key86" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key87; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key87" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key88; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key88" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key89; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key89" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key9; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key9" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key90; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key90" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key91; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key91" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key92; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key92" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key93; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key93" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key94; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key94" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key95; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key95" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key96; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key96" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key97; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key97" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key98; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key98" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_cedula_key99; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_cedula_key99" UNIQUE (cedula);


--
-- Name: Usuarios Usuarios_correo_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key1; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key1" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key10; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key10" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key100; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key100" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key101; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key101" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key102; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key102" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key103; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key103" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key104; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key104" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key105; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key105" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key106; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key106" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key107; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key107" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key108; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key108" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key109; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key109" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key11; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key11" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key110; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key110" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key111; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key111" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key112; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key112" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key113; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key113" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key114; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key114" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key115; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key115" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key116; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key116" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key117; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key117" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key118; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key118" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key119; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key119" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key12; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key12" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key120; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key120" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key121; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key121" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key122; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key122" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key123; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key123" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key124; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key124" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key125; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key125" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key126; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key126" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key127; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key127" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key128; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key128" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key129; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key129" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key13; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key13" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key130; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key130" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key131; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key131" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key132; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key132" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key133; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key133" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key134; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key134" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key135; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key135" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key136; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key136" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key137; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key137" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key138; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key138" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key139; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key139" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key14; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key14" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key140; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key140" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key141; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key141" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key142; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key142" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key143; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key143" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key144; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key144" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key145; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key145" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key146; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key146" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key147; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key147" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key148; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key148" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key149; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key149" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key15; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key15" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key150; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key150" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key151; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key151" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key152; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key152" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key153; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key153" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key154; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key154" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key155; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key155" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key156; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key156" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key157; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key157" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key158; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key158" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key159; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key159" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key16; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key16" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key160; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key160" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key161; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key161" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key162; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key162" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key163; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key163" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key164; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key164" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key165; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key165" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key166; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key166" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key167; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key167" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key168; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key168" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key169; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key169" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key17; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key17" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key170; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key170" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key171; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key171" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key172; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key172" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key173; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key173" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key174; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key174" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key175; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key175" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key176; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key176" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key18; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key18" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key19; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key19" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key2; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key2" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key20; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key20" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key21; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key21" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key22; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key22" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key23; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key23" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key24; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key24" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key25; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key25" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key26; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key26" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key27; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key27" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key28; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key28" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key29; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key29" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key3; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key3" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key30; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key30" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key31; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key31" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key32; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key32" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key33; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key33" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key34; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key34" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key35; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key35" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key36; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key36" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key37; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key37" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key38; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key38" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key39; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key39" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key4; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key4" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key40; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key40" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key41; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key41" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key42; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key42" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key43; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key43" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key44; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key44" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key45; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key45" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key46; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key46" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key47; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key47" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key48; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key48" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key49; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key49" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key5; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key5" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key50; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key50" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key51; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key51" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key52; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key52" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key53; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key53" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key54; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key54" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key55; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key55" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key56; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key56" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key57; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key57" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key58; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key58" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key59; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key59" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key6; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key6" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key60; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key60" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key61; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key61" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key62; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key62" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key63; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key63" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key64; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key64" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key65; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key65" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key66; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key66" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key67; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key67" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key68; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key68" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key69; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key69" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key7; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key7" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key70; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key70" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key71; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key71" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key72; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key72" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key73; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key73" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key74; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key74" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key75; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key75" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key76; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key76" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key77; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key77" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key78; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key78" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key79; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key79" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key8; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key8" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key80; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key80" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key81; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key81" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key82; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key82" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key83; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key83" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key84; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key84" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key85; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key85" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key86; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key86" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key87; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key87" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key88; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key88" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key89; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key89" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key9; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key9" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key90; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key90" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key91; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key91" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key92; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key92" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key93; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key93" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key94; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key94" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key95; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key95" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key96; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key96" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key97; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key97" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key98; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key98" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_correo_key99; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key99" UNIQUE (correo);


--
-- Name: Usuarios Usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY (id);


--
-- Name: Usuarios Usuarios_telefono_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key1; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key1" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key10; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key10" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key100; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key100" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key101; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key101" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key102; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key102" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key103; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key103" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key104; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key104" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key105; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key105" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key106; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key106" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key107; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key107" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key108; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key108" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key109; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key109" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key11; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key11" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key110; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key110" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key111; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key111" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key112; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key112" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key113; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key113" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key114; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key114" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key115; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key115" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key116; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key116" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key117; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key117" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key118; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key118" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key119; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key119" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key12; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key12" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key120; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key120" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key121; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key121" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key122; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key122" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key123; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key123" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key124; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key124" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key125; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key125" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key126; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key126" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key127; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key127" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key128; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key128" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key129; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key129" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key13; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key13" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key130; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key130" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key131; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key131" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key132; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key132" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key133; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key133" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key134; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key134" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key135; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key135" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key136; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key136" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key137; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key137" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key138; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key138" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key139; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key139" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key14; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key14" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key140; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key140" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key141; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key141" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key142; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key142" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key143; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key143" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key144; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key144" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key145; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key145" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key146; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key146" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key147; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key147" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key148; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key148" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key149; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key149" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key15; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key15" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key150; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key150" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key151; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key151" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key152; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key152" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key153; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key153" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key154; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key154" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key155; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key155" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key156; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key156" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key157; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key157" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key158; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key158" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key159; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key159" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key16; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key16" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key160; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key160" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key161; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key161" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key162; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key162" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key163; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key163" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key164; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key164" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key165; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key165" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key166; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key166" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key167; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key167" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key168; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key168" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key169; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key169" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key17; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key17" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key170; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key170" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key171; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key171" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key172; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key172" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key173; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key173" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key174; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key174" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key175; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key175" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key176; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key176" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key18; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key18" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key19; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key19" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key2; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key2" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key20; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key20" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key21; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key21" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key22; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key22" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key23; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key23" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key24; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key24" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key25; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key25" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key26; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key26" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key27; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key27" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key28; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key28" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key29; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key29" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key3; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key3" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key30; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key30" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key31; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key31" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key32; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key32" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key33; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key33" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key34; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key34" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key35; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key35" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key36; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key36" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key37; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key37" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key38; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key38" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key39; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key39" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key4; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key4" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key40; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key40" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key41; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key41" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key42; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key42" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key43; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key43" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key44; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key44" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key45; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key45" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key46; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key46" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key47; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key47" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key48; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key48" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key49; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key49" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key5; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key5" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key50; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key50" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key51; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key51" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key52; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key52" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key53; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key53" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key54; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key54" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key55; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key55" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key56; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key56" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key57; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key57" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key58; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key58" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key59; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key59" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key6; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key6" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key60; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key60" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key61; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key61" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key62; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key62" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key63; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key63" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key64; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key64" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key65; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key65" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key66; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key66" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key67; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key67" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key68; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key68" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key69; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key69" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key7; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key7" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key70; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key70" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key71; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key71" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key72; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key72" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key73; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key73" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key74; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key74" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key75; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key75" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key76; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key76" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key77; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key77" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key78; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key78" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key79; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key79" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key8; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key8" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key80; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key80" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key81; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key81" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key82; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key82" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key83; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key83" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key84; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key84" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key85; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key85" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key86; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key86" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key87; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key87" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key88; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key88" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key89; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key89" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key9; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key9" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key90; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key90" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key91; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key91" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key92; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key92" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key93; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key93" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key94; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key94" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key95; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key95" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key96; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key96" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key97; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key97" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key98; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key98" UNIQUE (telefono);


--
-- Name: Usuarios Usuarios_telefono_key99; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_telefono_key99" UNIQUE (telefono);


--
-- Name: Ventas Ventas_codigoVenta_key; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key1; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key1" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key10; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key10" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key100; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key100" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key101; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key101" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key102; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key102" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key103; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key103" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key104; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key104" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key105; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key105" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key106; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key106" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key107; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key107" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key108; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key108" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key109; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key109" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key11; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key11" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key110; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key110" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key111; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key111" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key112; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key112" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key113; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key113" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key114; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key114" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key115; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key115" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key116; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key116" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key117; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key117" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key118; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key118" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key119; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key119" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key12; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key12" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key120; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key120" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key121; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key121" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key122; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key122" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key123; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key123" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key124; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key124" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key125; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key125" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key126; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key126" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key127; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key127" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key128; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key128" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key129; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key129" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key13; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key13" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key130; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key130" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key131; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key131" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key132; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key132" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key133; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key133" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key134; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key134" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key135; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key135" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key136; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key136" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key137; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key137" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key138; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key138" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key139; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key139" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key14; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key14" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key140; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key140" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key141; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key141" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key142; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key142" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key143; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key143" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key144; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key144" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key145; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key145" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key146; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key146" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key147; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key147" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key148; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key148" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key149; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key149" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key15; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key15" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key150; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key150" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key151; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key151" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key152; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key152" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key153; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key153" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key154; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key154" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key155; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key155" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key156; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key156" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key157; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key157" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key158; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key158" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key159; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key159" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key16; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key16" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key160; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key160" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key161; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key161" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key162; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key162" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key163; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key163" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key164; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key164" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key165; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key165" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key166; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key166" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key167; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key167" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key168; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key168" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key169; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key169" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key17; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key17" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key170; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key170" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key171; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key171" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key172; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key172" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key173; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key173" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key174; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key174" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key175; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key175" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key18; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key18" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key19; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key19" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key2; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key2" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key20; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key20" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key21; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key21" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key22; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key22" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key23; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key23" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key24; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key24" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key25; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key25" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key26; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key26" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key27; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key27" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key28; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key28" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key29; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key29" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key3; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key3" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key30; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key30" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key31; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key31" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key32; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key32" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key33; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key33" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key34; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key34" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key35; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key35" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key36; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key36" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key37; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key37" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key38; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key38" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key39; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key39" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key4; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key4" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key40; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key40" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key41; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key41" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key42; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key42" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key43; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key43" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key44; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key44" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key45; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key45" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key46; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key46" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key47; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key47" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key48; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key48" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key49; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key49" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key5; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key5" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key50; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key50" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key51; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key51" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key52; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key52" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key53; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key53" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key54; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key54" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key55; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key55" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key56; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key56" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key57; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key57" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key58; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key58" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key59; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key59" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key6; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key6" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key60; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key60" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key61; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key61" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key62; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key62" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key63; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key63" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key64; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key64" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key65; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key65" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key66; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key66" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key67; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key67" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key68; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key68" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key69; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key69" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key7; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key7" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key70; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key70" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key71; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key71" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key72; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key72" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key73; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key73" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key74; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key74" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key75; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key75" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key76; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key76" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key77; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key77" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key78; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key78" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key79; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key79" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key8; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key8" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key80; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key80" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key81; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key81" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key82; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key82" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key83; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key83" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key84; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key84" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key85; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key85" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key86; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key86" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key87; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key87" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key88; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key88" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key89; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key89" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key9; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key9" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key90; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key90" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key91; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key91" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key92; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key92" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key93; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key93" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key94; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key94" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key95; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key95" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key96; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key96" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key97; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key97" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key98; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key98" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_codigoVenta_key99; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_codigoVenta_key99" UNIQUE ("codigoVenta");


--
-- Name: Ventas Ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_pkey" PRIMARY KEY (id);


--
-- Name: AbonosCuentasPorCobrar AbonosCuentasPorCobrar_CuentaPorCobrarId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."AbonosCuentasPorCobrar"
    ADD CONSTRAINT "AbonosCuentasPorCobrar_CuentaPorCobrarId_fkey" FOREIGN KEY ("CuentaPorCobrarId") REFERENCES public."CuentasPorCobrar"(id);


--
-- Name: AbonosCuentasPorCobrar AbonosCuentasPorCobrar_CuentasPorCobrarId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."AbonosCuentasPorCobrar"
    ADD CONSTRAINT "AbonosCuentasPorCobrar_CuentasPorCobrarId_fkey" FOREIGN KEY ("CuentasPorCobrarId") REFERENCES public."CuentasPorCobrar"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: AbonosCuentasPorCobrar AbonosCuentasPorCobrar_UsuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."AbonosCuentasPorCobrar"
    ADD CONSTRAINT "AbonosCuentasPorCobrar_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: AbonosCuentasPorPagar AbonosCuentasPorPagar_CuentaPorPagarId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."AbonosCuentasPorPagar"
    ADD CONSTRAINT "AbonosCuentasPorPagar_CuentaPorPagarId_fkey" FOREIGN KEY ("CuentaPorPagarId") REFERENCES public."CuentasPorPagar"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: AbonosCuentasPorPagar AbonosCuentasPorPagar_UsuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."AbonosCuentasPorPagar"
    ADD CONSTRAINT "AbonosCuentasPorPagar_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Anticipos Anticipos_CajaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Anticipos"
    ADD CONSTRAINT "Anticipos_CajaId_fkey" FOREIGN KEY ("CajaId") REFERENCES public."Cajas"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Anticipos Anticipos_PersonaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Anticipos"
    ADD CONSTRAINT "Anticipos_PersonaId_fkey" FOREIGN KEY ("PersonaId") REFERENCES public."Personas"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Anticipos Anticipos_UsuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Anticipos"
    ADD CONSTRAINT "Anticipos_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Cajas Cajas_UsuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Cajas"
    ADD CONSTRAINT "Cajas_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CuentasPorCobrar CuentasPorCobrar_VentaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."CuentasPorCobrar"
    ADD CONSTRAINT "CuentasPorCobrar_VentaId_fkey" FOREIGN KEY ("VentaId") REFERENCES public."Ventas"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CuentasPorPagar CuentasPorPagar_LiquidacionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."CuentasPorPagar"
    ADD CONSTRAINT "CuentasPorPagar_LiquidacionId_fkey" FOREIGN KEY ("LiquidacionId") REFERENCES public."Liquidaciones"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: DetalleLiquidaciones DetalleLiquidaciones_LiquidacionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."DetalleLiquidaciones"
    ADD CONSTRAINT "DetalleLiquidaciones_LiquidacionId_fkey" FOREIGN KEY ("LiquidacionId") REFERENCES public."Liquidaciones"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: DetalleLiquidaciones DetalleLiquidaciones_ProductoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."DetalleLiquidaciones"
    ADD CONSTRAINT "DetalleLiquidaciones_ProductoId_fkey" FOREIGN KEY ("ProductoId") REFERENCES public."Productos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Gastos Gastos_CajaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_CajaId_fkey" FOREIGN KEY ("CajaId") REFERENCES public."Cajas"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Gastos Gastos_UsuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: LiquidacionAnticipos LiquidacionAnticipos_AnticipoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."LiquidacionAnticipos"
    ADD CONSTRAINT "LiquidacionAnticipos_AnticipoId_fkey" FOREIGN KEY ("AnticipoId") REFERENCES public."Anticipos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: LiquidacionAnticipos LiquidacionAnticipos_LiquidacionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."LiquidacionAnticipos"
    ADD CONSTRAINT "LiquidacionAnticipos_LiquidacionId_fkey" FOREIGN KEY ("LiquidacionId") REFERENCES public."Liquidaciones"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Liquidaciones Liquidaciones_ProductorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_ProductorId_fkey" FOREIGN KEY ("ProductorId") REFERENCES public."Personas"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Liquidaciones Liquidaciones_UsuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Liquidaciones"
    ADD CONSTRAINT "Liquidaciones_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Movimientos Movimientos_CajaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Movimientos"
    ADD CONSTRAINT "Movimientos_CajaId_fkey" FOREIGN KEY ("CajaId") REFERENCES public."Cajas"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Nominas Nominas_PersonaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_PersonaId_fkey" FOREIGN KEY ("PersonaId") REFERENCES public."Personas"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Nominas Nominas_PrestamoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_PrestamoId_fkey" FOREIGN KEY ("PrestamoId") REFERENCES public."Prestamos"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Nominas Nominas_UsuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Nominas"
    ADD CONSTRAINT "Nominas_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Prestamos Prestamos_CajaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Prestamos_CajaId_fkey" FOREIGN KEY ("CajaId") REFERENCES public."Cajas"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Prestamos Prestamos_PersonaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Prestamos_PersonaId_fkey" FOREIGN KEY ("PersonaId") REFERENCES public."Personas"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Prestamos Prestamos_UsuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Prestamos_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Reportes Reportes_UsuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Reportes"
    ADD CONSTRAINT "Reportes_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Respaldos Respaldos_CajaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Respaldos"
    ADD CONSTRAINT "Respaldos_CajaId_fkey" FOREIGN KEY ("CajaId") REFERENCES public."Cajas"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Retenciones Retenciones_LiquidacionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Retenciones"
    ADD CONSTRAINT "Retenciones_LiquidacionId_fkey" FOREIGN KEY ("LiquidacionId") REFERENCES public."Liquidaciones"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Tickets Tickets_ProductoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_ProductoId_fkey" FOREIGN KEY ("ProductoId") REFERENCES public."Productos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ventas Ventas_CajaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_CajaId_fkey" FOREIGN KEY ("CajaId") REFERENCES public."Cajas"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ventas Ventas_PersonaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_PersonaId_fkey" FOREIGN KEY ("PersonaId") REFERENCES public."Personas"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ventas Ventas_ProductoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_ProductoId_fkey" FOREIGN KEY ("ProductoId") REFERENCES public."Productos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ventas Ventas_UsuarioId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aroma_de_oro_user
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO aroma_de_oro_user;


--
-- Name: DEFAULT PRIVILEGES FOR TYPES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO aroma_de_oro_user;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO aroma_de_oro_user;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO aroma_de_oro_user;


--
-- PostgreSQL database dump complete
--

\unrestrict t4L9RncWhcnJSI79ML4UMFbprZJnuQck3K66BVEbT7AjAbWPEdgFn5rb61kge6m


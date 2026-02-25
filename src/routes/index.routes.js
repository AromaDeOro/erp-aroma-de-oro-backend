import { Router } from "express";
import empresaRouter from "./empresa/empresa.route.js";

const rootRouter = Router();
rootRouter.use("/empresa", empresaRouter);

export default rootRouter;

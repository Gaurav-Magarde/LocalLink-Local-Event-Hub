import express from "express";
import {createEvent} from '../controller/event_controller.js'
import { verifyToken } from "../middleware/auth_middlewares.js";

const eventRoutes = express.Router();
eventRoutes.post('/create',verifyToken,createEvent);

export {eventRoutes};
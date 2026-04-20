import express from "express";
import {register,login } from '../controller/auth_controller.js'

const authRoutes = express.Router();
authRoutes.post('/register',register)
authRoutes.get('/login',login)
export default authRoutes

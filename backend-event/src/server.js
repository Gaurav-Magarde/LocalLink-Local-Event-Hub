import express from 'express';
import dotenv from 'dotenv';
import { prisma ,connectDB} from './config/db.js';
import authRoutes from './routes/auth_route.js'
import { eventRoutes } from './routes/event_routes.js';

dotenv.config();
connectDB();
const app = express();
const PORT = process.env.PORT || 3000;


app.use(express.json());
app.use("/auth",authRoutes);
app.use("/event",eventRoutes);
app.get('/health', async (req, res) => {
    try {
        await prisma.$queryRaw`SELECT 1`;
        res.status(200).json({ status: 'OK', message: 'Event Hub Database Connected!' });
    } catch (error) {
        res.status(500).json({ status: 'ERROR', message: error.message });
    }
});

app.listen(PORT, () => {
    console.log(`🚀 Server listening on http://localhost:${PORT}`);
});
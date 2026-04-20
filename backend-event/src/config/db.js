import pg from 'pg';
import { PrismaPg } from '@prisma/adapter-pg';
import { PrismaClient } from '../generated/client/index.js';
import dotenv from 'dotenv';


dotenv.config();

const pool = new pg.Pool({ connectionString: process.env.DATABASE_URL });
const adapter = new PrismaPg(pool);
const prisma = new PrismaClient({ adapter });


const connectDB = async () => {
    try {
        await prisma.$connect();
        console.log("✅ Database connected successfully via Prisma 7 Adapter!");
    } catch (err) {
        console.error(`❌ Connection error: ${err.message}`);
        process.exit(1);
    }
};
const disconnectDB = async () => {
        await prisma.$disconnect();

};

export { prisma, connectDB,disconnectDB  };
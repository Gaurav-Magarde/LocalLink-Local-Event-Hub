import { prisma } from "../config/db.js";

export const createEvent = async (req, res) => {
    try {
        const { title, description, date, latitude, longitude } = req.body;

        const organizerId = req.user.userId;

        if (req.user.role != "ORGANIZER") {
            return res.status(403).json({ message: "Only Organizers can create events."})
        }

        const newEvent = await prisma.event.create({
            data: {
                title,
                description,
                date: new Date(date),
                latitude: parseFloat(latitude),
                longitude: parseFloat(longitude),
                organizerId
            }
        })
        res.status(201).json({ message: "Event created successfully!", event: newEvent });
    } catch (e) {
        console.error(error);
        res.status(500).json({ message: "Failed to create event." });
    }
}
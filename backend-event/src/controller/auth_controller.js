import { prisma } from "../config/db.js";
import bcrypt from "bcryptjs";
import { generateToken } from "../utils/jsontookenGenerator.js";

export const register = async (req, res) => {
    const { name, email, password, role } = req.body;
    console.log("req found" + name + email + password + role);
    const userExists = await prisma.user.findUnique({ where: {email: email } });

    if (userExists) {
        return res.status(400).json({
            error: "user already exists with this email"
        })
    }

    const salt = await bcrypt.genSalt(10);
    const hashedPass = await bcrypt.hash(password, salt);

    const user = await prisma.user.create(
        {
            data: {
                name: name,
                password: hashedPass,
                role: role,
                email: email

            }
        }
    )

    res.status(201).json({
        data: {
            user:
            {
                name: user.name,
                email: user.email,
                role: user.role,
                id: user.id
            }

        }
    })
}

export const login = async (req,res)=>{

    const {email , password} = req.body;

    const user = await prisma.user.findUnique({
        where: {
            email:email}
    });
    if(!user){
        return res.status(400).json({error:"Invalid user or password"})
    }

    const isPasswordValid = await bcrypt.compare(password,user.password);

    if(!isPasswordValid){
         return res.status(401).json({
            error:"Invalid user or password"
        })
    }
    const token = generateToken(user.id);

    res.status(200).json({
        status:"success",
        data:{
            user:{
                 name: user.name,
                email: user.email,
                role: user.role,
                id: user.id
            }
        },
        token
    })
} 
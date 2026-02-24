import { Persona } from "../../libs/db.js";


const listarPersonas = async() => {
    const personas = await Persona.findAll()
    return {
        code: 200,
        personas
    }
}

const listarPersonaPorClave = async(key,value) => {
    const persona = await Persona.findOne({
        where: {
            [key]: value
        }
    })
    return persona ? {
        code: 200,
        persona
    } : {
        code: 404,
        message: "Persona no encontrada"
    }
}

export {
    listarPersonas,
    listarPersonaPorClave
}

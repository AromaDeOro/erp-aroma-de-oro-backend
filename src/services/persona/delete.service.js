import { Persona } from "../../libs/db.js";


const borrarPersona = async (id) => {
    const persona = await Persona.findOne({
        where: {
            id
        }
    })

    if(!persona){
        return {code: 404,message: "Persona no encontrada"}
    }

    await persona.update({
        estaActivo: false
    })

    return {
        code: 200,
        message: "Persona borrada exitosamente"
    }
}


export {
    borrarPersona
}
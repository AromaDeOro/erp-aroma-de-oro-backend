import { Persona } from "../../libs/db.js";

const actualizarPersona = async(id,data) => {
    const persona = await Persona.findOne({
        where:{
            id
        }
    })

    if (!persona) {return {code: 404,message: "Persona no encontrada"}}

    const {telefono,correo} = data

    if(telefono){
        const existeOtraPersona = await Persona.findOne({
            where: {
                telefono
            }
        })

        if(existeOtraPersona && existeOtraPersona.id !== id){
            return {
                code: 400,
                message: "El teléfono ya extá registrado por otra persona"
            }
        }
    }

    if(correo){
        const existeOtraPersona = await Persona.findOne({
            where: {
                correo
            }
        })

        if(existeOtraPersona && existeOtraPersona.id !== id){
            return {
                code: 400,
                message: "El correo ya extá registrado por otra persona"
            }
        }
    }

    persona.update(data)

    return {
        code: 200,
        message: "Información actualizada con éxito"
    }


}


export {
    actualizarPersona
}
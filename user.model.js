const db = require("../config/database");


async function criarUsuario(dados){

    const {nome,email,telefone,senha,tipo}=dados;


    const result = await db.query(
        `
        INSERT INTO usuarios
        (nome,email,telefone,senha,tipo)
        VALUES($1,$2,$3,$4,$5)
        RETURNING id,nome,email,tipo
        `,
        [
            nome,
            email,
            telefone,
            senha,
            tipo
        ]
    );


    return result.rows[0];

}


async function buscarEmail(email){

    const result = await db.query(
        "SELECT * FROM usuarios WHERE email=$1",
        [email]
    );


    return result.rows[0];

}


module.exports={
    criarUsuario,
    buscarEmail
};
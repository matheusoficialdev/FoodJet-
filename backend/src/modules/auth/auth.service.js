const bcrypt=require("bcrypt");

const jwt=require("jsonwebtoken");

const repository=require("./auth.repository");

class AuthService{

async login(data){

const usuario=
await repository.findEmail(
data.email
);

if(!usuario){

throw new Error("Usuário não encontrado");

}

const ok=
await bcrypt.compare(
data.senha,
usuario.senha
);

if(!ok){

throw new Error("Senha inválida");

}

const token=
jwt.sign({

id:usuario.id,
tipo:usuario.tipo

},

process.env.JWT_SECRET

);

return{

token,

usuario

};

}

}

module.exports=
new AuthService();
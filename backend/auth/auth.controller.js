const bcrypt=require("bcrypt");

const User=require("../users/user.model");

const criarToken=require("./jwt");



async function cadastro(req,res){

try{


const senhaHash =
await bcrypt.hash(req.body.senha,10);


const usuario =
await User.criarUsuario({

nome:req.body.nome,

email:req.body.email,

telefone:req.body.telefone,

senha:senhaHash,

tipo:req.body.tipo

});


res.json(usuario);


}catch(error){

res.status(500)
.json({
erro:"Erro ao cadastrar"
});

}

}





async function login(req,res){

try{


const usuario =
await User.buscarEmail(
req.body.email
);



if(!usuario)
return res.status(404)
.json({
erro:"Usuário não encontrado"
});



const senha =
await bcrypt.compare(
req.body.senha,
usuario.senha
);



if(!senha)
return res.status(401)
.json({
erro:"Senha incorreta"
});



const token =
criarToken(usuario);



res.json({

token,

usuario:{
id:usuario.id,
nome:usuario.nome,
tipo:usuario.tipo
}

});


}catch(error){

res.status(500)
.json({
erro:"Erro no login"
});

}


}



module.exports={
cadastro,
login
};
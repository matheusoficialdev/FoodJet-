const jwt = require("jsonwebtoken");


function auth(req,res,next){


const token =
req.headers.authorization;


if(!token){

return res.status(401)
.json({

erro:"Token não informado"

});

}



try{


const decoded =
jwt.verify(

token.replace("Bearer ",""),

process.env.JWT_SECRET

);



req.usuario = decoded;


next();



}catch(error){


return res.status(401)
.json({

erro:"Token inválido"

});


}


}



module.exports = auth;
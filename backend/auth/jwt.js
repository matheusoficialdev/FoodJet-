const jwt = require("jsonwebtoken");


function criarToken(usuario){

return jwt.sign(
{
 id:usuario.id,
 tipo:usuario.tipo
},
process.env.JWT_SECRET,
{
 expiresIn:"7d"
}
);


}


module.exports = criarToken;
const db=require("../../config/database");

class AuthRepository{

async findEmail(email){

const result=
await db.query(

"SELECT * FROM usuarios WHERE email=$1",

[email]

);

return result.rows[0];

}

}

module.exports=
new AuthRepository();
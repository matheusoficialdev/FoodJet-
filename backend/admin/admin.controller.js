const db = require("../config/database");



async function dashboard(req,res){


const usuarios =
await db.query(
"SELECT COUNT(*) FROM usuarios"
);


const pedidos =
await db.query(
"SELECT COUNT(*) FROM pedidos"
);



res.json({

sistema:"FoodJet",

usuarios:
usuarios.rows[0].count,

pedidos:
pedidos.rows[0].count,


admin:req.usuario.id


});


}



module.exports={
dashboard
};
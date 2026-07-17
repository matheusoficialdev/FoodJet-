const db =
require("../../config/database");



class OrderRepository {



async create(data){


const result =
await db.query(

`
INSERT INTO pedidos

(
cliente_id,
restaurante_id,
valor_total,
forma_pagamento,
endereco_entrega
)

VALUES
($1,$2,$3,$4,$5)

RETURNING *

`,

[

data.clienteId,

data.restauranteId,

data.valorTotal,

data.pagamento,

data.endereco

]


);


return result.rows[0];


}



async updateStatus(id,status){


const result =
await db.query(

`
UPDATE pedidos

SET status=$1

WHERE id=$2

RETURNING *

`,

[status,id]

);



return result.rows[0];


}


}



module.exports =
new OrderRepository();
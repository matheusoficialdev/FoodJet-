const repository =
require("./order.repository");



class OrderService {


async create(data){


const pedido =
await repository.create(data);



return {

mensagem:
"Pedido criado com sucesso",

pedido

};


}



async updateStatus(id,status){


return await repository.updateStatus(

id,

status

);


}


}



module.exports =
new OrderService();
const {
getIO
}
=
require("../../websocket/socket");


const EVENTS =
require("../../websocket/events");
getIO()
.to(
`restaurante_${data.restauranteId}`
)
.emit(

EVENTS.NOVO_PEDIDO,

pedido

);
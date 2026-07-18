class PaymentService {


async criarPix(data){


/*
Aqui entrará integração
com gateway de pagamento

Exemplo:
Mercado Pago
PagSeguro
Pagar.me
*/


return {

status:"PENDENTE",

metodo:"PIX",

valor:data.valor

};


}



async atualizarStatus(
id,
status
){


return {

id,

status

};


}


}


module.exports =
new PaymentService();
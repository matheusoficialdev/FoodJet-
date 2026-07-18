const service =
require("./payment.service");


exports.criarPix =
async(req,res)=>{


const pagamento =
await service.criarPix(
req.body
);


res.json(pagamento);


};



exports.atualizarStatus =
async(req,res)=>{


const resultado =
await service.atualizarStatus(

req.params.id,

req.body.status

);


res.json(resultado);


};
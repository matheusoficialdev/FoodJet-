const service =
require("./order.service");



exports.create =
async(req,res)=>{


const pedido =
await service.create(
req.body
);


res.json(pedido);


};



exports.updateStatus =
async(req,res)=>{


const pedido =
await service.updateStatus(

req.params.id,

req.body.status

);



res.json(pedido);


};
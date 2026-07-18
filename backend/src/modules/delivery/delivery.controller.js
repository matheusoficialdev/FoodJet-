const {
getIO
}=require("../../websocket/socket");


exports.atualizarLocalizacao =
async(req,res)=>{


const {

entregadorId,

latitude,

longitude

}=req.body;



// salvar no banco
// repository.updateLocation()



getIO()

.to(
`pedido_${req.body.pedidoId}`
)

.emit(

"nova_localizacao",

{

latitude,

longitude

}

);



res.json({

sucesso:true

});


};
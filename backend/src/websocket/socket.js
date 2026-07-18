const { Server } =
require("socket.io");


let io;


function iniciarSocket(server){


io = new Server(server,{

cors:{
origin:"*"
}

});



io.on(
"connection",
(socket)=>{


console.log(
"Usuário conectado:",
socket.id
);



socket.on(
"entrar_sala",
(data)=>{


socket.join(
data.sala
);


console.log(
`Entrou na sala ${data.sala}`
);


});



socket.on(
"disconnect",
()=>{


console.log(
"Usuário saiu"
);


});


});


}



function getIO(){

return io;

}



module.exports={
iniciarSocket,
getIO
};
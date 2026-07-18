class NotificationService {


async enviar(usuarioId,titulo,mensagem){


const notificacao={

usuarioId,

titulo,

mensagem

};


// salvar banco
// enviar push Firebase


return notificacao;


}



}


module.exports =
new NotificationService();
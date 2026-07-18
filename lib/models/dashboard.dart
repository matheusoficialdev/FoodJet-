class Dashboard {


final int usuarios;

final int restaurantes;

final int entregadores;

final int pedidos;


final double faturamento;



Dashboard({

required this.usuarios,

required this.restaurantes,

required this.entregadores,

required this.pedidos,

required this.faturamento,

});



factory Dashboard.fromJson(
Map<String,dynamic> json
){

return Dashboard(

usuarios:
json["usuarios"],

restaurantes:
json["restaurantes"],

entregadores:
json["entregadores"],

pedidos:
json["pedidos"],

faturamento:
(json["faturamento"] as num)
.toDouble(),

);

}


}
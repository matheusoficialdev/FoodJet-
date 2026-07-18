import 'package:flutter/material.dart';


class DashboardScreen
extends StatelessWidget{


const DashboardScreen({
super.key
});



@override
Widget build(BuildContext context){


return Scaffold(


appBar:AppBar(

title:
const Text(
"FoodJet Admin"
),

backgroundColor:
Colors.orange,

),



body:
GridView.count(

padding:
const EdgeInsets.all(20),

crossAxisCount:2,


children:[


card(
"Clientes",
"1.250"
),


card(
"Restaurantes",
"85"
),


card(
"Entregadores",
"340"
),


card(
"Pedidos Hoje",
"620"
),


card(
"Faturamento",
"R\$ 15.400"
),


],


),


);


}



Widget card(
String titulo,
String valor
){


return Card(

child:Column(

mainAxisAlignment:
MainAxisAlignment.center,


children:[


Text(
titulo
),


Text(

valor,

style:
const TextStyle(

fontSize:22,

fontWeight:
FontWeight.bold

),

)


],

),

);


}



}
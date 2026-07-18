import 'package:flutter/material.dart';

import '../../models/product.dart';

import 'widgets/product_card.dart';



class RestaurantScreen extends StatelessWidget {


const RestaurantScreen({super.key});



@override
Widget build(BuildContext context){



final produtos=[


Product(

id:1,

nome:"Açaí 300ml",

descricao:
"Açaí tradicional",

preco:15,

),


Product(

id:2,

nome:"Açaí 500ml",

descricao:
"Com complementos",

preco:22,

),


Product(

id:3,

nome:"Açaí 700ml",

descricao:
"Grande",

preco:27,

),


Product(

id:4,

nome:"Leite Ninho",

descricao:
"Adicional",

preco:3,

),


];



return Scaffold(


appBar:

AppBar(

title:

const Text(
"Glacier Açaí"
),

),



body:

Column(

children:[



Container(

height:180,

width:double.infinity,


color:
Colors.purple,


child:

const Center(

child:

Text(

"🥤 Glacier Açaí",

style:

TextStyle(

fontSize:28,

color:Colors.white,

fontWeight:
FontWeight.bold

),

),

),

),




Expanded(

child:

ListView.builder(

itemCount:
produtos.length,


itemBuilder:

(context,index){


return ProductCard(

produto:
produtos[index]

);


},

),


),



],


),



floatingActionButton:

FloatingActionButton.extended(

onPressed:(){


Navigator.pushNamed(

context,

"/cart"

);


},


label:

const Text(
"Carrinho"
),


icon:

const Icon(
Icons.shopping_cart
),


),


);



}


}
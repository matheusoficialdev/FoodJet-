import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {

const HomeScreen({super.key});


@override
State<HomeScreen> createState()
=>_HomeScreenState();

}



class _HomeScreenState
extends State<HomeScreen>{


bool online=false;



@override
Widget build(BuildContext context){


return Scaffold(


appBar:AppBar(

title:
const Text(
"FoodJet Entregador"
),

backgroundColor:
Colors.orange,

),



body:Center(


child:Column(

mainAxisAlignment:
MainAxisAlignment.center,


children:[


Text(

online
?"Você está ONLINE"
:"Você está OFFLINE",

style:
const TextStyle(
fontSize:22
),

),



Switch(

value: online,

onChanged:(valor){

setState((){

online=valor;

});

},

),



ElevatedButton(

onPressed:(){

},

child:
const Text(
"Ver entregas disponíveis"
)
import 'package:flutter/material.dart';

import 'widgets/banner.dart';
import 'widgets/category_chip.dart';
import 'widgets/restaurant_card.dart';


class HomeScreen extends StatelessWidget {

const HomeScreen({super.key});


@override
Widget build(BuildContext context){


return Scaffold(

backgroundColor:
Colors.grey.shade100,


appBar: AppBar(

title:

const Text(
"FoodJet"
),

centerTitle:true,


actions:[

IconButton(

onPressed:(){},

icon:
const Icon(
Icons.shopping_cart
)

)

],


),



body:

SingleChildScrollView(

child:

Padding(

padding:
const EdgeInsets.all(16),


child:

Column(

crossAxisAlignment:
CrossAxisAlignment.start,


children:[


const Text(

"Olá, Matheus 👋",

style:
TextStyle(

fontSize:22,

fontWeight:
FontWeight.bold

),

),


const SizedBox(
height:20
),



TextField(

decoration:
InputDecoration(

hintText:
"Buscar restaurantes",

prefixIcon:
const Icon(
Icons.search
),

filled:true,

border:
OutlineInputBorder(

borderRadius:
BorderRadius.circular(15)

)

),

),



const SizedBox(
height:20
),



const FoodBanner(),


const SizedBox(
height:20
),



const Text(

"Categorias",

style:
TextStyle(

fontSize:20,

fontWeight:
FontWeight.bold

),

),



const SizedBox(
height:10
),



Row(

children:[

CategoryChip(
texto:"🍔 Lanches"
),

CategoryChip(
texto:"🍕 Pizza"
),

CategoryChip(
texto:"🥤 Açaí"
),

],


),



const SizedBox(
height:20
),



const Text(

"Restaurantes próximos",

style:
TextStyle(

fontSize:20,

fontWeight:
FontWeight.bold

),

),



const SizedBox(
height:10
),



RestaurantCard(

nome:
"Glacier Açaí",

nota:
"⭐ 5.0",

tempo:
"20-30 min"

),



RestaurantCard(

nome:
"Pizza Prime",

nota:
"⭐ 4.8",

tempo:
"35-40 min"

),



],


),


),


),


);


}

}
)

],

),


),


);


}
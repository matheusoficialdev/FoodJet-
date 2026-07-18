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

)

],

),


),


);


}
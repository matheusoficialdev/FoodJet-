import 'package:flutter/material.dart';
import '../orders/orders_screen.dart';


class DashboardScreen extends StatelessWidget {


const DashboardScreen({super.key});


@override
Widget build(BuildContext context){


return Scaffold(


appBar:AppBar(

title:
const Text(
"FoodJet Restaurante"
),

backgroundColor:
Colors.orange,

),



body:Center(


child:Column(

mainAxisAlignment:
MainAxisAlignment.center,


children:[


const Text(

"Painel do Restaurante",

style:
TextStyle(

fontSize:24,

fontWeight:
FontWeight.bold

),

),



ElevatedButton(


onPressed:(){


Navigator.push(

context,

MaterialPageRoute(

builder:
(_)=>const OrdersScreen()

)

);


},


child:
const Text(
"Ver Pedidos"
)

)


],

),


),


);


}

}
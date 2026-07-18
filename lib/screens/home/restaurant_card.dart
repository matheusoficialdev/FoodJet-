import 'package:flutter/material.dart';


class RestaurantCard extends StatelessWidget {


final String nome;

final String nota;

final String tempo;



const RestaurantCard({

super.key,

required this.nome,

required this.nota,

required this.tempo

});



@override
Widget build(BuildContext context){


return Card(

margin:
const EdgeInsets.only(
bottom:15
),


shape:

RoundedRectangleBorder(

borderRadius:
BorderRadius.circular(18)

),



child:

ListTile(

leading:

const CircleAvatar(

radius:30,

child:
Icon(
Icons.restaurant
),

),


title:

Text(

nome,

style:
const TextStyle(

fontWeight:
FontWeight.bold

),

),



subtitle:

Text(

"$nota • $tempo"

),



trailing:

const Icon(
Icons.arrow_forward_ios
),


),


);


}

}
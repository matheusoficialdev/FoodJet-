import 'package:flutter/material.dart';
import '../../providers/cart_provider.dart';
import 'package:provider/provider.dart';


class CartScreen extends StatelessWidget {


const CartScreen({super.key});


@override
Widget build(BuildContext context){


final cart =
Provider.of<CartProvider>(context);



return Scaffold(


appBar: AppBar(

title:
const Text("Meu Carrinho"),

),



body: Column(

children:[


Expanded(

child: ListView.builder(

itemCount:
cart.items.length,


itemBuilder:(context,index){


final item =
cart.items[index];



return ListTile(


title:
Text(item.nome),


subtitle:
Text(
"Quantidade: ${item.quantidade}"
),


trailing:
Text(
"R\$ ${item.subtotal}"
),


);


},

),

),



Text(

"Total: R\$ ${cart.total}",


style:
const TextStyle(

fontSize:22,

fontWeight:
FontWeight.bold

),

),



ElevatedButton(


onPressed:(){


Navigator.pushNamed(
context,
"/checkout"
);


},


child:
const Text(
"Finalizar Pedido"
),


)import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/cart_provider.dart';



class CartScreen extends StatelessWidget {


const CartScreen({super.key});



@override
Widget build(BuildContext context){


final cart =
Provider.of<CartProvider>(context);



return Scaffold(


appBar:

AppBar(

title:
const Text(
"Meu Carrinho"
),

),



body:

Column(

children:[


Expanded(

child:

ListView.builder(

itemCount:
cart.itens.length,


itemBuilder:

(context,index){


final item =
cart.itens[index];



return ListTile(

title:
Text(item.produto.nome),


subtitle:

Text(

"${item.quantidade}x"

),


trailing:

Text(

"R\$ ${item.subtotal}"

),


);

},


),


),



Text(

"Total: R\$ ${cart.total}",


style:

const TextStyle(

fontSize:22,

fontWeight:
FontWeight.bold

),

),



ElevatedButton(

onPressed:(){


},

child:

const Text(
"Finalizar Pedido"
),


)



],


),


);



}

}


],


),


);


}


}
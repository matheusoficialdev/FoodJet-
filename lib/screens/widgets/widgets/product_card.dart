import 'package:flutter/material.dart';

import '../../../models/product.dart';



class ProductCard extends StatelessWidget {


final Product produto;



const ProductCard({

super.key,

required this.produto

});



@override
Widget build(BuildContext context){



return Card(

margin:

const EdgeInsets.all(10),



child:

ListTile(


title:

Text(

produto.nome,

style:

const TextStyle(

fontWeight:
FontWeight.bold

),

),



subtitle:

Text(

produto.descricao

),



trailing:

Column(

children:[



Text(

"R\$ ${produto.preco}"

),



IconButton(

icon:

const Icon(
Icons.add_circle,

color:Colors.green

),


onPressed:(){


Provider.of<CartProvider>(

context,

listen:false

)

.adicionar(produto);



ScaffoldMessenger.of(context)

.showSnackBar(

SnackBar(

content:

Text(

"${produto.nome} adicionado"

),

),

);


},

)import 'package:provider/provider.dart';

import '../../../providers/cart_provider.dart';

],


),



),


);



}

}
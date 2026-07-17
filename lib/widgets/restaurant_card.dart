import 'package:flutter/material.dart';
import '../models/restaurant.dart';

class RestaurantCard extends StatelessWidget {

  final Restaurant restaurante;

  const RestaurantCard({
    super.key,
    required this.restaurante
  });

  @override
  Widget build(BuildContext context){

    return Card(

      elevation:3,

      margin:
      const EdgeInsets.only(bottom:15),

      shape:
      RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(15),
      ),

      child: ListTile(

        leading: CircleAvatar(
          radius:30,
          backgroundImage:
          NetworkImage(
            restaurante.imagem,
          ),
        ),

        title: Text(
          restaurante.nome,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Text(
          "⭐ ${restaurante.nota} • ${restaurante.tempoEntrega}",
        ),

        trailing: Text(
          "R\$ ${restaurante.taxaEntrega}",
        ),

      ),
    );

  }

}
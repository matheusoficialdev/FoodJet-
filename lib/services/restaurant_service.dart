import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/restaurant.dart';

class RestaurantService {

  static const api =
      "http://SEU_IP:3000/api/restaurantes";

  Future<List<Restaurant>> buscarRestaurantes() async {

    final response =
        await http.get(Uri.parse(api));

    if(response.statusCode==200){

      List lista=jsonDecode(response.body);

      return lista
          .map((e)=>Restaurant.fromJson(e))
          .toList();

    }

    return [];

  }

}
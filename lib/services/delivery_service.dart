import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/delivery.dart';


class DeliveryService {


final String api =
"http://SEU_IP:3000/api/entregas";



Future<List<Delivery>> buscarDisponiveis() async{


final response =
await http.get(
Uri.parse(api)
);



if(response.statusCode==200){


List dados =
jsonDecode(response.body);



return dados
.map(
(e)=>Delivery.fromJson(e)
)
.toList();


}


return [];


}



Future<void> aceitar(
int id
) async{


await http.put(

Uri.parse(
"$api/$id/aceitar"
)

);


}


}
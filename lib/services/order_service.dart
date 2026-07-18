import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/order.dart';


class OrderService {


final String api =
"http://SEU_IP:3000/api/pedidos";



Future<List<Order>> buscarPedidos() async {


final response =
await http.get(
Uri.parse(api)
);



if(response.statusCode==200){


List dados =
jsonDecode(response.body);



return dados
.map(
(e)=>Order.fromJson(e)
)
.toList();


}


return [];


}



Future<void> atualizarStatus(
int id,
String status
) async{


await http.put(

Uri.parse(
"$api/$id/status"
),


body:jsonEncode({

"status":status

}),


headers:{

"Content-Type":
"application/json"

}

);


}


}
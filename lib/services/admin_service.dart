import 'dart:convert';

import 'package:http/http.dart' as http;


class AdminService {


final String api =
"http://SEU_IP:3000/api/admin";



Future<Map> dashboard() async{


final response =
await http.get(

Uri.parse(
"$api/dashboard"
)

);



return jsonDecode(
response.body
);


}


}
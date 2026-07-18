class Delivery {

  final int id;
  final String restaurante;
  final String endereco;
  final double valor;
  final String status;


  Delivery({

    required this.id,
    required this.restaurante,
    required this.endereco,
    required this.valor,
    required this.status,

  });


  factory Delivery.fromJson(
      Map<String,dynamic> json){

    return Delivery(

      id: json["id"],

      restaurante:
      json["restaurante"],

      endereco:
      json["endereco"],

      valor:
      (json["valor"] as num).toDouble(),

      status:
      json["status"],

    );

  }

}
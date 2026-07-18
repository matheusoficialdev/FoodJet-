class Order {

  final int id;
  final String cliente;
  final double valor;
  final String status;

  Order({

    required this.id,
    required this.cliente,
    required this.valor,
    required this.status,

  });


  factory Order.fromJson(
      Map<String,dynamic> json
      ){

    return Order(

      id: json["id"],

      cliente: json["cliente"],

      valor:
      (json["valor"] as num).toDouble(),

      status: json["status"],

    );

  }

}
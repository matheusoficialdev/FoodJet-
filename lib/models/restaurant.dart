class Restaurant {

  final int id;
  final String nome;
  final String imagem;
  final double nota;
  final String tempoEntrega;
  final double taxaEntrega;

  Restaurant({
    required this.id,
    required this.nome,
    required this.imagem,
    required this.nota,
    required this.tempoEntrega,
    required this.taxaEntrega,
  });

  factory Restaurant.fromJson(Map<String,dynamic> json){

    return Restaurant(
      id: json["id"],
      nome: json["nome"],
      imagem: json["imagem"],
      nota: json["nota"].toDouble(),
      tempoEntrega: json["tempoEntrega"],
      taxaEntrega: json["taxaEntrega"].toDouble(),
    );

  }

}
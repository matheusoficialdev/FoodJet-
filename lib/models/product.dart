class Product {
  final int id;
  final String nome;
  final String descricao;
  final double preco;
  final String imagem;
  final String categoria;

  Product({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.imagem,
    required this.categoria,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      nome: json["nome"],
      descricao: json["descricao"],
      preco: (json["preco"] as num).toDouble(),
      imagem: json["imagem"],
      categoria: json["categoria"],
    );
  }
}
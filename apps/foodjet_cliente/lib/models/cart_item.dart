class CartItem {

  final int produtoId;
  final String nome;
  final double preco;

  int quantidade;


  CartItem({

    required this.produtoId,
    required this.nome,
    required this.preco,
    this.quantidade = 1,

  });


  double get subtotal {

    return preco * quantidade;

  }

}
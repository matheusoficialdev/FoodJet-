class OrderRequest {

  final int restauranteId;
  final int clienteId;
  final String endereco;
  final String pagamento;

  OrderRequest({

    required this.restauranteId,

    required this.clienteId,

    required this.endereco,

    required this.pagamento,

  });

}
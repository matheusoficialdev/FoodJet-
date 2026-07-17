import 'package:flutter/material.dart';
import '../models/cart_item.dart';
import '../models/product.dart';

class CartProvider extends ChangeNotifier {

  final List<CartItem> _itens = [];

  List<CartItem> get itens => _itens;

  void adicionar(Product produto){

    final index = _itens.indexWhere(
      (e)=>e.produto.id==produto.id,
    );

    if(index>=0){

      _itens[index].quantidade++;

    }else{

      _itens.add(
        CartItem(produto: produto),
      );

    }

    notifyListeners();

  }

  void remover(Product produto){

    _itens.removeWhere(
      (e)=>e.produto.id==produto.id,
    );

    notifyListeners();

  }

  double get total{

    double soma=0;

    for(var item in _itens){

      soma+=item.subtotal;

    }

    return soma;

  }

}
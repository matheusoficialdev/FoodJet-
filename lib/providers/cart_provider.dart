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

import 'package:flutter/material.dart';
import '../models/product.dart';


class CartItem {

final Product produto;

int quantidade;


CartItem({

required this.produto,

this.quantidade = 1,

});


double get subtotal =>
produto.preco * quantidade;

}



class CartProvider extends ChangeNotifier {


final List<CartItem> _itens=[];


List<CartItem> get itens => _itens;



void adicionar(Product produto){


final index = _itens.indexWhere(

(item)=>
item.produto.id == produto.id

);



if(index >=0){

_itens[index].quantidade++;

}

else{

_itens.add(

CartItem(

produto:produto

)

);

}


notifyListeners();

}



void remover(Product produto){


_itens.removeWhere(

(item)=>
item.produto.id == produto.id

);


notifyListeners();

}



double get total{


double valor=0;


for(var item in _itens){

valor += item.subtotal;

}


return valor;

}



void limpar(){

_itens.clear();

notifyListeners();

}



}
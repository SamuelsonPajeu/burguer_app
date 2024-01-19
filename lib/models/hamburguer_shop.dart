import 'package:burguer_shop/models/hamburguer.dart';
import 'package:flutter/material.dart';

class HamburguerShop extends ChangeNotifier {
  // buguer for sale list
  final List<Hamburguer> _shop = [
    Hamburguer(
      name: "Smash",
      price: "17.90",
      imagePath: "lib/images/smash.png",
    ),
    Hamburguer(
      name: "X-Single",
      price: "21.90",
      imagePath: "lib/images/x-salad.png",
    ),
    Hamburguer(
      name: "X-Double",
      price: "24.90",
      imagePath: "lib/images/x-double.png",
    ),
    Hamburguer(
      name: "X-Triple",
      price: "28.90",
      imagePath: "lib/images/x-triple.png",
    ),
  ];

  List<Hamburguer> _userCart = [];

  List<Hamburguer> get hamburguerShop => _shop;
  List<Hamburguer> get userCart => _userCart;

  void addItemToCart(Hamburguer buguer) {
    _userCart.add(buguer);
    notifyListeners();
  }

  void removeItemToCart(Hamburguer buguer) {
    _userCart.remove(buguer);
    notifyListeners();
  }
}

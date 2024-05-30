import 'package:flutter/material.dart';
import 'package:prored/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 1

    Product(
      name: "Nk Air Jordan Dunk 1 Low",
      price: 19000,
      description: "NK Air Jordan Dunk 1 Low: Iconic design, premium materials, timeless style.",
      imagePath: 'assets/pic-1.jpg',
    ),

    // product 2

    Product(
      name: "Nk Air Jordan 1 Low",
      price: 14000,
      description: "NK Air Jordan 1 Low: Iconic design, premium comfort, timeless style.",
      imagePath: 'assets/pic-2.png',
    ),
    // product 3

    Product(
      name: "NIKE Air Force Shadow",
      price: 14000,
      description: "NIKE Air Force Shadow: Stylish, iconic design for comfort and performance.",
      imagePath: 'assets/pic-3.png',
    ),
    // product 4

    Product(
      name: "Nike Air Jordan 4 Retro",
      price: 17000,
      description: "Classic Nike Air Jordan 4 Retro: Military-inspired style in black and white.",
      imagePath: 'assets/pic-4.jpg',
    ),

    // p-5
    Product(
      name: "Blue Air Jordan high",
      price: 20000,
      description: "Iconic Blue Air Jordans: Classic style meets ultimate comfort and performance.",
      imagePath: 'assets/pic-5.png',
    ),

    // p-6
    Product(
      name: "Air Force 1",
      price: 12649,
      description: "Timeless Air Force 1: Unrivaled comfort, style, and versatility combined effortlessly.",
      imagePath: 'assets/pic-6.png',
    ),

    // p-7
    Product(
      name: "Converse Skate shoe",
      price: 8799,
      description: "Converse Skate Shoes: Durability, style, and performance for ultimate skateboarding.",
      imagePath: 'assets/pic-7.png',
    ),

    // p-8
     Product(
      name: "Nike Air force",
      price: 12649,
      description: "Nike Air Force: Lightweight, cushioned, unstoppable performance.",
      imagePath: 'assets/pic-8.png',
    ),

    // p-9
    Product(
      name: "Nike Air Max 97",
      price: 19249,
      description: "Nike Air Max 97: Sleek design, cushioned comfort, timeless style statement.",
      imagePath: 'assets/pic-9.png',
    ),

    // p-10
    Product(
      name: "Air Force 1 low",
      price: 15949,
      description: "Air Force 1 Low: Classic design, unmatched comfort, timeless style essential.",
      imagePath: 'assets/pic-10.png',
    ),

    // p-11
    Product(
      name: "air jordan 1 low",
      price: 19799,
      description: "Air Jordan 1 Low: Iconic design, street-ready style, unmatched comfort.",
      imagePath: 'assets/pic-11.png',
    ),

    // p-12
    Product(
      name: "Red Air Jordan high",
      price: 16499,
      description: "Red Air Jordan High: Bold color, iconic style, ultimate performance.",
      imagePath: 'assets/pic-12.png',
    ),

  ];
  // user cart

  final List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}

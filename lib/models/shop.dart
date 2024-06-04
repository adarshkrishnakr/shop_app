import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{
  final List<Product> _shop = [
    Product(name: "Apple Iphone 15 Pro", price: 137990, description: "Apple iPhone 15 Pro (256 GB) - Black Titanium, ",imagePath: "images/IPHONE 15 PRO MAX.jpg"),
    Product(name: "Apple MacBook Air", price: 107990.00, description: "Apple MacBook Air 13,Laptop with M3 chip",imagePath: "images/APPLE MAC.jpg"),
    Product(name: "Apple AirPods Pro", price: 19990, description: "Apple AirPods Pro (2nd Generation) with MagSafe Case (USB‑C) ​​​​​​​(White)",imagePath: "images/Apple Airdops.jpg"),
    Product(name: "Apple Iphone 15", price: 79990, description: "Apple iphone 15(256GB)-white",imagePath: "images/IPHONE 15.jpg")
  ];

  final List<Product> _cart=[];

  List<Product> get shop => _shop;
  List<Product> get cart => _cart;

  void addToCart(Product item){
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item){
    _cart.remove(item);
    notifyListeners();
  }
}
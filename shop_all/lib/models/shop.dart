import 'package:flutter/material.dart';
import 'package:shop_all/models/product.dart';

class Shop extends ChangeNotifier{

// product for sale 
final List<Product> _shop = [ 
  Product(
  name: 'Produit 1',
   description: ' la description du produit . ', 
   price: 123.1,
   imagePath : 'assets/shoes.jpg'
   ),
   Product(
  name: 'Produit 2',
   description: 'la description du produit ...  ', 
   price: 223.2,
   imagePath : 'assets/casques.jpg'

   ),
   Product(
  name: 'Produit 3',
   description: 'la description du produit ', 
   price: 323.3,
   imagePath : 'assets/glass.jpg'
   ),
   Product(
  name: 'Produit 4',
   description: 'la description du produit ', 
   price: 423.4,
   imagePath : 'assets/beauty.jpg'
   ),
];



//uer cart
List<Product> _cart = [];



//get product list
List<Product> get shop => _shop;

//get user cart
List<Product> get cart => _cart;

//add item to cart
void addToCart(Product item){
  _cart.add(item);
  notifyListeners();
  }
//remove item from cart
void removeFromCart(Product item){
  _cart.remove(item);
  notifyListeners();
}

}


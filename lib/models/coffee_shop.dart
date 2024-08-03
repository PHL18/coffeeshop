import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{
  //coffee for sale
  final List<Coffee> _shop=[
    Coffee(name: "Hot Coffee", imagepath: "lib/images/latte-art.png", price: "2.00"),
    Coffee(name: "java Chip", imagepath: "lib/images/javachip.png", price: "3.99"),
    Coffee(name: "Iced coffee", imagepath: "lib/images/ice-coffee.png", price: "2.99"),
    Coffee(name: "Frappuchino", imagepath: "lib/images/coffee-cup.png", price: "4.99"),
    //
  ];

   
  
  List<Coffee> _usercart=[];
    //get the coffee list 
    List<Coffee> get coffeeitems=>_shop;

    //get the user cart

    List<Coffee> get useritems=> _usercart;
  //add the item to the cart 

  void additem(Coffee coffee)
  {
    _usercart.add(coffee);
    notifyListeners();
  }


  //remove the coffee from the cart
void removeitem(Coffee coffee)
{
  _usercart.remove(coffee);
  notifyListeners();
}

}
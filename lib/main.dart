import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:coffeeshop/pages/Homepage.dart';
import 'package:coffeeshop/pages/intropage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context) => CoffeeShop(),
    builder:(context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Intropage() ,
    ),);
  }
}
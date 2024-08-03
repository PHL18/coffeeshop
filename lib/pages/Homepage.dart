import 'package:coffeeshop/components/bottomnavbar.dart';
import 'package:coffeeshop/pages/CartPage.dart';
import 'package:coffeeshop/pages/ShopPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selecedindex=0;
  void navigateBottomBar(index)
  {
     setState(() {
       _selecedindex=index;
     });
  }

//pages

final List<Widget>_pages =[
//shop page 
ShopPage(),
CartPage(),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index )=>navigateBottomBar(index),
        ),
        body: _pages[_selecedindex],

    );
  }
}
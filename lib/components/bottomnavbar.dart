import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)?onTabChange;
   BottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: GNav(
        onTabChange:(value)=>onTabChange!(value) ,
        color: Colors.grey[500],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[800],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 15,
        tabActiveBorder:Border.all(color:Colors.white),
        tabs: [
        GButton(icon:Icons.home,
        text: "Shop",
        ),
        GButton(icon: Icons.shopping_bag,
        text: "Cart",
        )
        
      
      
      ]),
    );
  }
}
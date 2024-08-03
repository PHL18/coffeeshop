import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  final Widget icon;
  CoffeeTile({super.key,required this.coffee,required this.onPressed,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12)
      ),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading:Image.asset(coffee.imagepath),
        trailing:IconButton(icon:icon, onPressed:onPressed,),
        
      
      ),
    );
  }
}
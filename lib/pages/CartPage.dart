import 'package:coffeeshop/components/coffee_tile.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void deleteitem(Coffee coffee)
  {
    Provider.of<CoffeeShop>(context,listen: false).removeitem(coffee);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child) =>SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text("Your cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Expanded(
              child: ListView.builder(
                itemCount: value.useritems.length,
              itemBuilder:(context, index){
                  Coffee c =value.useritems[index];

                  return CoffeeTile(coffee: c, onPressed:()=>deleteitem(c), icon: Icon(Icons.delete));
              }
              //get the indivudal coffee
              
              


            
             )
             ),
             GestureDetector(
               child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                ),
                padding:EdgeInsets.all(25),
                
                child: Center(
                  child: Text("Proceed to pay",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                ),
               
               ),
             )
             
          ],


        ),
      ),
    ));
  }
}
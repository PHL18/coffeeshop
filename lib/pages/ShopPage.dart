import 'package:coffeeshop/components/coffee_tile.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void add(Coffee coffee)
  {
    Provider.of<CoffeeShop>(context,listen: false).additem(coffee);

    //let user notify the that item has been added
    showDialog(context:context, builder:(context) => AlertDialog(
      
      title: Text("item added successfully !",style:TextStyle(fontSize: 16)),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text("How would you like your coffee",style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20,
            ),
            ),
            SizedBox(height: 25,),
            //list of coffee
            Expanded(
              child:ListView.builder(
                itemCount: value.coffeeitems.length,
                itemBuilder:(context, index) {
                  //get individual coffee
                    Coffee c=value.coffeeitems[index];
                  //return 
                  return CoffeeTile(coffee: c, onPressed:()=>add(c), icon:Icon(Icons.add),);
              } ,)
            )


          ],
        ),
      ),
    ),);
  }
}
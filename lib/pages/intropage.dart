import 'package:coffeeshop/pages/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 208, 208),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120,left: 80),
            child: Image.asset("lib/images/coffee.png",width: 200,),
            
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Brew Day",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.brown),),
          
          ),
          SizedBox(height: 25,),
          Text("How do you like your coffee",style: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),),
           SizedBox(height: 40,),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
            },
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 88, 59, 48),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(vertical:25,horizontal: 130),
                child: Text("Enter Shop",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
              
              ),
            ),
          )
        ],
      ),
    );
  }
}
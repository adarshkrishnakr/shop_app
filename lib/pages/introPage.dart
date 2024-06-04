import 'package:ecommerce_app/components/myButton.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.apple,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),

            SizedBox(height: 25,),

            Text("i Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

             SizedBox(height: 10,),

            Text("Premium Quality Proucts",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),

              SizedBox(height: 25,),

            MyButton(onTap: (){
              Navigator.pushNamed(context, '/shopPage');
            }, child: Icon(Icons.arrow_forward))
          
        
        ],),
      ),
    );
  }
}
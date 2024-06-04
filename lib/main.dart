
import 'package:ecommerce_app/models/shop.dart';
import 'package:ecommerce_app/pages/cartPage.dart';
import 'package:ecommerce_app/pages/introPage.dart';
import 'package:ecommerce_app/pages/shopPage.dart';
import 'package:ecommerce_app/themes/lightMode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Shop(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
        theme: lightMode,
        routes: {
          '/introPage':(context)=>IntroPage(),
          '/shopPage':(context)=>ShopPage(),
          '/cartPage':(context)=>CartPage()
        },
        
      ),
    );
  }
}
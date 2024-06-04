import 'package:ecommerce_app/components/myDrawer.dart';
import 'package:ecommerce_app/components/myProductTile.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Shop Page"),
        centerTitle: true,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(onPressed: ()=>Navigator.pushNamed(context, '/cartPage'), icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          SizedBox(height: 25,),

          Center(child: Text("Pick from a selected list of premium products",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),)),
          SizedBox(
        height: 550,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(15),
          itemCount: products.length,
          itemBuilder: (context,index){
          final product = products[index];
        
          return MyProductTile(product: product);
        }),
      ),
        ],
      ),
    );
  }
}
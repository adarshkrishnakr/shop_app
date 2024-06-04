import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeItemFromCart(BuildContext context,Product product){
     showDialog(context: context, builder: (context)=>AlertDialog(
      content: Text("Remove this item from your cart?"),
      actions: [
        MaterialButton(onPressed: ()=>Navigator.pop(context),
        child: Text("Cancel"),),

         MaterialButton(onPressed: (){

          Navigator.pop(context);
          context.read<Shop>().removeFromCart(product);

         },
         
        child: Text("Yes"),)
      ],
    ));

  }

  @override
  Widget build(BuildContext context) {
    final cart =context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Cart Page'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body:  cart.isEmpty? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/EmptyCart.png'),
            Text("Your cart is empty",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),],)
      ) :Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context,index){
            final item = cart[index];

          

            return ListTile(
              leading: Image.asset(item.imagePath),
              title: Text(item.name),
              subtitle: Text(item.price.toStringAsFixed(2)),
              trailing: IconButton(onPressed: ()=>removeItemFromCart(context,item),

               icon: Icon(Icons.delete,color:Theme.of(context).colorScheme.inversePrimary,)),
            );
          }))
        ],
      ),
    );
  }
}
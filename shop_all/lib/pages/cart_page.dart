import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_all/Component/my_button.dart';
import 'package:shop_all/models/product.dart';
import 'package:shop_all/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(BuildContext context, Product product){
    showDialog(
      context: context, 
      builder: (context)=> AlertDialog(
        content: Text("voulez vous vraiment le supprimer du panier ? "),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
            
            ),

            MaterialButton(
            onPressed: () { 
               Navigator.pop(context);

               context.read<Shop>().removeFromCart(product);
            },
            child: const Text('Yes'),
            
            )
        ],
      )

      
      );
  }

  void paiement(BuildContext context){
    showDialog(
      context: context,
       builder: (context) => const AlertDialog(
        content: Text('Le client veut effactuer son paiement gerer la methode de paiement '),
        
       )
       );
  }

  @override
  Widget build(BuildContext context) {

    final cart = context.watch<Shop>().cart;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text('Cart Page ')),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [

          //Liste de panier
          Expanded (
            child: cart.isEmpty
            ? const Center(child: Text('le panier est vide !')) : ListView.builder(
              itemCount: cart.length,
            itemBuilder: (context, index) {
              //recuper chaque item dans le panier
             final item = cart[index];

              //retourner comme liste UI
              return ListTile(
                title: Text(item.name),
                subtitle: Text(item.price.toStringAsFixed(2)),
                trailing: IconButton(
                   icon: const Icon(Icons.remove),
                   onPressed: () => removeFromCart(context, item),
                   )
                

              );

            }
            )
          ),
          //bouton paiement 
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButtton(onTap: ()=> paiement(context), 
            child: const Text (
              'Payer Mainetenant',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              )
            ),
          )

      ],),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_all/models/product.dart';
import 'package:shop_all/models/shop.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({super.key, required this.product});

  void addToCart(BuildContext context){
    showDialog(
      context: context, 
      builder: (context)=> AlertDialog(
        content: const Text("voulez vous vraiment l'ajouter au panier ? "),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
            
            ),

            MaterialButton(
            onPressed: () { 
               Navigator.pop(context);

               context.read<Shop>().addToCart(product);
            },
            child: const Text('Yes'),
            
            )
        ],
      )

      
      );
  }

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Container(
  decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
  ),
  margin: const EdgeInsets.all(10),
  padding: const EdgeInsets.all(25),
  width: 300,
  child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          // Product image
          
             
             SizedBox(
              height: 150,
              width: 150,
               child: Image.asset(
                      product.imagePath,
                      
                      fit: BoxFit.cover,
                    ),
               
             ),
        
            
          const SizedBox(height: 25),
          // Product name
          Expanded(
            child: Text(
              product.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Product price + add to cart
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text('CFA ' +  product.price.toStringAsFixed(2))),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Expanded(
                  child: IconButton(
                    onPressed: () => addToCart(context), 
                    icon: const Icon(Icons.add),
                  ),
                ),
              )
            ],
          )
        ],
  ),
),
      ],
    );
  }
}
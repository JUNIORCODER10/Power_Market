import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_all/Component/drawer.dart';
import 'package:shop_all/Component/my_product_tile.dart';
import 'package:shop_all/Component/ordre.dart';
import 'package:shop_all/models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

   final products = context.watch<Shop>().shop;

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
       
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
         
         actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'),
             icon: const Icon(Icons.shopping_cart_outlined)
             )
         ],
      ),
      drawer: const MyDrawer(),
       backgroundColor: Theme.of(context).colorScheme.background,
       body: SingleChildScrollView(
         child: Column(
          children: [
              Padding(
               padding: const EdgeInsets.all(15.0),
               child: TextField(
              
                decoration: InputDecoration(
                
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left:8.0, right: 20),
                    child: Icon(Icons.search,
                    size: 50,),
                  ),
                  
                  hintText: 'Rechercher produit'
                ),
               ),
             ),
             
               Image.asset('assets/affiche.jpg',
               width: 370,
               fit: BoxFit.fitWidth,
               height: 400,),
             
              const SizedBox(height:10),
             const OrdreList(),
       
             SizedBox(
              height: 550,
             child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              
              padding: const EdgeInsets.all(25),
              itemBuilder: (context, index){
                //recuperer chaque produit de shp
                final product = products[index];
                
                  
                //retourner en tant que ProducTile UI 
                return ProductTile(product: product);
              }, 
              ),
           ),
       
       
          ],
             
           
         ),
       ),
       
    );
  }
}
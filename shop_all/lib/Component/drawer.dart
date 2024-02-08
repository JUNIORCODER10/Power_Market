import 'package:flutter/material.dart';
import 'package:shop_all/Component/list_Tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Column(children: [
            DrawerHeader(
        child: Icon(
          Icons.shopping_bag,
          size: 72,
          color: Theme.of(context).colorScheme.inversePrimary,
          )
        ),
      

      //shop tile
      MyListTile(
        icon: Icons.home,
         text: 'Shop', 
         onTap: () => Navigator.pop(context)
         ),
      

      //cart tile
      MyListTile(
        icon: Icons.shopping_cart,
         text: 'Cart', 
         onTap: () => Navigator.pushNamed(context, '/cart_page')
         ),

         MyListTile(
        icon: Icons.settings,
         text: 'setting', 
         onTap: () => Navigator.pushNamed(context, '/setting_page')
         ),
          ],),
       //drawer header logo
       

      //exit shop tile
      Padding(
        padding: const EdgeInsets.only(bottom : 25.0),
        child: MyListTile(
          icon: Icons.logout,
           text: 'exit', 
           onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/intro_page', (route) => false)
           ),
      ),


        ],
        ),
        

     
    );
  }
}
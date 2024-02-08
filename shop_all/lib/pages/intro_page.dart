import 'package:flutter/material.dart';
import 'package:shop_all/Component/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,

      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
            //logo
            Image.asset(
              'assets/logo.jpg'
            ),
           const SizedBox(height: 15),
            //title
            const Text(
              'Power Market ',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
      
              ),
              ),
              const SizedBox(height: 15),
      
            //subtitle
            const Text(
              'tous acheter et tous vendre à un seul Click!',
              style: TextStyle(
                fontSize: 16,

              ),
              ),

              const SizedBox(height: 15),
      
            //button
             MyButtton(onTap:() => Navigator.pushNamed(context, '/shop_page') , child: const Icon(Icons.arrow_forward))
      
        ]),
      ),

      
     
    );
  }
}
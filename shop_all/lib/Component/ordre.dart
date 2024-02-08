
import 'package:flutter/material.dart';

class OrdreList extends StatelessWidget {
  const OrdreList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  
                    //vols
                   Column(
                     children: [
                       Container(
                        padding: const EdgeInsets.all(10),
                        
                        
                        child: IconButton(
                          onPressed: (){}, 
                          icon:  Image.asset('assets/populaire.png')
                          
                          ),
                         
                          
                       ),
                       Text('Populaire',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                        ),
                     ],
                   ),
                    Column(
                     children: [
                       Container(
                        padding: const EdgeInsets.all(10),
                        
                        
                        child: IconButton(
                          onPressed: (){}, 
                          icon:  Image.asset('assets/men.png')
                          
                          ),
                         
                          
                       ),
                       Text('Homme',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                       
                       ),
                     ],
                   ),

                   Column(
                     children: [
                       Container(
                        padding: const EdgeInsets.all(10),
                        
                        
                        child: IconButton(
                          onPressed: (){}, 
                          icon:  Image.asset('assets/woman.png')
                          
                          ),
                         
                          
                       ),
                       Text('Femme',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                       
                       ),
                     ],
                   ),
                  ],
    );
  }
}
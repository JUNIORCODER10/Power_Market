import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_all/themes/theme-provider.dart';
import 'package:shop_all/themes/theme.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    bool isDarkMode = themeProvider.themeData == darkMode;
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0 ,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text('Setting')),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,

        ),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(18),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         // title
           Text(
          isDarkMode ? 'Light Mode' : 'Dark Mode',
          
          ),

         //bouton
         IconButton(
          onPressed: (){
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          }, 
          icon:  const Icon(
            Icons.mode_night_rounded,
            //color: Theme.of(context).colorScheme.inversePrimary,
          )
          )
        ],),
      ),
    );
  }
}
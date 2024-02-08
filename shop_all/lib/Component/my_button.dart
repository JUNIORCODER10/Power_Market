import 'package:flutter/material.dart';

class MyButtton extends StatelessWidget {
  final Function()? onTap;
  final Widget child;
  const MyButtton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
        ),
       
        padding: const EdgeInsets.all(22),
         child: child,
      ),
    );
  }
}
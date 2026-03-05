import 'package:flutter/material.dart';

class CardAtom extends StatelessWidget {
  const CardAtom({super.key, required this.child, required this.backgroundColor});

  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return 
       
       Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
        child: child,
    
    );
  }
}
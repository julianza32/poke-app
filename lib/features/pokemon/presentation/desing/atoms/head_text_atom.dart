import 'package:flutter/material.dart';

class HeadTextAtom extends StatelessWidget {
  const HeadTextAtom({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500, color: Colors.black87),
    );
  }
}
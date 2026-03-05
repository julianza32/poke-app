import 'package:flutter/material.dart';

class TextAtom extends StatelessWidget {
  const TextAtom({super.key, required this.text, this.textAlign = TextAlign.center});

  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black87),
    );
  }
}

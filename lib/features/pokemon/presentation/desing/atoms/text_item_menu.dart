import 'package:flutter/material.dart';

class TextItemMenu extends StatelessWidget {
  const TextItemMenu({super.key, required this.title, required this.selected});

  final String title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w400,
            color: selected ? const Color(0xFF1E88E5) : Colors.black87));
  }
}

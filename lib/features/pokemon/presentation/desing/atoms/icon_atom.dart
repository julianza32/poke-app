import 'package:flutter/material.dart';

class IconAtom extends StatelessWidget {
  const IconAtom({super.key, required this.iconData, required this.selected, this.size = 24});

  final IconData iconData;
  final bool selected;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(iconData, color: selected ? const Color(0xFF1E88E5) : const Color(0xFFB0BEC5), size: size);
  }
}
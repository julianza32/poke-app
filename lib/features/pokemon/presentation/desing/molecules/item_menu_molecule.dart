import 'package:flutter/material.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/icon_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/text_item_menu.dart';

class ItemMenuMolecule extends StatelessWidget {
  const ItemMenuMolecule({super.key, required this.icon, required this.title, required this.selected, required this.onPress});

  final IconData icon;
  final String title;
  final bool selected;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          IconAtom(iconData: icon, selected: selected,),
          TextItemMenu(title: title, selected: selected)
        ],
      ),
    );
  }
}
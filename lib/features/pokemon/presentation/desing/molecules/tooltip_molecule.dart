import 'package:flutter/material.dart';
import 'package:global66/core/localizations/localization_helper.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/image_container_molecule.dart';

class TooltipMolecule extends StatelessWidget {
  const TooltipMolecule({super.key, required this.text, required this.imagePath, this.colorBackgroud = const Color(0xFF1E88E5)});

  final String text;
  final String imagePath; 
  final Color colorBackgroud;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: colorBackgroud,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageContainerMolecule(imagePath: imagePath, colorImage: colorBackgroud, colorBackgroud: Colors.white,),
          const SizedBox(width: 10),
          Text(
            LocalizationHelper.getPokemonType(context, text),
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

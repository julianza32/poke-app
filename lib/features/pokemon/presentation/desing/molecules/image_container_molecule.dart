import 'package:flutter/material.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/image_atom.dart';

class ImageContainerMolecule extends StatelessWidget {
  const ImageContainerMolecule({super.key, required this.imagePath, required this.colorBackgroud, required this.colorImage});

  final String imagePath;
  final Color colorBackgroud;
  final Color colorImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colorBackgroud,
      ),
      child: Center(
        child: SizedBox(
          width: 15,
          height: 15,
          child: ImageAtom(
            imagePath: imagePath,
            width: 15,
            height: 15,
            colorImage: colorImage,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

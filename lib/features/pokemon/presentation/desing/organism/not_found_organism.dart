import 'package:flutter/material.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/head_text_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/image_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/primary_button_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/text_atom.dart';

class NotFoundOrganism extends StatelessWidget {
  const NotFoundOrganism(
      {super.key,
      required this.imagePath,
      required this.text,
       this.onPress,
      required this.titleButton,
      required this.paragraph,
      this.showButton = true});

  final String imagePath;
  final String text, paragraph;
  final VoidCallback? onPress;
  final String titleButton;
  final bool showButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: ImageAtom(
            imagePath: imagePath,
            width: 342,
            height: 264,
            fit: BoxFit.contain,
          ),
        ),
        HeadTextAtom(text: text),
        TextAtom(text: paragraph),
        if (showButton)
          PrimaryButtonAtom(
              onPress: onPress!,
              title: titleButton,
              size: PrimaryButtonSize.small)
      ],
    );
  }
}

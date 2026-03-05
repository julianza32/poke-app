import 'package:flutter/material.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/head_text_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/image_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/primary_button_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/text_atom.dart';

class OnboardingOrganism extends StatelessWidget {
  const OnboardingOrganism(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.onPress,
      required this.titleButton,
      required this.textParragraf,
      this.currentOnboarding = 1});

  final String imagePath;
  final String text, textParragraf, titleButton;
  final VoidCallback onPress;
  final int currentOnboarding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 70),
          ImageAtom(
              imagePath: imagePath,
              width: 342,
              height: 264,
              fit: BoxFit.contain,
              ),
          const SizedBox(height: 20),
          HeadTextAtom(text: text),
          const SizedBox(height: 20),
          TextAtom(text: textParragraf),
          const SizedBox(height: 40),
          PrimaryButtonAtom(
              onPress: onPress,
              title: titleButton,
              showDot: true,
              totalSteps: 2,
              currentStep: currentOnboarding),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:global66/core/localizations/app_localizations.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/onboarding_organism.dart';
import 'package:go_router/go_router.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingOrganism(
        imagePath: 'assets/images/onboardingTwo.png',
        text: AppLocalizations.of(context)!.textWelcomeOnboardingTwo,
        textParragraf: AppLocalizations.of(context)!.textParagraphOnboardingTwo,
        titleButton: AppLocalizations.of(context)!.titleButtonOnboardingTwo,
        onPress: () => context.push('/pokemons'),
        currentOnboarding: 2,
      ),
    );
  }
}

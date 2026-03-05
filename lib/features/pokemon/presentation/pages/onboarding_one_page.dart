import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66/core/localizations/app_localizations.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/onboarding_organism.dart';
import 'package:go_router/go_router.dart';

class OnboardingOne extends ConsumerWidget {
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: OnboardingOrganism(
        imagePath: 'assets/images/onboardingOne.png',
        text: AppLocalizations.of(context)!.textWelcomeOnboardingOne,
        textParragraf: AppLocalizations.of(context)!.textParagraphOnboardingOne,
        titleButton: AppLocalizations.of(context)!.titleButtonOnboardingOne,
        onPress: () => context.push('/onboarding-two'),
      ),
    );
  }
}

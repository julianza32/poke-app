import 'package:flutter/widgets.dart';
import 'package:global66/core/localizations/app_localizations.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/not_found_organism.dart';
import 'package:global66/features/pokemon/presentation/desing/templates/page_template.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: NotFoundOrganism(
                imagePath: 'assets/images/magikarp.png',
                text: AppLocalizations.of(context)!.commingSoon,
                paragraph: AppLocalizations.of(context)!.weAreWorkingOnThisSection,
                titleButton: '',
                showButton: false,
              ),
        ));
  }
}
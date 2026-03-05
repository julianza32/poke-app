import 'package:flutter/widgets.dart';
import 'package:global66/core/localizations/app_localizations.dart';

class LocalizationHelper {
  static String getPokemonType(BuildContext context, String typeKey) {
    final l10n = AppLocalizations.of(context);
    if (l10n == null) return typeKey;
    return switch (typeKey.toLowerCase()) {
      'normal' => l10n.normal,
      'fighting' => l10n.fighting,
      'flying' => l10n.flying,
      'poison' => l10n.poison,
      'ground' => l10n.ground,
      'rock' => l10n.rock,
      'bug' => l10n.bug,
      'ghost' => l10n.ghost,
      'steel' => l10n.steel,
      'fire' => l10n.fire,
      'water' => l10n.water,
      'grass' => l10n.grass,
      'electric' => l10n.electric,
      'psychic' => l10n.psychic,
      'ice' => l10n.ice,
      'dragon' => l10n.dragon,
      'dark' => l10n.dark,
      'fairy' => l10n.fairy,
      _ => typeKey, // Return original if not found
    };
  }
}

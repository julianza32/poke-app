import 'package:global66/features/pokemon/data/models/pokemon_model.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';

class PokemonMapper {
  static String getDescription(
    PokemonSpeciesModel species, {
    String preferredLanguage = 'es',
  }) {
    if (species.flavorTextEntries == null || species.flavorTextEntries!.isEmpty) {
      return 'No hay descripción disponible.';
    }

    final entry = species.flavorTextEntries!.firstWhere(
      (entry) => entry.language.name == preferredLanguage,
      orElse: () => species.flavorTextEntries!.first,
    );

    return entry.flavorText
        .replaceAll('\n', ' ')
        .replaceAll('\f', ' ')
        .trim();
  }

  static String getCategory(
    PokemonSpeciesModel species, {
    String preferredLanguage = 'es',
  }) {
    if (species.genera == null || species.genera!.isEmpty) {
      return 'Desconocida';
    }

    final genus = species.genera!.firstWhere(
      (entry) => entry.language.name == preferredLanguage,
      orElse: () => species.genera!.first,
    );

    final category = genus.flavorText
        .replaceAll(RegExp(r'Pokémon|Pokemon', caseSensitive: false), '')
        .trim();
    return category.isNotEmpty ? category : 'Desconocida';
  }

  static String getAbilityName(
    AbilitiesPokemonModel abilities, {
    String preferredLanguage = 'es',
  }) {
    if (abilities.names.isEmpty) {
      return 'Desconocida';
    }

    final name = abilities.names.firstWhere(
      (entry) => entry.language.name == preferredLanguage,
      orElse: () => abilities.names.first,
    );

    return name.name;
  }

  static List<String> getDamageRelations(List<TypesPokemonModel> types) {
    return types
        .expand((t) => t.damageRelations.doubleDamageTo.map((e) => e.name))
        .toSet() 
        .toList();
  }

  static List<Pokemon> mapPokemonFavoriteToEntity(
      List<Pokemon> allPokemons) {

    return allPokemons.map((pokemon) {
      return pokemon.copyWith(isFavorite: true);
    }).toList();
    
  }
}

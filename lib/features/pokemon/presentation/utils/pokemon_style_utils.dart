import 'package:flutter/material.dart';

/// Style configuration for Pokémon cards based on type.
class PokemonCardStyle {
  final Color backgroundColor;
  final Color pokemonBackgroundColor;
  final String image;

  const PokemonCardStyle({
    required this.backgroundColor,
    required this.pokemonBackgroundColor,
    required this.image,
  });

  /// Creates a style from a base color (KISS: avoids repetition).
  factory PokemonCardStyle.fromColor(Color baseColor, String imagePath) {
    return PokemonCardStyle(
      backgroundColor: baseColor.withOpacity(0.5),
      pokemonBackgroundColor: baseColor,
      image: imagePath,
    );
  }
}

// estilos por defecto para pokemons sin tipo o con error 
const _fallbackStyle = PokemonCardStyle(
  backgroundColor: Colors.grey,
  pokemonBackgroundColor: Color(0xFFEFEFEF),
  image: 'assets/images/Loader.png',
);

// mapa con estilos por tipo para cada tipo de pokemon 
const Map<String, (Color, String)> _typeStyleMap = {
  'normal': (Color(0xFF919AA2), 'assets/images/normal.png'),
  'fighting': (Color(0xFFCE416B), 'assets/images/fighting.png'),
  'flying': (Color(0xFF89AAE3), 'assets/images/flying.png'),
  'poison': (Color(0xFFB567CE), 'assets/images/poison.png'),
  'ground': (Color(0xFFD97845), 'assets/images/ground.png'),
  'rock': (Color(0xFFB5B78C), 'assets/images/rock.png'),
  'bug': (Color(0xFF91C12F), 'assets/images/bug.png'),
  'ghost': (Color(0xFF5269AD), 'assets/images/ghost.png'),
  'steel': (Color(0xFF5A8EA2), 'assets/images/steel.png'),
  'fire': (Color(0xFFFF9800), 'assets/images/fire.png'),
  'water': (Color(0xFF5090D6), 'assets/images/water.png'),
  'grass': (Color(0xFF8BC34A), 'assets/images/grass.png'),
  'electric': (Color(0xFFF4D23C), 'assets/images/electric.png'),
  'psychic': (Color(0xFFFA7179), 'assets/images/psychic.png'),
  'ice': (Color(0xFF73CEC0), 'assets/images/ice.png'),
  'dragon': (Color(0xFF0B6DC3), 'assets/images/dragon.png'),
  'dark': (Color(0xFF5A5465), 'assets/images/dark.png'),
  'fairy': (Color(0xFFEC8FE6), 'assets/images/fairy.png'),
};

// funcion para obtener el estilo de un pokemon a partir de su tipo
PokemonCardStyle getPokemonStyleFromSprite(String? nameType) {
  if (nameType == null) return _fallbackStyle;

  final styleData = _typeStyleMap[nameType.toLowerCase()];
  if (styleData == null) return _fallbackStyle;

  final (color, imagePath) = styleData;
  return PokemonCardStyle.fromColor(color, imagePath);
}

import 'package:flutter_test/flutter_test.dart';
import 'package:global66/features/pokemon/presentation/utils/pokemon_style_utils.dart';
import 'package:flutter/material.dart';

void main() {
  group('getPokemonStyleFromSprite', () {
    test('should return correct style for "pikachu" type electric', () {
      // Act
      final result = getPokemonStyleFromSprite('electric');

      // Assert
      expect(result.image, 'assets/images/electric.png');
      expect(result.pokemonBackgroundColor, const Color(0xFFF4D23C));
    });

    test('should return correct style for water type', () {
      // Act
      final result = getPokemonStyleFromSprite('water');

      // Assert
      expect(result.image, 'assets/images/water.png');
      expect(result.pokemonBackgroundColor, const Color(0xFF5090D6));
    });

    test('should return correct style for fire type', () {
      // Act
      final result = getPokemonStyleFromSprite('fire');

      // Assert
      expect(result.image, 'assets/images/fire.png');
      expect(result.pokemonBackgroundColor, const Color(0xFFFF9800));
    });

    test('should return correct style for grass type', () {
      // Act
      final result = getPokemonStyleFromSprite('grass');

      // Assert
      expect(result.image, 'assets/images/grass.png');
      expect(result.pokemonBackgroundColor, const Color(0xFF8BC34A));
    });

    test('should return correct style for psychic type', () {
      // Act
      final result = getPokemonStyleFromSprite('psychic');

      // Assert
      expect(result.image, 'assets/images/psychic.png');
      expect(result.pokemonBackgroundColor, const Color(0xFFFA7179));
    });

    test('should return correct style for dragon type', () {
      // Act
      final result = getPokemonStyleFromSprite('dragon');

      // Assert
      expect(result.image, 'assets/images/dragon.png');
      expect(result.pokemonBackgroundColor, const Color(0xFF0B6DC3));
    });

    test('should return fallback style for null type', () {
      // Act
      final result = getPokemonStyleFromSprite(null);

      // Assert
      expect(result.image, 'assets/images/Loader.png');
      expect(result.pokemonBackgroundColor, const Color(0xFFEFEFEF));
      expect(result.backgroundColor, Colors.grey);
    });

    test('should return fallback style for unknown type', () {
      // Act
      final result = getPokemonStyleFromSprite('unknown_type');

      // Assert
      expect(result.image, 'assets/images/Loader.png');
      expect(result.pokemonBackgroundColor, const Color(0xFFEFEFEF));
    });

    test('should be case insensitive', () {
      // Act
      final resultLower = getPokemonStyleFromSprite('electric');
      final resultUpper = getPokemonStyleFromSprite('ELECTRIC');
      final resultMixed = getPokemonStyleFromSprite('Electric');

      // Assert
      expect(resultLower.image, resultUpper.image);
      expect(resultLower.image, resultMixed.image);
    });

    test('should return backgroundColor with 0.5 opacity', () {
      // Act
      final result = getPokemonStyleFromSprite('water');

      // Assert
      // pokemonBackgroundColor is full opacity
      expect(result.pokemonBackgroundColor.opacity, 1.0);
      // backgroundColor should have 0.5 opacity
      expect(result.backgroundColor.opacity, 0.5);
    });

    group('all types coverage', () {
      final allTypes = [
        'normal',
        'fighting',
        'flying',
        'poison',
        'ground',
        'rock',
        'bug',
        'ghost',
        'steel',
        'fire',
        'water',
        'grass',
        'electric',
        'psychic',
        'ice',
        'dragon',
        'dark',
        'fairy',
      ];

      for (final type in allTypes) {
        test('should return valid style for $type', () {
          // Act
          final result = getPokemonStyleFromSprite(type);

          // Assert
          expect(result.image, contains('assets/images/'));
          expect(result.image, contains('$type.png'));
          expect(result.pokemonBackgroundColor, isNot(const Color(0xFFEFEFEF)));
        });
      }
    });
  });

  group('PokemonCardStyle', () {
    test('factory fromColor should create style with correct opacities', () {
      // Arrange
      const baseColor = Color(0xFF5090D6);
      const imagePath = 'assets/images/water.png';

      // Act
      final style = PokemonCardStyle.fromColor(baseColor, imagePath);

      // Assert
      expect(style.image, imagePath);
      expect(style.pokemonBackgroundColor, baseColor);
      expect(style.backgroundColor.opacity, 0.5);
    });
  });
}

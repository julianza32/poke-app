import 'package:flutter_test/flutter_test.dart';
import 'package:global66/core/utils/url_parser.dart';

void main() {
  group('extractIdFromUrl', () {
    test('should extract id from valid Pokemon URL', () {
      // Arrange
      const url = 'https://pokeapi.co/api/v2/pokemon/25/';
      
      // Act
      final result = extractIdFromUrl(url);
      
      // Assert
      expect(result, 25);
    });

    test('should extract id from URL without trailing slash', () {
      // Arrange
      const url = 'https://pokeapi.co/api/v2/pokemon/150';
      
      // Act
      final result = extractIdFromUrl(url);
      
      // Assert
      expect(result, 150);
    });

    test('should extract id from species URL', () {
      // Arrange
      const url = 'https://pokeapi.co/api/v2/pokemon-species/1/';
      
      // Act
      final result = extractIdFromUrl(url);
      
      // Assert
      expect(result, 1);
    });

    test('should extract id from ability URL', () {
      // Arrange
      const url = 'https://pokeapi.co/api/v2/ability/65/';
      
      // Act
      final result = extractIdFromUrl(url);
      
      // Assert
      expect(result, 65);
    });

    test('should return null for null URL', () {
      // Act
      final result = extractIdFromUrl(null);
      
      // Assert
      expect(result, isNull);
    });

    test('should return null for empty URL', () {
      // Act
      final result = extractIdFromUrl('');
      
      // Assert
      expect(result, isNull);
    });

    test('should return null for URL without numeric id', () {
      // Arrange
      const url = 'https://pokeapi.co/api/v2/pokemon/pikachu/';
      
      // Act
      final result = extractIdFromUrl(url);
      
      // Assert
      expect(result, isNull);
    });

    test('should return null for invalid URL format', () {
      // Arrange
      const url = 'not-a-valid-url';
      
      // Act
      final result = extractIdFromUrl(url);
      
      // Assert
      expect(result, isNull);
    });
  });
}

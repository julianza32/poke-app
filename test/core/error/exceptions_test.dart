import 'package:flutter_test/flutter_test.dart';
import 'package:global66/core/error/exceptions.dart';

void main() {
  group('PokemonException', () {
    group('PokemonNotFoundException', () {
      test('should have correct message and status code', () {
        // Arrange & Act
        const exception = PokemonNotFoundException(25);

        // Assert
        expect(exception.message, 'Pokemon with id 25 not found');
        expect(exception.statusCode, 404);
      });

      test('toString should return formatted message', () {
        // Arrange
        const exception = PokemonNotFoundException(1);

        // Act
        final result = exception.toString();

        // Assert
        expect(result, contains('Pokemon with id 1 not found'));
        expect(result, contains('404'));
      });
    });

    group('PokemonListFetchException', () {
      test('should have correct message and status code', () {
        // Arrange & Act
        const exception = PokemonListFetchException('Server error', statusCode: 500);

        // Assert
        expect(exception.message, 'Failed to fetch Pokemon list: Server error');
        expect(exception.statusCode, 500);
      });

      test('should work without status code', () {
        // Arrange & Act
        const exception = PokemonListFetchException('Unknown error');

        // Assert
        expect(exception.statusCode, isNull);
      });
    });

    group('PokemonSpeciesNotFoundException', () {
      test('should have correct message', () {
        // Arrange & Act
        const exception = PokemonSpeciesNotFoundException(150);

        // Assert
        expect(exception.message, 'Pokemon species with id 150 not found');
        expect(exception.statusCode, 404);
      });
    });

    group('PokemonAbilitiesNotFoundException', () {
      test('should have correct message', () {
        // Arrange & Act
        const exception = PokemonAbilitiesNotFoundException(65);

        // Assert
        expect(exception.message, 'Pokemon abilities with id 65 not found');
        expect(exception.statusCode, 404);
      });
    });

    group('PokemonTypeNotFoundException', () {
      test('should have correct message', () {
        // Arrange & Act
        const exception = PokemonTypeNotFoundException('electric');

        // Assert
        expect(exception.message, 'Pokemon type "electric" not found');
        expect(exception.statusCode, 404);
      });
    });

    group('NetworkException', () {
      test('should have correct message and null status code', () {
        // Arrange & Act
        const exception = NetworkException('Connection timeout');

        // Assert
        expect(exception.message, 'Network error: Connection timeout');
        expect(exception.statusCode, isNull);
      });
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:global66/core/security/input_validator.dart';
import 'package:global66/core/constants/app_constants.dart';

void main() {
  group('InputValidator', () {
    group('validatePokemonId', () {
      test('should return valid ID for numeric string', () {
        expect(InputValidator.validatePokemonId('25'), 25);
      });

      test('should return valid ID for string with leading zeros', () {
        expect(InputValidator.validatePokemonId('025'), 25);
      });

      test('should return null for null input', () {
        expect(InputValidator.validatePokemonId(null), isNull);
      });

      test('should return null for empty input', () {
        expect(InputValidator.validatePokemonId(''), isNull);
      });

      test('should return null for non-numeric input', () {
        expect(InputValidator.validatePokemonId('pikachu'), isNull);
      });

      test('should return null for negative ID', () {
        expect(InputValidator.validatePokemonId('-1'), isNull);
      });

      test('should return null for ID exceeding maximum', () {
        expect(InputValidator.validatePokemonId('999999'), isNull);
      });

      test('should extract ID from mixed input', () {
        expect(InputValidator.validatePokemonId('pokemon25'), 25);
      });

      test('should return ID for boundary value (1)', () {
        expect(InputValidator.validatePokemonId('1'), 1);
      });
    });

    group('validateTypes', () {
      test('should return valid types', () {
        final result = InputValidator.validateTypes(['fire', 'water']);
        expect(result, containsAll(['fire', 'water']));
      });

      test('should filter out invalid types', () {
        final result =
            InputValidator.validateTypes(['fire', 'invalid', 'water']);
        expect(result, containsAll(['fire', 'water']));
        expect(result, isNot(contains('invalid')));
      });

      test('should return empty list for null input', () {
        expect(InputValidator.validateTypes(null), isEmpty);
      });

      test('should return empty list for empty input', () {
        expect(InputValidator.validateTypes([]), isEmpty);
      });

      test('should remove duplicates', () {
        final result = InputValidator.validateTypes(['fire', 'FIRE', 'Fire']);
        expect(result.length, 1);
        expect(result.first, 'fire');
      });

      test('should handle case-insensitive input', () {
        final result = InputValidator.validateTypes(['FIRE', 'Water']);
        expect(result, containsAll(['fire', 'water']));
      });
    });

    group('validatePagination', () {
      test('should return default values when null', () {
        final result = InputValidator.validatePagination();
        expect(result.limit, ApiConfig.defaultPageSize);
        expect(result.offset, 0);
      });

      test('should clamp limit to maximum', () {
        final result = InputValidator.validatePagination(limit: 500);
        expect(result.limit, ApiConfig.maxPageSize);
      });

      test('should clamp limit to minimum', () {
        final result = InputValidator.validatePagination(limit: -10);
        expect(result.limit, 1);
      });

      test('should clamp offset to minimum', () {
        final result = InputValidator.validatePagination(offset: -10);
        expect(result.offset, 0);
      });

      test('should return valid values unchanged', () {
        final result = InputValidator.validatePagination(limit: 50, offset: 20);
        expect(result.limit, 50);
        expect(result.offset, 20);
      });
    });
  });

  group('SecurityConfig', () {
    test('should validate correct Pokemon ID', () {
      expect(SecurityConfig.isValidPokemonId(25), isTrue);
    });

    test('should reject Pokemon ID below minimum', () {
      expect(SecurityConfig.isValidPokemonId(0), isFalse);
    });

    test('should reject Pokemon ID above maximum', () {
      expect(SecurityConfig.isValidPokemonId(100000), isFalse);
    });

    test('should validate correct type', () {
      expect(SecurityConfig.isValidType('fire'), isTrue);
    });

    test('should reject invalid type', () {
      expect(SecurityConfig.isValidType('invalid'), isFalse);
    });

    test('should sanitize input with special characters', () {
      final result = SecurityConfig.sanitizeInput('test<script>alert</script>');
      expect(result, 'testscriptalertscript');
    });

    test('should truncate input exceeding maximum length', () {
      final longInput = 'a' * 100;
      final result = SecurityConfig.sanitizeInput(longInput);
      expect(result.length, SecurityConfig.maxInputLength);
    });
  });

  group('String Extensions', () {
    test('isValidPokemonId should return true for valid ID', () {
      expect('25'.isValidPokemonId, isTrue);
    });

    test('isValidPokemonId should return false for invalid ID', () {
      expect('pikachu'.isValidPokemonId, isFalse);
    });

    test('isValidPokemonType should return true for valid type', () {
      expect('fire'.isValidPokemonType, isTrue);
    });

    test('isValidPokemonType should return false for invalid type', () {
      expect('invalid'.isValidPokemonType, isFalse);
    });

  
  });
}

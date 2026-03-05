import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:global66/features/pokemon/domain/usecases/get_pokemons_by_types.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  late GetPokemonsByTypes useCase;
  late MockPokemonRepository mockRepository;

  setUp(() {
    mockRepository = MockPokemonRepository();
    useCase = GetPokemonsByTypes(mockRepository);
  });

  group('GetPokemonsByTypes', () {
    test('should get list of pokemons filtered by type', () async {
      // Arrange
      final mockPokemons = [
        _createMockPokemon(id: 7, name: 'squirtle', type: 'water'),
        _createMockPokemon(id: 8, name: 'wartortle', type: 'water'),
      ];

      when(() => mockRepository.getPokemonsByTypes(['water']))
          .thenAnswer((_) async => mockPokemons);

      // Act
      final result = await useCase(['water']);

      // Assert
      expect(result, mockPokemons);
      expect(result.length, 2);
      verify(() => mockRepository.getPokemonsByTypes(['water'])).called(1);
    });

    test('should handle multiple types', () async {
      // Arrange
      final mockPokemons = [
        _createMockPokemon(id: 4, name: 'charmander', type: 'fire'),
        _createMockPokemon(id: 7, name: 'squirtle', type: 'water'),
      ];

      when(() => mockRepository.getPokemonsByTypes(['water', 'fire']))
          .thenAnswer((_) async => mockPokemons);

      // Act
      final result = await useCase(['water', 'fire']);

      // Assert
      expect(result.length, 2);
      verify(() => mockRepository.getPokemonsByTypes(['water', 'fire']))
          .called(1);
    });

    test('should return empty list when no pokemons match types', () async {
      // Arrange
      when(() => mockRepository.getPokemonsByTypes(['unknown']))
          .thenAnswer((_) async => []);

      // Act
      final result = await useCase(['unknown']);

      // Assert
      expect(result, isEmpty);
    });

    test('should handle empty types list', () async {
      // Arrange
      when(() => mockRepository.getPokemonsByTypes([]))
          .thenAnswer((_) async => []);

      // Act
      final result = await useCase([]);

      // Assert
      expect(result, isEmpty);
    });
  });
}

Pokemon _createMockPokemon({
  required int id,
  required String name,
  required String type,
}) {
  return Pokemon(
    id: id,
    name: name,
    height: 10,
    weight: 10,
    types: [
      PokemonType(
        slot: 1,
        type: TypeInfo(name: type, url: ''),
      ),
    ],
    abilities: const [],
    damageRelations: const [],
  );
}

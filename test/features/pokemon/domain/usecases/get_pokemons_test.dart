import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:global66/features/pokemon/domain/usecases/get_pokemons.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  late GetPokemons useCase;
  late MockPokemonRepository mockRepository;

  setUp(() {
    mockRepository = MockPokemonRepository();
    useCase = GetPokemons(mockRepository);
  });

  group('GetPokemons', () {
    test('should get list of pokemons from repository', () async {
      // Arrange
      final mockPokemons = [
        _createMockPokemon(id: 1, name: 'bulbasaur'),
        _createMockPokemon(id: 2, name: 'ivysaur'),
      ];

      when(() => mockRepository.getPokemons(limit: 20, offset: 0))
          .thenAnswer((_) async => mockPokemons);

      // Act
      final result = await useCase();

      // Assert
      expect(result, mockPokemons);
      expect(result.length, 2);
      verify(() => mockRepository.getPokemons(limit: 20, offset: 0)).called(1);
    });

    test('should pass limit and offset to repository', () async {
      // Arrange
      when(() => mockRepository.getPokemons(limit: 10, offset: 30))
          .thenAnswer((_) async => []);

      // Act
      await useCase(limit: 10, offset: 30);

      // Assert
      verify(() => mockRepository.getPokemons(limit: 10, offset: 30)).called(1);
    });

    test('should return empty list when no pokemons', () async {
      // Arrange
      when(() => mockRepository.getPokemons(limit: 20, offset: 0))
          .thenAnswer((_) async => []);

      // Act
      final result = await useCase();

      // Assert
      expect(result, isEmpty);
    });
  });
}

Pokemon _createMockPokemon({required int id, required String name}) {
  return Pokemon(
    id: id,
    name: name,
    height: 10,
    weight: 10,
    types: const [
      PokemonType(
        slot: 1,
        type: TypeInfo(name: 'grass', url: ''),
      ),
    ],
    abilities: const [],
    damageRelations: const [],
  );
}

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:global66/features/pokemon/domain/usecases/get_pokemon_by_id.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  late GetPokemonById useCase;
  late MockPokemonRepository mockRepository;

  setUp(() {
    mockRepository = MockPokemonRepository();
    useCase = GetPokemonById(mockRepository);
  });

  group('GetPokemonById', () {
    test('should get pokemon details from repository', () async {
      // Arrange
      final mockPokemon = _createDetailedMockPokemon();

      when(() => mockRepository.getPokemonById(25))
          .thenAnswer((_) async => mockPokemon);

      // Act
      final result = await useCase(id: 25);

      // Assert
      expect(result, mockPokemon);
      expect(result.id, 25);
      expect(result.name, 'pikachu');
      expect(result.description, 'Un Pokémon eléctrico.');
      verify(() => mockRepository.getPokemonById(25)).called(1);
    });

    test('should throw exception when pokemon not found', () async {
      // Arrange
      when(() => mockRepository.getPokemonById(9999))
          .thenThrow(Exception('Pokemon not found'));

      // Act & Assert
      expect(
        () => useCase(id: 9999),
        throwsException,
      );
    });
  });
}

Pokemon _createDetailedMockPokemon() {
  return const Pokemon(
    id: 25,
    name: 'pikachu',
    height: 40,
    weight: 60,
    types: [
      PokemonType(
        slot: 1,
        type: TypeInfo(name: 'electric', url: ''),
      ),
    ],
    abilities: [
      Abilities(
        ability: TypeInfo(name: 'static', url: ''),
        isHidden: false,
        slot: 1,
      ),
    ],
    description: 'Un Pokémon eléctrico.',
    category: 'Ratón',
    ability: 'Electricidad Estática',
    genderRate: 4,
    damageRelations: ['ground'],
  );
}

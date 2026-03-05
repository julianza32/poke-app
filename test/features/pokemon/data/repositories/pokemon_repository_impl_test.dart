import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:global66/features/pokemon/data/datasources/pokemon_remote_data_source.dart';
import 'package:global66/features/pokemon/data/datasources/pokemon_local_data_source.dart';
import 'package:global66/features/pokemon/data/models/pokemon_model.dart';
import 'package:global66/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart' hide Names;

// Mock classes
class MockPokemonRemoteDataSource extends Mock
    implements PokemonRemoteDataSource {}

class MockPokemonLocalDataSource extends Mock
    implements PokemonLocalDataSource {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late PokemonRepositoryImpl repository;
  late MockPokemonRemoteDataSource mockDataSource;
  late MockPokemonLocalDataSource mockLocalDataSource;

  setUp(() {
    mockDataSource = MockPokemonRemoteDataSource();
    mockLocalDataSource = MockPokemonLocalDataSource();
    repository = PokemonRepositoryImpl(
      remoteDataSource: mockDataSource,
      localDataSource: mockLocalDataSource,
    );
  });

  group('PokemonRepositoryImpl', () {
    group('getPokemons', () {
      test('should return list of Pokemon entities', () async {
        // Arrange
        final mockPokemons = [
          _createMockPokemonModel(id: 1, name: 'bulbasaur'),
          _createMockPokemonModel(id: 2, name: 'ivysaur'),
        ];

        when(() => mockDataSource.fetchPokemons(limit: 20, offset: 0))
            .thenAnswer((_) async => mockPokemons);

        // Act
        final result = await repository.getPokemons();

        // Assert
        expect(result, isA<List<Pokemon>>());
        expect(result.length, 2);
        expect(result[0].name, 'bulbasaur');
        expect(result[1].name, 'ivysaur');
        verify(() => mockDataSource.fetchPokemons(limit: 20, offset: 0))
            .called(1);
      });

      test('should pass limit and offset to data source', () async {
        // Arrange
        when(() => mockDataSource.fetchPokemons(limit: 10, offset: 20))
            .thenAnswer((_) async => []);

        // Act
        await repository.getPokemons(limit: 10, offset: 20);

        // Assert
        verify(() => mockDataSource.fetchPokemons(limit: 10, offset: 20))
            .called(1);
      });

      test('should return empty list when data source returns empty', () async {
        // Arrange
        when(() => mockDataSource.fetchPokemons(limit: 20, offset: 0))
            .thenAnswer((_) async => []);

        // Act
        final result = await repository.getPokemons();

        // Assert
        expect(result, isEmpty);
      });
    });

    group('getPokemonById', () {
      test('should return Pokemon entity with all details', () async {
        // Arrange
        final mockPokemon = _createMockPokemonModel(
          id: 25,
          name: 'pikachu',
          typeUrl: 'https://pokeapi.co/api/v2/type/13/',
          abilityUrl: 'https://pokeapi.co/api/v2/ability/9/',
        );

        final mockSpecies = _createMockSpeciesModel();
        final mockAbilities = _createMockAbilitiesModel();
        final mockType = _createMockTypesModel();

        when(() => mockDataSource.fetchPokemonById(25))
            .thenAnswer((_) async => mockPokemon);
        when(() => mockDataSource.fetchPokemonSpeciesById(25))
            .thenAnswer((_) async => mockSpecies);
        when(() => mockDataSource.fetchPokemonAbilitiesById(9))
            .thenAnswer((_) async => mockAbilities);
        when(() => mockDataSource.fetchPokemonTypesById(13))
            .thenAnswer((_) async => mockType);

        // Act
        final result = await repository.getPokemonById(25);

        // Assert
        expect(result, isA<Pokemon>());
        expect(result.id, 25);
        expect(result.name, 'pikachu');
        expect(result.description, isNotNull);
        expect(result.category, isNotNull);
        expect(result.ability, isNotNull);
      });

      test('should call all required data source methods', () async {
        // Arrange
        final mockPokemon = _createMockPokemonModel(
          id: 1,
          name: 'bulbasaur',
          typeUrl: 'https://pokeapi.co/api/v2/type/12/',
          abilityUrl: 'https://pokeapi.co/api/v2/ability/65/',
        );

        when(() => mockDataSource.fetchPokemonById(1))
            .thenAnswer((_) async => mockPokemon);
        when(() => mockDataSource.fetchPokemonSpeciesById(1))
            .thenAnswer((_) async => _createMockSpeciesModel());
        when(() => mockDataSource.fetchPokemonAbilitiesById(65))
            .thenAnswer((_) async => _createMockAbilitiesModel());
        when(() => mockDataSource.fetchPokemonTypesById(12))
            .thenAnswer((_) async => _createMockTypesModel());

        // Act
        await repository.getPokemonById(1);

        // Assert
        verify(() => mockDataSource.fetchPokemonById(1)).called(1);
        verify(() => mockDataSource.fetchPokemonSpeciesById(1)).called(1);
        verify(() => mockDataSource.fetchPokemonAbilitiesById(65)).called(1);
        verify(() => mockDataSource.fetchPokemonTypesById(12)).called(1);
      });
    });

    group('getPokemonsByTypes', () {
      test('should return list of Pokemon entities filtered by types', () async {
        // Arrange
        final mockPokemons = [
          _createMockPokemonModel(id: 7, name: 'squirtle'),
          _createMockPokemonModel(id: 8, name: 'wartortle'),
        ];

        when(() => mockDataSource.fetchPokemonsByTypes(['water']))
            .thenAnswer((_) async => mockPokemons);

        // Act
        final result = await repository.getPokemonsByTypes(['water']);

        // Assert
        expect(result, isA<List<Pokemon>>());
        expect(result.length, 2);
        verify(() => mockDataSource.fetchPokemonsByTypes(['water'])).called(1);
      });

      test('should handle multiple types', () async {
        // Arrange
        when(() => mockDataSource.fetchPokemonsByTypes(['water', 'fire']))
            .thenAnswer((_) async => []);

        // Act
        await repository.getPokemonsByTypes(['water', 'fire']);

        // Assert
        verify(() => mockDataSource.fetchPokemonsByTypes(['water', 'fire']))
            .called(1);
      });
    });
  });
}

// Helper functions to create mock data

PokemonModel _createMockPokemonModel({
  required int id,
  required String name,
  String typeUrl = 'https://pokeapi.co/api/v2/type/1/',
  String abilityUrl = 'https://pokeapi.co/api/v2/ability/1/',
}) {
  return PokemonModel(
    id: id,
    name: name,
    height: 40,
    weight: 60,
    types: [
      PokemonTypeModel(
        slot: 1,
        type: TypeInfoModel(name: 'electric', url: typeUrl),
      ),
    ],
    abilities: [
      AbilitiesModel(
        ability: TypeInfoModel(name: 'static', url: abilityUrl),
        isHidden: false,
        slot: 1,
      ),
    ],
  );
}

PokemonSpeciesModel _createMockSpeciesModel() {
  return const PokemonSpeciesModel(
    flavorTextEntries: [
      FlavorTextEntryModel(
        flavorText: 'Test description',
        language: LanguageModel(name: 'es', url: ''),
        version: VersionModel(name: 'red', url: ''),
      ),
    ],
    genera: [
      GenusEntryModel(
        flavorText: 'Pokémon Test',
        language: LanguageModel(name: 'es', url: ''),
      ),
    ],
    genderRate: 4,
  );
}

AbilitiesPokemonModel _createMockAbilitiesModel() {
  return const AbilitiesPokemonModel(
    names: [
      Names(
        name: 'Electricidad Estática',
        language: LanguageModel(name: 'es', url: ''),
      ),
    ],
  );
}

TypesPokemonModel _createMockTypesModel() {
  return const TypesPokemonModel(
    name: 'electric',
    id: 13,
    damageRelations: DamageRelationsModel(
      doubleDamageTo: [
        TypeInfoModel(name: 'water', url: ''),
        TypeInfoModel(name: 'flying', url: ''),
      ],
    ),
    pokemon: [],
  );
}

import 'package:flutter_test/flutter_test.dart';
import 'package:global66/features/pokemon/data/mappers/pokemon_mapper.dart';
import 'package:global66/features/pokemon/data/models/pokemon_model.dart';

void main() {
  group('PokemonMapper', () {
    group('getDescription', () {
      test('should return Spanish description when available', () {
        // Arrange
        const species = PokemonSpeciesModel(
          flavorTextEntries: [
            FlavorTextEntryModel(
              flavorText: 'English description',
              language: LanguageModel(name: 'en', url: ''),
              version: VersionModel(name: 'red', url: ''),
            ),
            FlavorTextEntryModel(
              flavorText: 'Descripción en español',
              language: LanguageModel(name: 'es', url: ''),
              version: VersionModel(name: 'red', url: ''),
            ),
          ],
          genera: [],
          genderRate: 4,
        );

        // Act
        final result = PokemonMapper.getDescription(species);

        // Assert
        expect(result, 'Descripción en español');
      });

      test('should return first description when Spanish not available', () {
        // Arrange
        const species = PokemonSpeciesModel(
          flavorTextEntries: [
            FlavorTextEntryModel(
              flavorText: 'English description',
              language: LanguageModel(name: 'en', url: ''),
              version: VersionModel(name: 'red', url: ''),
            ),
          ],
          genera: [],
          genderRate: 4,
        );

        // Act
        final result = PokemonMapper.getDescription(species);

        // Assert
        expect(result, 'English description');
      });

      test('should clean newlines and form feeds from description', () {
        // Arrange
        const species = PokemonSpeciesModel(
          flavorTextEntries: [
            FlavorTextEntryModel(
              flavorText: 'Line1\nLine2\fLine3',
              language: LanguageModel(name: 'es', url: ''),
              version: VersionModel(name: 'red', url: ''),
            ),
          ],
          genera: [],
          genderRate: 4,
        );

        // Act
        final result = PokemonMapper.getDescription(species);

        // Assert
        expect(result, 'Line1 Line2 Line3');
      });

      test('should return default message when entries are null', () {
        // Arrange
        const species = PokemonSpeciesModel(
          flavorTextEntries: null,
          genera: [],
          genderRate: 4,
        );

        // Act
        final result = PokemonMapper.getDescription(species);

        // Assert
        expect(result, 'No hay descripción disponible.');
      });

      test('should return default message when entries are empty', () {
        // Arrange
        const species = PokemonSpeciesModel(
          flavorTextEntries: [],
          genera: [],
          genderRate: 4,
        );

        // Act
        final result = PokemonMapper.getDescription(species);

        // Assert
        expect(result, 'No hay descripción disponible.');
      });
    });

    group('getCategory', () {
      test('should return last word of Spanish category', () {
        // Arrange
        const species = PokemonSpeciesModel(
          flavorTextEntries: [],
          genera: [
            GenusEntryModel(
              flavorText: 'Mouse Pokémon',
              language: LanguageModel(name: 'en', url: ''),
            ),
            GenusEntryModel(
              flavorText: 'Pokémon Ratón',
              language: LanguageModel(name: 'es', url: ''),
            ),
          ],
          genderRate: 4,
        );

        // Act
        final result = PokemonMapper.getCategory(species);

        // Assert
        expect(result, 'Ratón');
      });

      test('should return first category when Spanish not available', () {
        // Arrange
        const species = PokemonSpeciesModel(
          flavorTextEntries: [],
          genera: [
            GenusEntryModel(
              flavorText: 'Mouse',
              language:  LanguageModel(name: 'en', url: ''),
            ),
          ],
          genderRate: 4,
        );

        // Act
        final result = PokemonMapper.getCategory(species);

        // Assert
        expect(result, 'Mouse');
      });

      test('should return "Desconocida" when genera is null', () {
        // Arrange
        const species = PokemonSpeciesModel(
          flavorTextEntries: [],
          genera: null,
          genderRate: 4,
        );

        // Act
        final result = PokemonMapper.getCategory(species);

        // Assert
        expect(result, 'Desconocida');
      });

      test('should return "Desconocida" when genera is empty', () {
        // Arrange
        const species = PokemonSpeciesModel(
          flavorTextEntries: [],
          genera: [],
          genderRate: 4,
        );

        // Act
        final result = PokemonMapper.getCategory(species);

        // Assert
        expect(result, 'Desconocida');
      });
    });

    group('getAbilityName', () {
      test('should return Spanish ability name when available', () {
        // Arrange
        const abilities = AbilitiesPokemonModel(
          names: [
            Names(
              name: 'Static',
              language:  LanguageModel(name: 'en', url: ''),
            ),
            Names(
              name: 'Electricidad Estática',
              language:  LanguageModel(name: 'es', url: ''),
            ),
          ],
        );

        // Act
        final result = PokemonMapper.getAbilityName(abilities);

        // Assert
        expect(result, 'Electricidad Estática');
      });

      test('should return first ability when Spanish not available', () {
        // Arrange
        const abilities = AbilitiesPokemonModel(
          names: [
            Names(
              name: 'Static',
              language:  LanguageModel(name: 'en', url: ''),
            ),
          ],
        );

        // Act
        final result = PokemonMapper.getAbilityName(abilities);

        // Assert
        expect(result, 'Static');
      });

      test('should return "Desconocida" when names is empty', () {
        // Arrange
        const abilities = AbilitiesPokemonModel(names: []);

        // Act
        final result = PokemonMapper.getAbilityName(abilities);

        // Assert
        expect(result, 'Desconocida');
      });
    });

    group('getDamageRelations', () {
      test('should extract damage relation names from types', () {
        // Arrange
        const types = [
          TypesPokemonModel(
            name: 'electric',
            id: 13,
            damageRelations: DamageRelationsModel(
              doubleDamageTo: [
                TypeInfoModel(name: 'water', url: ''),
                TypeInfoModel(name: 'flying', url: ''),
              ],
            ),
            pokemon: [],
          ),
        ];

        // Act
        final result = PokemonMapper.getDamageRelations(types);

        // Assert
        expect(result, containsAll(['water', 'flying']));
        expect(result.length, 2);
      });

      test('should remove duplicates from damage relations', () {
        // Arrange
        final types = [
          const TypesPokemonModel(
            name: 'electric',
            id: 13,
            damageRelations: DamageRelationsModel(
              doubleDamageTo: [
                TypeInfoModel(name: 'water', url: ''),
              ],
            ),
            pokemon: [],
          ),
          const TypesPokemonModel(
            name: 'flying',
            id: 3,
            damageRelations: DamageRelationsModel(
              doubleDamageTo: [
                TypeInfoModel(name: 'water', url: ''), // duplicate
                TypeInfoModel(name: 'rock', url: ''),
              ],
            ),
            pokemon: [],
          ),
        ];

        // Act
        final result = PokemonMapper.getDamageRelations(types);

        // Assert
        expect(result, containsAll(['water', 'rock']));
        expect(result.length, 2);
      });

      test('should return empty list when no damage relations', () {
        // Arrange
        final types = [
          const TypesPokemonModel(
            name: 'normal',
            id: 1,
            damageRelations: DamageRelationsModel(doubleDamageTo: []),
            pokemon: [],
          ),
        ];

        // Act
        final result = PokemonMapper.getDamageRelations(types);

        // Assert
        expect(result, isEmpty);
      });

      test('should return empty list when types list is empty', () {
        // Arrange
        final List<TypesPokemonModel> types = [];

        // Act
        final result = PokemonMapper.getDamageRelations(types);

        // Assert
        expect(result, isEmpty);
      });
    });
  });
}

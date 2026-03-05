// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    required int height,
    required int weight,
    required List<PokemonType> types,
    required List<Abilities> abilities,
    String? description,
    String? category,
    String? ability,
    int? genderRate,
    required List<String> damageRelations,
    @Default(false) isFavorite,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType({
    required int slot,
    required TypeInfo type,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}

@freezed
class TypeInfo with _$TypeInfo {
  const factory TypeInfo({
    required String name,
    required String url,
  }) = _TypeInfo;

  factory TypeInfo.fromJson(Map<String, dynamic> json) =>
      _$TypeInfoFromJson(json);
}

@freezed
class PokemonSpecies with _$PokemonSpecies {
  const factory PokemonSpecies({
    @JsonKey(name: 'flavor_text_entries')
    required List<FlavorTextEntry> flavorTextEntries,
    @JsonKey(name: 'genera') required List<GenusEntry> genera,
    @JsonKey(name: 'gender_rate') required int? genderRate,
  }) = _PokemonSpecies;

  factory PokemonSpecies.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesFromJson(json);
}

@freezed
class FlavorTextEntry with _$FlavorTextEntry {
  const factory FlavorTextEntry({
    @JsonKey(name: 'flavor_text') required String flavorText,
    required Language language,
  }) = _FlavorTextEntry;

  factory FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextEntryFromJson(json);
}

@freezed
class Language with _$Language {
  const factory Language({
    required String name,
    required String url,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}

@freezed
class GenusEntry with _$GenusEntry {
  const factory GenusEntry({
    @JsonKey(name: 'genus') required String flavorText,
    required Language language,
  }) = _GenusEntry;

  factory GenusEntry.fromJson(Map<String, dynamic> json) =>
      _$GenusEntryFromJson(json);
}

@freezed
class Abilities with _$Abilities {
  const factory Abilities({
    @JsonKey(name: 'ability') required TypeInfo ability,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    required int slot,
  }) = _Abilities;

  factory Abilities.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesFromJson(json);
}

@freezed
class AbilitiesPokemon with _$AbilitiesPokemon {
  const factory AbilitiesPokemon({
    required List<Names> names,
  }) = _AbilitiesPokemon;

  factory AbilitiesPokemon.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesPokemonFromJson(json);
}

@freezed
class Names with _$Names {
  const factory Names({
    required String name,
    required Language language,
  }) = _Names;

  factory Names.fromJson(Map<String, dynamic> json) => _$NamesFromJson(json);
}

@freezed
class TypesPokemon with _$TypesPokemon {
  const factory TypesPokemon({
    required String name,
    required int id,
    @JsonKey(name: 'damage_relations')
    required DamageRelations damageRelations,
    required List<PokemonShort> pokemon,
  }) = _TypesPokemon;

  factory TypesPokemon.fromJson(Map<String, dynamic> json) =>
      _$TypesPokemonFromJson(json);
}

@freezed
class DamageRelations with _$DamageRelations {
  const factory DamageRelations({
    @JsonKey(name: 'double_damage_to') required List<TypeInfo> doubleDamageTo,
  }) = _DamageRelations;

  factory DamageRelations.fromJson(Map<String, dynamic> json) =>
      _$DamageRelationsFromJson(json);
}

@freezed
class PokemonShort with _$PokemonShort {
  const factory PokemonShort({
    required TypeInfo pokemon,
  }) = _PokemonShort;
  factory PokemonShort.fromJson(Map<String, dynamic> json) =>
      _$PokemonShortFromJson(json);
} 

// creación de entidad para almacenar en Isar, con los datos necesarios para mostrar la lista de pokemons sin necesidad de cargar toda la información de cada pokemon
@Collection()
class PokemonItemIsar {
  Id id = Isar.autoIncrement;
  late String name;
  late String imageUrl;
  late String idPokemon;
  PokemonItemIsar();

  // Constructor de conveniencia
  PokemonItemIsar.create({
    required this.name,
    required this.imageUrl,
    required this.idPokemon,  
  });
}
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/pokemon.dart';

part 'pokemon_model.g.dart';

@JsonSerializable()
class PokemonModel {
  final int id;
  final String name;
  final int height;
  final int weight;
  final List<PokemonTypeModel> types;
  final List<AbilitiesModel>? abilities;
  final String? description;
  final String? category;
  final String? ability;
  final int? genderRate;
  final List<String>? damageRelations;

  const PokemonModel({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
    this.abilities = const [],
    this.description,
    this.category,
    this.ability,
    this.genderRate,
    this.damageRelations,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonModelToJson(this);

  Pokemon toEntity() => Pokemon(
        id: id,
        name: name,
        height: height,
        weight: weight,
        types: types.map((t) => t.toEntity()).toList(),
        description: description,
        category: category,
        ability: ability,
        abilities: abilities?.map((a) => a.toEntity()).toList() ?? [],
        genderRate: genderRate,
        damageRelations: damageRelations ?? [],
      );
}

@JsonSerializable()
class PokemonTypeModel {
  final int slot;
  final TypeInfoModel type;
  const PokemonTypeModel({required this.slot, required this.type});
  factory PokemonTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeModelFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonTypeModelToJson(this);

  PokemonType toEntity() => PokemonType(slot: slot, type: type.toEntity());
}

@JsonSerializable()
class TypeInfoModel {
  final String name;
  final String url;
  const TypeInfoModel({required this.name, required this.url});
  factory TypeInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TypeInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$TypeInfoModelToJson(this);

  TypeInfo toEntity() => TypeInfo(name: name, url: url);
}

@JsonSerializable()
class PokemonSpeciesModel {
  @JsonKey(name: 'flavor_text_entries')
  final List<FlavorTextEntryModel>? flavorTextEntries;
  @JsonKey(name: 'genera')
  final List<GenusEntryModel>? genera;
  @JsonKey(name: 'gender_rate')
  final int? genderRate;
  const PokemonSpeciesModel(
      {this.flavorTextEntries, this.genera, this.genderRate});

  factory PokemonSpeciesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesModelFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonSpeciesModelToJson(this);
}

@JsonSerializable()
class FlavorTextEntryModel {
  @JsonKey(name: 'flavor_text')
  final String flavorText;
  final LanguageModel language;
  final VersionModel version;


  const FlavorTextEntryModel({
    required this.flavorText,
    required this.language,
    required this.version,
  });

  factory FlavorTextEntryModel.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextEntryModelFromJson(json);
  Map<String, dynamic> toJson() => _$FlavorTextEntryModelToJson(this);
}

@JsonSerializable()
class LanguageModel {
  final String name;
  final String url;

  const LanguageModel({
    required this.name,
    required this.url,
  });

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
  Map<String, dynamic> toJson() => _$LanguageModelToJson(this);
}

@JsonSerializable()
class VersionModel {
  final String name;
  final String url;

  const VersionModel({
    required this.name,
    required this.url,
  });

  factory VersionModel.fromJson(Map<String, dynamic> json) =>
      _$VersionModelFromJson(json);
  Map<String, dynamic> toJson() => _$VersionModelToJson(this);
}

@JsonSerializable()
class GenusEntryModel {
  @JsonKey(name: 'genus')
  final String flavorText;
  final LanguageModel language;

  const GenusEntryModel({
    required this.flavorText,
    required this.language,
  });

  factory GenusEntryModel.fromJson(Map<String, dynamic> json) =>
      _$GenusEntryModelFromJson(json);
  Map<String, dynamic> toJson() => _$GenusEntryModelToJson(this);
}

@JsonSerializable()
class AbilitiesModel {
  @JsonKey(name: 'ability')
  final TypeInfoModel ability;
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  final int slot;

  const AbilitiesModel({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  factory AbilitiesModel.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesModelFromJson(json);
  Map<String, dynamic> toJson() => _$AbilitiesModelToJson(this);

  Abilities toEntity() => Abilities(
        ability: ability.toEntity(),
        isHidden: isHidden,
        slot: slot,
      );
}

@JsonSerializable()
class AbilitiesPokemonModel {
  final List<Names> names;

  const AbilitiesPokemonModel({
    required this.names,
  });

  factory AbilitiesPokemonModel.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesPokemonModelFromJson(json);
  Map<String, dynamic> toJson() => _$AbilitiesPokemonModelToJson(this);
}

@JsonSerializable()
class Names {
  final String name;
  final LanguageModel language;

  const Names({
    required this.name,
    required this.language,
  });

  factory Names.fromJson(Map<String, dynamic> json) => _$NamesFromJson(json);
  Map<String, dynamic> toJson() => _$NamesToJson(this);
}

@JsonSerializable()
class TypesPokemonModel {
  final String name;
  final int id;
  @JsonKey(name: 'damage_relations')
  final DamageRelationsModel damageRelations;
  final List<PokemonShorModel> pokemon;
  const TypesPokemonModel({
    required this.name,
    required this.id,
    required this.damageRelations,
    required this.pokemon,
  });

  factory TypesPokemonModel.fromJson(Map<String, dynamic> json) =>
      _$TypesPokemonModelFromJson(json);
  Map<String, dynamic> toJson() => _$TypesPokemonModelToJson(this);
}

@JsonSerializable()
class DamageRelationsModel {
  @JsonKey(name: 'double_damage_to')
  final List<TypeInfoModel> doubleDamageTo;

  const DamageRelationsModel({
    required this.doubleDamageTo,
  });

  factory DamageRelationsModel.fromJson(Map<String, dynamic> json) =>
      _$DamageRelationsModelFromJson(json);
  Map<String, dynamic> toJson() => _$DamageRelationsModelToJson(this);
}

@JsonSerializable()
class PokemonShorModel {
  final TypeInfoModel pokemon;
  const PokemonShorModel({required this.pokemon});
  factory PokemonShorModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonShorModelFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonShorModelToJson(this);
}
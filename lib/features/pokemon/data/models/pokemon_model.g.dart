// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) => PokemonModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      abilities: (json['abilities'] as List<dynamic>?)
              ?.map((e) => AbilitiesModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      description: json['description'] as String?,
      category: json['category'] as String?,
      ability: json['ability'] as String?,
      genderRate: (json['genderRate'] as num?)?.toInt(),
      damageRelations: (json['damageRelations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PokemonModelToJson(PokemonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'abilities': instance.abilities,
      'description': instance.description,
      'category': instance.category,
      'ability': instance.ability,
      'genderRate': instance.genderRate,
      'damageRelations': instance.damageRelations,
    };

PokemonTypeModel _$PokemonTypeModelFromJson(Map<String, dynamic> json) =>
    PokemonTypeModel(
      slot: (json['slot'] as num).toInt(),
      type: TypeInfoModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonTypeModelToJson(PokemonTypeModel instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

TypeInfoModel _$TypeInfoModelFromJson(Map<String, dynamic> json) =>
    TypeInfoModel(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$TypeInfoModelToJson(TypeInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

PokemonSpeciesModel _$PokemonSpeciesModelFromJson(Map<String, dynamic> json) =>
    PokemonSpeciesModel(
      flavorTextEntries: (json['flavor_text_entries'] as List<dynamic>?)
          ?.map((e) => FlavorTextEntryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      genera: (json['genera'] as List<dynamic>?)
          ?.map((e) => GenusEntryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      genderRate: (json['gender_rate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PokemonSpeciesModelToJson(
        PokemonSpeciesModel instance) =>
    <String, dynamic>{
      'flavor_text_entries': instance.flavorTextEntries,
      'genera': instance.genera,
      'gender_rate': instance.genderRate,
    };

FlavorTextEntryModel _$FlavorTextEntryModelFromJson(
        Map<String, dynamic> json) =>
    FlavorTextEntryModel(
      flavorText: json['flavor_text'] as String,
      language:
          LanguageModel.fromJson(json['language'] as Map<String, dynamic>),
      version: VersionModel.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FlavorTextEntryModelToJson(
        FlavorTextEntryModel instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.language,
      'version': instance.version,
    };

LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) =>
    LanguageModel(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$LanguageModelToJson(LanguageModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

VersionModel _$VersionModelFromJson(Map<String, dynamic> json) => VersionModel(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$VersionModelToJson(VersionModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

GenusEntryModel _$GenusEntryModelFromJson(Map<String, dynamic> json) =>
    GenusEntryModel(
      flavorText: json['genus'] as String,
      language:
          LanguageModel.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenusEntryModelToJson(GenusEntryModel instance) =>
    <String, dynamic>{
      'genus': instance.flavorText,
      'language': instance.language,
    };

AbilitiesModel _$AbilitiesModelFromJson(Map<String, dynamic> json) =>
    AbilitiesModel(
      ability: TypeInfoModel.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool,
      slot: (json['slot'] as num).toInt(),
    );

Map<String, dynamic> _$AbilitiesModelToJson(AbilitiesModel instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };

AbilitiesPokemonModel _$AbilitiesPokemonModelFromJson(
        Map<String, dynamic> json) =>
    AbilitiesPokemonModel(
      names: (json['names'] as List<dynamic>)
          .map((e) => Names.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AbilitiesPokemonModelToJson(
        AbilitiesPokemonModel instance) =>
    <String, dynamic>{
      'names': instance.names,
    };

Names _$NamesFromJson(Map<String, dynamic> json) => Names(
      name: json['name'] as String,
      language:
          LanguageModel.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NamesToJson(Names instance) => <String, dynamic>{
      'name': instance.name,
      'language': instance.language,
    };

TypesPokemonModel _$TypesPokemonModelFromJson(Map<String, dynamic> json) =>
    TypesPokemonModel(
      name: json['name'] as String,
      id: (json['id'] as num).toInt(),
      damageRelations: DamageRelationsModel.fromJson(
          json['damage_relations'] as Map<String, dynamic>),
      pokemon: (json['pokemon'] as List<dynamic>)
          .map((e) => PokemonShorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TypesPokemonModelToJson(TypesPokemonModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'damage_relations': instance.damageRelations,
      'pokemon': instance.pokemon,
    };

DamageRelationsModel _$DamageRelationsModelFromJson(
        Map<String, dynamic> json) =>
    DamageRelationsModel(
      doubleDamageTo: (json['double_damage_to'] as List<dynamic>)
          .map((e) => TypeInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DamageRelationsModelToJson(
        DamageRelationsModel instance) =>
    <String, dynamic>{
      'double_damage_to': instance.doubleDamageTo,
    };

PokemonShorModel _$PokemonShorModelFromJson(Map<String, dynamic> json) =>
    PokemonShorModel(
      pokemon: TypeInfoModel.fromJson(json['pokemon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonShorModelToJson(PokemonShorModel instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon,
    };

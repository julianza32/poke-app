// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPokemonItemIsarCollection on Isar {
  IsarCollection<PokemonItemIsar> get pokemonItemIsars => this.collection();
}

const PokemonItemIsarSchema = CollectionSchema(
  name: r'PokemonItemIsar',
  id: 3549017670882988120,
  properties: {
    r'idPokemon': PropertySchema(
      id: 0,
      name: r'idPokemon',
      type: IsarType.string,
    ),
    r'imageUrl': PropertySchema(
      id: 1,
      name: r'imageUrl',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _pokemonItemIsarEstimateSize,
  serialize: _pokemonItemIsarSerialize,
  deserialize: _pokemonItemIsarDeserialize,
  deserializeProp: _pokemonItemIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _pokemonItemIsarGetId,
  getLinks: _pokemonItemIsarGetLinks,
  attach: _pokemonItemIsarAttach,
  version: '3.1.0+1',
);

int _pokemonItemIsarEstimateSize(
  PokemonItemIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.idPokemon.length * 3;
  bytesCount += 3 + object.imageUrl.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _pokemonItemIsarSerialize(
  PokemonItemIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.idPokemon);
  writer.writeString(offsets[1], object.imageUrl);
  writer.writeString(offsets[2], object.name);
}

PokemonItemIsar _pokemonItemIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PokemonItemIsar();
  object.id = id;
  object.idPokemon = reader.readString(offsets[0]);
  object.imageUrl = reader.readString(offsets[1]);
  object.name = reader.readString(offsets[2]);
  return object;
}

P _pokemonItemIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pokemonItemIsarGetId(PokemonItemIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _pokemonItemIsarGetLinks(PokemonItemIsar object) {
  return [];
}

void _pokemonItemIsarAttach(
    IsarCollection<dynamic> col, Id id, PokemonItemIsar object) {
  object.id = id;
}

extension PokemonItemIsarQueryWhereSort
    on QueryBuilder<PokemonItemIsar, PokemonItemIsar, QWhere> {
  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PokemonItemIsarQueryWhere
    on QueryBuilder<PokemonItemIsar, PokemonItemIsar, QWhereClause> {
  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PokemonItemIsarQueryFilter
    on QueryBuilder<PokemonItemIsar, PokemonItemIsar, QFilterCondition> {
  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idPokemonEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idPokemon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idPokemonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idPokemon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idPokemonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idPokemon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idPokemonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idPokemon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idPokemonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idPokemon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idPokemonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idPokemon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idPokemonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idPokemon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idPokemonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idPokemon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idPokemonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idPokemon',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      idPokemonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idPokemon',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      imageUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      imageUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      imageUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      imageUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      imageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      imageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      imageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      imageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension PokemonItemIsarQueryObject
    on QueryBuilder<PokemonItemIsar, PokemonItemIsar, QFilterCondition> {}

extension PokemonItemIsarQueryLinks
    on QueryBuilder<PokemonItemIsar, PokemonItemIsar, QFilterCondition> {}

extension PokemonItemIsarQuerySortBy
    on QueryBuilder<PokemonItemIsar, PokemonItemIsar, QSortBy> {
  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy>
      sortByIdPokemon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPokemon', Sort.asc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy>
      sortByIdPokemonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPokemon', Sort.desc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy>
      sortByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy>
      sortByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension PokemonItemIsarQuerySortThenBy
    on QueryBuilder<PokemonItemIsar, PokemonItemIsar, QSortThenBy> {
  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy>
      thenByIdPokemon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPokemon', Sort.asc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy>
      thenByIdPokemonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPokemon', Sort.desc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy>
      thenByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy>
      thenByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension PokemonItemIsarQueryWhereDistinct
    on QueryBuilder<PokemonItemIsar, PokemonItemIsar, QDistinct> {
  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QDistinct> distinctByIdPokemon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idPokemon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QDistinct> distinctByImageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonItemIsar, PokemonItemIsar, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension PokemonItemIsarQueryProperty
    on QueryBuilder<PokemonItemIsar, PokemonItemIsar, QQueryProperty> {
  QueryBuilder<PokemonItemIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PokemonItemIsar, String, QQueryOperations> idPokemonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idPokemon');
    });
  }

  QueryBuilder<PokemonItemIsar, String, QQueryOperations> imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrl');
    });
  }

  QueryBuilder<PokemonItemIsar, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Abilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      category: json['category'] as String?,
      ability: json['ability'] as String?,
      genderRate: (json['genderRate'] as num?)?.toInt(),
      damageRelations: (json['damageRelations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isFavorite: json['isFavorite'] ?? false,
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
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
      'isFavorite': instance.isFavorite,
    };

_$PokemonTypeImpl _$$PokemonTypeImplFromJson(Map<String, dynamic> json) =>
    _$PokemonTypeImpl(
      slot: (json['slot'] as num).toInt(),
      type: TypeInfo.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeImplToJson(_$PokemonTypeImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$TypeInfoImpl _$$TypeInfoImplFromJson(Map<String, dynamic> json) =>
    _$TypeInfoImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$TypeInfoImplToJson(_$TypeInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$PokemonSpeciesImpl _$$PokemonSpeciesImplFromJson(Map<String, dynamic> json) =>
    _$PokemonSpeciesImpl(
      flavorTextEntries: (json['flavor_text_entries'] as List<dynamic>)
          .map((e) => FlavorTextEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      genera: (json['genera'] as List<dynamic>)
          .map((e) => GenusEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      genderRate: (json['gender_rate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PokemonSpeciesImplToJson(
        _$PokemonSpeciesImpl instance) =>
    <String, dynamic>{
      'flavor_text_entries': instance.flavorTextEntries,
      'genera': instance.genera,
      'gender_rate': instance.genderRate,
    };

_$FlavorTextEntryImpl _$$FlavorTextEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$FlavorTextEntryImpl(
      flavorText: json['flavor_text'] as String,
      language: Language.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FlavorTextEntryImplToJson(
        _$FlavorTextEntryImpl instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.language,
    };

_$LanguageImpl _$$LanguageImplFromJson(Map<String, dynamic> json) =>
    _$LanguageImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$LanguageImplToJson(_$LanguageImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$GenusEntryImpl _$$GenusEntryImplFromJson(Map<String, dynamic> json) =>
    _$GenusEntryImpl(
      flavorText: json['genus'] as String,
      language: Language.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenusEntryImplToJson(_$GenusEntryImpl instance) =>
    <String, dynamic>{
      'genus': instance.flavorText,
      'language': instance.language,
    };

_$AbilitiesImpl _$$AbilitiesImplFromJson(Map<String, dynamic> json) =>
    _$AbilitiesImpl(
      ability: TypeInfo.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool,
      slot: (json['slot'] as num).toInt(),
    );

Map<String, dynamic> _$$AbilitiesImplToJson(_$AbilitiesImpl instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };

_$AbilitiesPokemonImpl _$$AbilitiesPokemonImplFromJson(
        Map<String, dynamic> json) =>
    _$AbilitiesPokemonImpl(
      names: (json['names'] as List<dynamic>)
          .map((e) => Names.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AbilitiesPokemonImplToJson(
        _$AbilitiesPokemonImpl instance) =>
    <String, dynamic>{
      'names': instance.names,
    };

_$NamesImpl _$$NamesImplFromJson(Map<String, dynamic> json) => _$NamesImpl(
      name: json['name'] as String,
      language: Language.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NamesImplToJson(_$NamesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'language': instance.language,
    };

_$TypesPokemonImpl _$$TypesPokemonImplFromJson(Map<String, dynamic> json) =>
    _$TypesPokemonImpl(
      name: json['name'] as String,
      id: (json['id'] as num).toInt(),
      damageRelations: DamageRelations.fromJson(
          json['damage_relations'] as Map<String, dynamic>),
      pokemon: (json['pokemon'] as List<dynamic>)
          .map((e) => PokemonShort.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TypesPokemonImplToJson(_$TypesPokemonImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'damage_relations': instance.damageRelations,
      'pokemon': instance.pokemon,
    };

_$DamageRelationsImpl _$$DamageRelationsImplFromJson(
        Map<String, dynamic> json) =>
    _$DamageRelationsImpl(
      doubleDamageTo: (json['double_damage_to'] as List<dynamic>)
          .map((e) => TypeInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DamageRelationsImplToJson(
        _$DamageRelationsImpl instance) =>
    <String, dynamic>{
      'double_damage_to': instance.doubleDamageTo,
    };

_$PokemonShortImpl _$$PokemonShortImplFromJson(Map<String, dynamic> json) =>
    _$PokemonShortImpl(
      pokemon: TypeInfo.fromJson(json['pokemon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonShortImplToJson(_$PokemonShortImpl instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon,
    };

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<PokemonType> get types => throw _privateConstructorUsedError;
  List<Abilities> get abilities => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get ability => throw _privateConstructorUsedError;
  int? get genderRate => throw _privateConstructorUsedError;
  List<String> get damageRelations => throw _privateConstructorUsedError;
  dynamic get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      List<PokemonType> types,
      List<Abilities> abilities,
      String? description,
      String? category,
      String? ability,
      int? genderRate,
      List<String> damageRelations,
      dynamic isFavorite});
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? abilities = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? ability = freezed,
    Object? genderRate = freezed,
    Object? damageRelations = null,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Abilities>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      ability: freezed == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as String?,
      genderRate: freezed == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int?,
      damageRelations: null == damageRelations
          ? _value.damageRelations
          : damageRelations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonImplCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$PokemonImplCopyWith(
          _$PokemonImpl value, $Res Function(_$PokemonImpl) then) =
      __$$PokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      List<PokemonType> types,
      List<Abilities> abilities,
      String? description,
      String? category,
      String? ability,
      int? genderRate,
      List<String> damageRelations,
      dynamic isFavorite});
}

/// @nodoc
class __$$PokemonImplCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$PokemonImpl>
    implements _$$PokemonImplCopyWith<$Res> {
  __$$PokemonImplCopyWithImpl(
      _$PokemonImpl _value, $Res Function(_$PokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? abilities = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? ability = freezed,
    Object? genderRate = freezed,
    Object? damageRelations = null,
    Object? isFavorite = freezed,
  }) {
    return _then(_$PokemonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Abilities>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      ability: freezed == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as String?,
      genderRate: freezed == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int?,
      damageRelations: null == damageRelations
          ? _value._damageRelations
          : damageRelations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavorite: freezed == isFavorite ? _value.isFavorite! : isFavorite,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonImpl implements _Pokemon {
  const _$PokemonImpl(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required final List<PokemonType> types,
      required final List<Abilities> abilities,
      this.description,
      this.category,
      this.ability,
      this.genderRate,
      required final List<String> damageRelations,
      this.isFavorite = false})
      : _types = types,
        _abilities = abilities,
        _damageRelations = damageRelations;

  factory _$PokemonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  final List<PokemonType> _types;
  @override
  List<PokemonType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<Abilities> _abilities;
  @override
  List<Abilities> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? ability;
  @override
  final int? genderRate;
  final List<String> _damageRelations;
  @override
  List<String> get damageRelations {
    if (_damageRelations is EqualUnmodifiableListView) return _damageRelations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_damageRelations);
  }

  @override
  @JsonKey()
  final dynamic isFavorite;

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, height: $height, weight: $weight, types: $types, abilities: $abilities, description: $description, category: $category, ability: $ability, genderRate: $genderRate, damageRelations: $damageRelations, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.ability, ability) || other.ability == ability) &&
            (identical(other.genderRate, genderRate) ||
                other.genderRate == genderRate) &&
            const DeepCollectionEquality()
                .equals(other._damageRelations, _damageRelations) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      height,
      weight,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_abilities),
      description,
      category,
      ability,
      genderRate,
      const DeepCollectionEquality().hash(_damageRelations),
      const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      __$$PokemonImplCopyWithImpl<_$PokemonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonImplToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  const factory _Pokemon(
      {required final int id,
      required final String name,
      required final int height,
      required final int weight,
      required final List<PokemonType> types,
      required final List<Abilities> abilities,
      final String? description,
      final String? category,
      final String? ability,
      final int? genderRate,
      required final List<String> damageRelations,
      final dynamic isFavorite}) = _$PokemonImpl;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$PokemonImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  List<PokemonType> get types;
  @override
  List<Abilities> get abilities;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get ability;
  @override
  int? get genderRate;
  @override
  List<String> get damageRelations;
  @override
  dynamic get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) {
  return _PokemonType.fromJson(json);
}

/// @nodoc
mixin _$PokemonType {
  int get slot => throw _privateConstructorUsedError;
  TypeInfo get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeCopyWith<PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeCopyWith<$Res> {
  factory $PokemonTypeCopyWith(
          PokemonType value, $Res Function(PokemonType) then) =
      _$PokemonTypeCopyWithImpl<$Res, PokemonType>;
  @useResult
  $Res call({int slot, TypeInfo type});

  $TypeInfoCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeCopyWithImpl<$Res, $Val extends PokemonType>
    implements $PokemonTypeCopyWith<$Res> {
  _$PokemonTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeInfoCopyWith<$Res> get type {
    return $TypeInfoCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeImplCopyWith<$Res>
    implements $PokemonTypeCopyWith<$Res> {
  factory _$$PokemonTypeImplCopyWith(
          _$PokemonTypeImpl value, $Res Function(_$PokemonTypeImpl) then) =
      __$$PokemonTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, TypeInfo type});

  @override
  $TypeInfoCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypeImplCopyWithImpl<$Res>
    extends _$PokemonTypeCopyWithImpl<$Res, _$PokemonTypeImpl>
    implements _$$PokemonTypeImplCopyWith<$Res> {
  __$$PokemonTypeImplCopyWithImpl(
      _$PokemonTypeImpl _value, $Res Function(_$PokemonTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypeImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeImpl implements _PokemonType {
  const _$PokemonTypeImpl({required this.slot, required this.type});

  factory _$PokemonTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeImplFromJson(json);

  @override
  final int slot;
  @override
  final TypeInfo type;

  @override
  String toString() {
    return 'PokemonType(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeImplCopyWith<_$PokemonTypeImpl> get copyWith =>
      __$$PokemonTypeImplCopyWithImpl<_$PokemonTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeImplToJson(
      this,
    );
  }
}

abstract class _PokemonType implements PokemonType {
  const factory _PokemonType(
      {required final int slot,
      required final TypeInfo type}) = _$PokemonTypeImpl;

  factory _PokemonType.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeImpl.fromJson;

  @override
  int get slot;
  @override
  TypeInfo get type;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypeImplCopyWith<_$PokemonTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeInfo _$TypeInfoFromJson(Map<String, dynamic> json) {
  return _TypeInfo.fromJson(json);
}

/// @nodoc
mixin _$TypeInfo {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeInfoCopyWith<TypeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeInfoCopyWith<$Res> {
  factory $TypeInfoCopyWith(TypeInfo value, $Res Function(TypeInfo) then) =
      _$TypeInfoCopyWithImpl<$Res, TypeInfo>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$TypeInfoCopyWithImpl<$Res, $Val extends TypeInfo>
    implements $TypeInfoCopyWith<$Res> {
  _$TypeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeInfoImplCopyWith<$Res>
    implements $TypeInfoCopyWith<$Res> {
  factory _$$TypeInfoImplCopyWith(
          _$TypeInfoImpl value, $Res Function(_$TypeInfoImpl) then) =
      __$$TypeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$TypeInfoImplCopyWithImpl<$Res>
    extends _$TypeInfoCopyWithImpl<$Res, _$TypeInfoImpl>
    implements _$$TypeInfoImplCopyWith<$Res> {
  __$$TypeInfoImplCopyWithImpl(
      _$TypeInfoImpl _value, $Res Function(_$TypeInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$TypeInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeInfoImpl implements _TypeInfo {
  const _$TypeInfoImpl({required this.name, required this.url});

  factory _$TypeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeInfoImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'TypeInfo(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeInfoImplCopyWith<_$TypeInfoImpl> get copyWith =>
      __$$TypeInfoImplCopyWithImpl<_$TypeInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeInfoImplToJson(
      this,
    );
  }
}

abstract class _TypeInfo implements TypeInfo {
  const factory _TypeInfo(
      {required final String name, required final String url}) = _$TypeInfoImpl;

  factory _TypeInfo.fromJson(Map<String, dynamic> json) =
      _$TypeInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$TypeInfoImplCopyWith<_$TypeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpecies _$PokemonSpeciesFromJson(Map<String, dynamic> json) {
  return _PokemonSpecies.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpecies {
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntry> get flavorTextEntries =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'genera')
  List<GenusEntry> get genera => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender_rate')
  int? get genderRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesCopyWith<PokemonSpecies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesCopyWith<$Res> {
  factory $PokemonSpeciesCopyWith(
          PokemonSpecies value, $Res Function(PokemonSpecies) then) =
      _$PokemonSpeciesCopyWithImpl<$Res, PokemonSpecies>;
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text_entries')
      List<FlavorTextEntry> flavorTextEntries,
      @JsonKey(name: 'genera') List<GenusEntry> genera,
      @JsonKey(name: 'gender_rate') int? genderRate});
}

/// @nodoc
class _$PokemonSpeciesCopyWithImpl<$Res, $Val extends PokemonSpecies>
    implements $PokemonSpeciesCopyWith<$Res> {
  _$PokemonSpeciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorTextEntries = null,
    Object? genera = null,
    Object? genderRate = freezed,
  }) {
    return _then(_value.copyWith(
      flavorTextEntries: null == flavorTextEntries
          ? _value.flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorTextEntry>,
      genera: null == genera
          ? _value.genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<GenusEntry>,
      genderRate: freezed == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesImplCopyWith<$Res>
    implements $PokemonSpeciesCopyWith<$Res> {
  factory _$$PokemonSpeciesImplCopyWith(_$PokemonSpeciesImpl value,
          $Res Function(_$PokemonSpeciesImpl) then) =
      __$$PokemonSpeciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text_entries')
      List<FlavorTextEntry> flavorTextEntries,
      @JsonKey(name: 'genera') List<GenusEntry> genera,
      @JsonKey(name: 'gender_rate') int? genderRate});
}

/// @nodoc
class __$$PokemonSpeciesImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesCopyWithImpl<$Res, _$PokemonSpeciesImpl>
    implements _$$PokemonSpeciesImplCopyWith<$Res> {
  __$$PokemonSpeciesImplCopyWithImpl(
      _$PokemonSpeciesImpl _value, $Res Function(_$PokemonSpeciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorTextEntries = null,
    Object? genera = null,
    Object? genderRate = freezed,
  }) {
    return _then(_$PokemonSpeciesImpl(
      flavorTextEntries: null == flavorTextEntries
          ? _value._flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorTextEntry>,
      genera: null == genera
          ? _value._genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<GenusEntry>,
      genderRate: freezed == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesImpl implements _PokemonSpecies {
  const _$PokemonSpeciesImpl(
      {@JsonKey(name: 'flavor_text_entries')
      required final List<FlavorTextEntry> flavorTextEntries,
      @JsonKey(name: 'genera') required final List<GenusEntry> genera,
      @JsonKey(name: 'gender_rate') required this.genderRate})
      : _flavorTextEntries = flavorTextEntries,
        _genera = genera;

  factory _$PokemonSpeciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesImplFromJson(json);

  final List<FlavorTextEntry> _flavorTextEntries;
  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntry> get flavorTextEntries {
    if (_flavorTextEntries is EqualUnmodifiableListView)
      return _flavorTextEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flavorTextEntries);
  }

  final List<GenusEntry> _genera;
  @override
  @JsonKey(name: 'genera')
  List<GenusEntry> get genera {
    if (_genera is EqualUnmodifiableListView) return _genera;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genera);
  }

  @override
  @JsonKey(name: 'gender_rate')
  final int? genderRate;

  @override
  String toString() {
    return 'PokemonSpecies(flavorTextEntries: $flavorTextEntries, genera: $genera, genderRate: $genderRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesImpl &&
            const DeepCollectionEquality()
                .equals(other._flavorTextEntries, _flavorTextEntries) &&
            const DeepCollectionEquality().equals(other._genera, _genera) &&
            (identical(other.genderRate, genderRate) ||
                other.genderRate == genderRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_flavorTextEntries),
      const DeepCollectionEquality().hash(_genera),
      genderRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesImplCopyWith<_$PokemonSpeciesImpl> get copyWith =>
      __$$PokemonSpeciesImplCopyWithImpl<_$PokemonSpeciesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpecies implements PokemonSpecies {
  const factory _PokemonSpecies(
          {@JsonKey(name: 'flavor_text_entries')
          required final List<FlavorTextEntry> flavorTextEntries,
          @JsonKey(name: 'genera') required final List<GenusEntry> genera,
          @JsonKey(name: 'gender_rate') required final int? genderRate}) =
      _$PokemonSpeciesImpl;

  factory _PokemonSpecies.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesImpl.fromJson;

  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntry> get flavorTextEntries;
  @override
  @JsonKey(name: 'genera')
  List<GenusEntry> get genera;
  @override
  @JsonKey(name: 'gender_rate')
  int? get genderRate;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSpeciesImplCopyWith<_$PokemonSpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlavorTextEntry _$FlavorTextEntryFromJson(Map<String, dynamic> json) {
  return _FlavorTextEntry.fromJson(json);
}

/// @nodoc
mixin _$FlavorTextEntry {
  @JsonKey(name: 'flavor_text')
  String get flavorText => throw _privateConstructorUsedError;
  Language get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlavorTextEntryCopyWith<FlavorTextEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorTextEntryCopyWith<$Res> {
  factory $FlavorTextEntryCopyWith(
          FlavorTextEntry value, $Res Function(FlavorTextEntry) then) =
      _$FlavorTextEntryCopyWithImpl<$Res, FlavorTextEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText, Language language});

  $LanguageCopyWith<$Res> get language;
}

/// @nodoc
class _$FlavorTextEntryCopyWithImpl<$Res, $Val extends FlavorTextEntry>
    implements $FlavorTextEntryCopyWith<$Res> {
  _$FlavorTextEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageCopyWith<$Res> get language {
    return $LanguageCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlavorTextEntryImplCopyWith<$Res>
    implements $FlavorTextEntryCopyWith<$Res> {
  factory _$$FlavorTextEntryImplCopyWith(_$FlavorTextEntryImpl value,
          $Res Function(_$FlavorTextEntryImpl) then) =
      __$$FlavorTextEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText, Language language});

  @override
  $LanguageCopyWith<$Res> get language;
}

/// @nodoc
class __$$FlavorTextEntryImplCopyWithImpl<$Res>
    extends _$FlavorTextEntryCopyWithImpl<$Res, _$FlavorTextEntryImpl>
    implements _$$FlavorTextEntryImplCopyWith<$Res> {
  __$$FlavorTextEntryImplCopyWithImpl(
      _$FlavorTextEntryImpl _value, $Res Function(_$FlavorTextEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
    Object? language = null,
  }) {
    return _then(_$FlavorTextEntryImpl(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlavorTextEntryImpl implements _FlavorTextEntry {
  const _$FlavorTextEntryImpl(
      {@JsonKey(name: 'flavor_text') required this.flavorText,
      required this.language});

  factory _$FlavorTextEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlavorTextEntryImplFromJson(json);

  @override
  @JsonKey(name: 'flavor_text')
  final String flavorText;
  @override
  final Language language;

  @override
  String toString() {
    return 'FlavorTextEntry(flavorText: $flavorText, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorTextEntryImpl &&
            (identical(other.flavorText, flavorText) ||
                other.flavorText == flavorText) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flavorText, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorTextEntryImplCopyWith<_$FlavorTextEntryImpl> get copyWith =>
      __$$FlavorTextEntryImplCopyWithImpl<_$FlavorTextEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlavorTextEntryImplToJson(
      this,
    );
  }
}

abstract class _FlavorTextEntry implements FlavorTextEntry {
  const factory _FlavorTextEntry(
      {@JsonKey(name: 'flavor_text') required final String flavorText,
      required final Language language}) = _$FlavorTextEntryImpl;

  factory _FlavorTextEntry.fromJson(Map<String, dynamic> json) =
      _$FlavorTextEntryImpl.fromJson;

  @override
  @JsonKey(name: 'flavor_text')
  String get flavorText;
  @override
  Language get language;
  @override
  @JsonKey(ignore: true)
  _$$FlavorTextEntryImplCopyWith<_$FlavorTextEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
mixin _$Language {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res, Language>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res, $Val extends Language>
    implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageImplCopyWith<$Res>
    implements $LanguageCopyWith<$Res> {
  factory _$$LanguageImplCopyWith(
          _$LanguageImpl value, $Res Function(_$LanguageImpl) then) =
      __$$LanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$LanguageImplCopyWithImpl<$Res>
    extends _$LanguageCopyWithImpl<$Res, _$LanguageImpl>
    implements _$$LanguageImplCopyWith<$Res> {
  __$$LanguageImplCopyWithImpl(
      _$LanguageImpl _value, $Res Function(_$LanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$LanguageImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageImpl implements _Language {
  const _$LanguageImpl({required this.name, required this.url});

  factory _$LanguageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'Language(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      __$$LanguageImplCopyWithImpl<_$LanguageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageImplToJson(
      this,
    );
  }
}

abstract class _Language implements Language {
  const factory _Language(
      {required final String name, required final String url}) = _$LanguageImpl;

  factory _Language.fromJson(Map<String, dynamic> json) =
      _$LanguageImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenusEntry _$GenusEntryFromJson(Map<String, dynamic> json) {
  return _GenusEntry.fromJson(json);
}

/// @nodoc
mixin _$GenusEntry {
  @JsonKey(name: 'genus')
  String get flavorText => throw _privateConstructorUsedError;
  Language get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenusEntryCopyWith<GenusEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenusEntryCopyWith<$Res> {
  factory $GenusEntryCopyWith(
          GenusEntry value, $Res Function(GenusEntry) then) =
      _$GenusEntryCopyWithImpl<$Res, GenusEntry>;
  @useResult
  $Res call({@JsonKey(name: 'genus') String flavorText, Language language});

  $LanguageCopyWith<$Res> get language;
}

/// @nodoc
class _$GenusEntryCopyWithImpl<$Res, $Val extends GenusEntry>
    implements $GenusEntryCopyWith<$Res> {
  _$GenusEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageCopyWith<$Res> get language {
    return $LanguageCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenusEntryImplCopyWith<$Res>
    implements $GenusEntryCopyWith<$Res> {
  factory _$$GenusEntryImplCopyWith(
          _$GenusEntryImpl value, $Res Function(_$GenusEntryImpl) then) =
      __$$GenusEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'genus') String flavorText, Language language});

  @override
  $LanguageCopyWith<$Res> get language;
}

/// @nodoc
class __$$GenusEntryImplCopyWithImpl<$Res>
    extends _$GenusEntryCopyWithImpl<$Res, _$GenusEntryImpl>
    implements _$$GenusEntryImplCopyWith<$Res> {
  __$$GenusEntryImplCopyWithImpl(
      _$GenusEntryImpl _value, $Res Function(_$GenusEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
    Object? language = null,
  }) {
    return _then(_$GenusEntryImpl(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenusEntryImpl implements _GenusEntry {
  const _$GenusEntryImpl(
      {@JsonKey(name: 'genus') required this.flavorText,
      required this.language});

  factory _$GenusEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenusEntryImplFromJson(json);

  @override
  @JsonKey(name: 'genus')
  final String flavorText;
  @override
  final Language language;

  @override
  String toString() {
    return 'GenusEntry(flavorText: $flavorText, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenusEntryImpl &&
            (identical(other.flavorText, flavorText) ||
                other.flavorText == flavorText) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flavorText, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenusEntryImplCopyWith<_$GenusEntryImpl> get copyWith =>
      __$$GenusEntryImplCopyWithImpl<_$GenusEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenusEntryImplToJson(
      this,
    );
  }
}

abstract class _GenusEntry implements GenusEntry {
  const factory _GenusEntry(
      {@JsonKey(name: 'genus') required final String flavorText,
      required final Language language}) = _$GenusEntryImpl;

  factory _GenusEntry.fromJson(Map<String, dynamic> json) =
      _$GenusEntryImpl.fromJson;

  @override
  @JsonKey(name: 'genus')
  String get flavorText;
  @override
  Language get language;
  @override
  @JsonKey(ignore: true)
  _$$GenusEntryImplCopyWith<_$GenusEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) {
  return _Abilities.fromJson(json);
}

/// @nodoc
mixin _$Abilities {
  @JsonKey(name: 'ability')
  TypeInfo get ability => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;
  int get slot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilitiesCopyWith<Abilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilitiesCopyWith<$Res> {
  factory $AbilitiesCopyWith(Abilities value, $Res Function(Abilities) then) =
      _$AbilitiesCopyWithImpl<$Res, Abilities>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ability') TypeInfo ability,
      @JsonKey(name: 'is_hidden') bool isHidden,
      int slot});

  $TypeInfoCopyWith<$Res> get ability;
}

/// @nodoc
class _$AbilitiesCopyWithImpl<$Res, $Val extends Abilities>
    implements $AbilitiesCopyWith<$Res> {
  _$AbilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
    Object? isHidden = null,
    Object? slot = null,
  }) {
    return _then(_value.copyWith(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as TypeInfo,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeInfoCopyWith<$Res> get ability {
    return $TypeInfoCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AbilitiesImplCopyWith<$Res>
    implements $AbilitiesCopyWith<$Res> {
  factory _$$AbilitiesImplCopyWith(
          _$AbilitiesImpl value, $Res Function(_$AbilitiesImpl) then) =
      __$$AbilitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ability') TypeInfo ability,
      @JsonKey(name: 'is_hidden') bool isHidden,
      int slot});

  @override
  $TypeInfoCopyWith<$Res> get ability;
}

/// @nodoc
class __$$AbilitiesImplCopyWithImpl<$Res>
    extends _$AbilitiesCopyWithImpl<$Res, _$AbilitiesImpl>
    implements _$$AbilitiesImplCopyWith<$Res> {
  __$$AbilitiesImplCopyWithImpl(
      _$AbilitiesImpl _value, $Res Function(_$AbilitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
    Object? isHidden = null,
    Object? slot = null,
  }) {
    return _then(_$AbilitiesImpl(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as TypeInfo,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilitiesImpl implements _Abilities {
  const _$AbilitiesImpl(
      {@JsonKey(name: 'ability') required this.ability,
      @JsonKey(name: 'is_hidden') required this.isHidden,
      required this.slot});

  factory _$AbilitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilitiesImplFromJson(json);

  @override
  @JsonKey(name: 'ability')
  final TypeInfo ability;
  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  final int slot;

  @override
  String toString() {
    return 'Abilities(ability: $ability, isHidden: $isHidden, slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilitiesImpl &&
            (identical(other.ability, ability) || other.ability == ability) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ability, isHidden, slot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilitiesImplCopyWith<_$AbilitiesImpl> get copyWith =>
      __$$AbilitiesImplCopyWithImpl<_$AbilitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilitiesImplToJson(
      this,
    );
  }
}

abstract class _Abilities implements Abilities {
  const factory _Abilities(
      {@JsonKey(name: 'ability') required final TypeInfo ability,
      @JsonKey(name: 'is_hidden') required final bool isHidden,
      required final int slot}) = _$AbilitiesImpl;

  factory _Abilities.fromJson(Map<String, dynamic> json) =
      _$AbilitiesImpl.fromJson;

  @override
  @JsonKey(name: 'ability')
  TypeInfo get ability;
  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  int get slot;
  @override
  @JsonKey(ignore: true)
  _$$AbilitiesImplCopyWith<_$AbilitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AbilitiesPokemon _$AbilitiesPokemonFromJson(Map<String, dynamic> json) {
  return _AbilitiesPokemon.fromJson(json);
}

/// @nodoc
mixin _$AbilitiesPokemon {
  List<Names> get names => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilitiesPokemonCopyWith<AbilitiesPokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilitiesPokemonCopyWith<$Res> {
  factory $AbilitiesPokemonCopyWith(
          AbilitiesPokemon value, $Res Function(AbilitiesPokemon) then) =
      _$AbilitiesPokemonCopyWithImpl<$Res, AbilitiesPokemon>;
  @useResult
  $Res call({List<Names> names});
}

/// @nodoc
class _$AbilitiesPokemonCopyWithImpl<$Res, $Val extends AbilitiesPokemon>
    implements $AbilitiesPokemonCopyWith<$Res> {
  _$AbilitiesPokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? names = null,
  }) {
    return _then(_value.copyWith(
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Names>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbilitiesPokemonImplCopyWith<$Res>
    implements $AbilitiesPokemonCopyWith<$Res> {
  factory _$$AbilitiesPokemonImplCopyWith(_$AbilitiesPokemonImpl value,
          $Res Function(_$AbilitiesPokemonImpl) then) =
      __$$AbilitiesPokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Names> names});
}

/// @nodoc
class __$$AbilitiesPokemonImplCopyWithImpl<$Res>
    extends _$AbilitiesPokemonCopyWithImpl<$Res, _$AbilitiesPokemonImpl>
    implements _$$AbilitiesPokemonImplCopyWith<$Res> {
  __$$AbilitiesPokemonImplCopyWithImpl(_$AbilitiesPokemonImpl _value,
      $Res Function(_$AbilitiesPokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? names = null,
  }) {
    return _then(_$AbilitiesPokemonImpl(
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Names>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilitiesPokemonImpl implements _AbilitiesPokemon {
  const _$AbilitiesPokemonImpl({required final List<Names> names})
      : _names = names;

  factory _$AbilitiesPokemonImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilitiesPokemonImplFromJson(json);

  final List<Names> _names;
  @override
  List<Names> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  String toString() {
    return 'AbilitiesPokemon(names: $names)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilitiesPokemonImpl &&
            const DeepCollectionEquality().equals(other._names, _names));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_names));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilitiesPokemonImplCopyWith<_$AbilitiesPokemonImpl> get copyWith =>
      __$$AbilitiesPokemonImplCopyWithImpl<_$AbilitiesPokemonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilitiesPokemonImplToJson(
      this,
    );
  }
}

abstract class _AbilitiesPokemon implements AbilitiesPokemon {
  const factory _AbilitiesPokemon({required final List<Names> names}) =
      _$AbilitiesPokemonImpl;

  factory _AbilitiesPokemon.fromJson(Map<String, dynamic> json) =
      _$AbilitiesPokemonImpl.fromJson;

  @override
  List<Names> get names;
  @override
  @JsonKey(ignore: true)
  _$$AbilitiesPokemonImplCopyWith<_$AbilitiesPokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Names _$NamesFromJson(Map<String, dynamic> json) {
  return _Names.fromJson(json);
}

/// @nodoc
mixin _$Names {
  String get name => throw _privateConstructorUsedError;
  Language get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamesCopyWith<Names> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamesCopyWith<$Res> {
  factory $NamesCopyWith(Names value, $Res Function(Names) then) =
      _$NamesCopyWithImpl<$Res, Names>;
  @useResult
  $Res call({String name, Language language});

  $LanguageCopyWith<$Res> get language;
}

/// @nodoc
class _$NamesCopyWithImpl<$Res, $Val extends Names>
    implements $NamesCopyWith<$Res> {
  _$NamesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageCopyWith<$Res> get language {
    return $LanguageCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NamesImplCopyWith<$Res> implements $NamesCopyWith<$Res> {
  factory _$$NamesImplCopyWith(
          _$NamesImpl value, $Res Function(_$NamesImpl) then) =
      __$$NamesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Language language});

  @override
  $LanguageCopyWith<$Res> get language;
}

/// @nodoc
class __$$NamesImplCopyWithImpl<$Res>
    extends _$NamesCopyWithImpl<$Res, _$NamesImpl>
    implements _$$NamesImplCopyWith<$Res> {
  __$$NamesImplCopyWithImpl(
      _$NamesImpl _value, $Res Function(_$NamesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? language = null,
  }) {
    return _then(_$NamesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamesImpl implements _Names {
  const _$NamesImpl({required this.name, required this.language});

  factory _$NamesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamesImplFromJson(json);

  @override
  final String name;
  @override
  final Language language;

  @override
  String toString() {
    return 'Names(name: $name, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NamesImplCopyWith<_$NamesImpl> get copyWith =>
      __$$NamesImplCopyWithImpl<_$NamesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamesImplToJson(
      this,
    );
  }
}

abstract class _Names implements Names {
  const factory _Names(
      {required final String name,
      required final Language language}) = _$NamesImpl;

  factory _Names.fromJson(Map<String, dynamic> json) = _$NamesImpl.fromJson;

  @override
  String get name;
  @override
  Language get language;
  @override
  @JsonKey(ignore: true)
  _$$NamesImplCopyWith<_$NamesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypesPokemon _$TypesPokemonFromJson(Map<String, dynamic> json) {
  return _TypesPokemon.fromJson(json);
}

/// @nodoc
mixin _$TypesPokemon {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'damage_relations')
  DamageRelations get damageRelations => throw _privateConstructorUsedError;
  List<PokemonShort> get pokemon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypesPokemonCopyWith<TypesPokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypesPokemonCopyWith<$Res> {
  factory $TypesPokemonCopyWith(
          TypesPokemon value, $Res Function(TypesPokemon) then) =
      _$TypesPokemonCopyWithImpl<$Res, TypesPokemon>;
  @useResult
  $Res call(
      {String name,
      int id,
      @JsonKey(name: 'damage_relations') DamageRelations damageRelations,
      List<PokemonShort> pokemon});

  $DamageRelationsCopyWith<$Res> get damageRelations;
}

/// @nodoc
class _$TypesPokemonCopyWithImpl<$Res, $Val extends TypesPokemon>
    implements $TypesPokemonCopyWith<$Res> {
  _$TypesPokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? damageRelations = null,
    Object? pokemon = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      damageRelations: null == damageRelations
          ? _value.damageRelations
          : damageRelations // ignore: cast_nullable_to_non_nullable
              as DamageRelations,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<PokemonShort>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageRelationsCopyWith<$Res> get damageRelations {
    return $DamageRelationsCopyWith<$Res>(_value.damageRelations, (value) {
      return _then(_value.copyWith(damageRelations: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypesPokemonImplCopyWith<$Res>
    implements $TypesPokemonCopyWith<$Res> {
  factory _$$TypesPokemonImplCopyWith(
          _$TypesPokemonImpl value, $Res Function(_$TypesPokemonImpl) then) =
      __$$TypesPokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int id,
      @JsonKey(name: 'damage_relations') DamageRelations damageRelations,
      List<PokemonShort> pokemon});

  @override
  $DamageRelationsCopyWith<$Res> get damageRelations;
}

/// @nodoc
class __$$TypesPokemonImplCopyWithImpl<$Res>
    extends _$TypesPokemonCopyWithImpl<$Res, _$TypesPokemonImpl>
    implements _$$TypesPokemonImplCopyWith<$Res> {
  __$$TypesPokemonImplCopyWithImpl(
      _$TypesPokemonImpl _value, $Res Function(_$TypesPokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? damageRelations = null,
    Object? pokemon = null,
  }) {
    return _then(_$TypesPokemonImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      damageRelations: null == damageRelations
          ? _value.damageRelations
          : damageRelations // ignore: cast_nullable_to_non_nullable
              as DamageRelations,
      pokemon: null == pokemon
          ? _value._pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<PokemonShort>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypesPokemonImpl implements _TypesPokemon {
  const _$TypesPokemonImpl(
      {required this.name,
      required this.id,
      @JsonKey(name: 'damage_relations') required this.damageRelations,
      required final List<PokemonShort> pokemon})
      : _pokemon = pokemon;

  factory _$TypesPokemonImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypesPokemonImplFromJson(json);

  @override
  final String name;
  @override
  final int id;
  @override
  @JsonKey(name: 'damage_relations')
  final DamageRelations damageRelations;
  final List<PokemonShort> _pokemon;
  @override
  List<PokemonShort> get pokemon {
    if (_pokemon is EqualUnmodifiableListView) return _pokemon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemon);
  }

  @override
  String toString() {
    return 'TypesPokemon(name: $name, id: $id, damageRelations: $damageRelations, pokemon: $pokemon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypesPokemonImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.damageRelations, damageRelations) ||
                other.damageRelations == damageRelations) &&
            const DeepCollectionEquality().equals(other._pokemon, _pokemon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, damageRelations,
      const DeepCollectionEquality().hash(_pokemon));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypesPokemonImplCopyWith<_$TypesPokemonImpl> get copyWith =>
      __$$TypesPokemonImplCopyWithImpl<_$TypesPokemonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypesPokemonImplToJson(
      this,
    );
  }
}

abstract class _TypesPokemon implements TypesPokemon {
  const factory _TypesPokemon(
      {required final String name,
      required final int id,
      @JsonKey(name: 'damage_relations')
      required final DamageRelations damageRelations,
      required final List<PokemonShort> pokemon}) = _$TypesPokemonImpl;

  factory _TypesPokemon.fromJson(Map<String, dynamic> json) =
      _$TypesPokemonImpl.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  @JsonKey(name: 'damage_relations')
  DamageRelations get damageRelations;
  @override
  List<PokemonShort> get pokemon;
  @override
  @JsonKey(ignore: true)
  _$$TypesPokemonImplCopyWith<_$TypesPokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DamageRelations _$DamageRelationsFromJson(Map<String, dynamic> json) {
  return _DamageRelations.fromJson(json);
}

/// @nodoc
mixin _$DamageRelations {
  @JsonKey(name: 'double_damage_to')
  List<TypeInfo> get doubleDamageTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DamageRelationsCopyWith<DamageRelations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DamageRelationsCopyWith<$Res> {
  factory $DamageRelationsCopyWith(
          DamageRelations value, $Res Function(DamageRelations) then) =
      _$DamageRelationsCopyWithImpl<$Res, DamageRelations>;
  @useResult
  $Res call({@JsonKey(name: 'double_damage_to') List<TypeInfo> doubleDamageTo});
}

/// @nodoc
class _$DamageRelationsCopyWithImpl<$Res, $Val extends DamageRelations>
    implements $DamageRelationsCopyWith<$Res> {
  _$DamageRelationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doubleDamageTo = null,
  }) {
    return _then(_value.copyWith(
      doubleDamageTo: null == doubleDamageTo
          ? _value.doubleDamageTo
          : doubleDamageTo // ignore: cast_nullable_to_non_nullable
              as List<TypeInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DamageRelationsImplCopyWith<$Res>
    implements $DamageRelationsCopyWith<$Res> {
  factory _$$DamageRelationsImplCopyWith(_$DamageRelationsImpl value,
          $Res Function(_$DamageRelationsImpl) then) =
      __$$DamageRelationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'double_damage_to') List<TypeInfo> doubleDamageTo});
}

/// @nodoc
class __$$DamageRelationsImplCopyWithImpl<$Res>
    extends _$DamageRelationsCopyWithImpl<$Res, _$DamageRelationsImpl>
    implements _$$DamageRelationsImplCopyWith<$Res> {
  __$$DamageRelationsImplCopyWithImpl(
      _$DamageRelationsImpl _value, $Res Function(_$DamageRelationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doubleDamageTo = null,
  }) {
    return _then(_$DamageRelationsImpl(
      doubleDamageTo: null == doubleDamageTo
          ? _value._doubleDamageTo
          : doubleDamageTo // ignore: cast_nullable_to_non_nullable
              as List<TypeInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DamageRelationsImpl implements _DamageRelations {
  const _$DamageRelationsImpl(
      {@JsonKey(name: 'double_damage_to')
      required final List<TypeInfo> doubleDamageTo})
      : _doubleDamageTo = doubleDamageTo;

  factory _$DamageRelationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DamageRelationsImplFromJson(json);

  final List<TypeInfo> _doubleDamageTo;
  @override
  @JsonKey(name: 'double_damage_to')
  List<TypeInfo> get doubleDamageTo {
    if (_doubleDamageTo is EqualUnmodifiableListView) return _doubleDamageTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doubleDamageTo);
  }

  @override
  String toString() {
    return 'DamageRelations(doubleDamageTo: $doubleDamageTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DamageRelationsImpl &&
            const DeepCollectionEquality()
                .equals(other._doubleDamageTo, _doubleDamageTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_doubleDamageTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DamageRelationsImplCopyWith<_$DamageRelationsImpl> get copyWith =>
      __$$DamageRelationsImplCopyWithImpl<_$DamageRelationsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DamageRelationsImplToJson(
      this,
    );
  }
}

abstract class _DamageRelations implements DamageRelations {
  const factory _DamageRelations(
      {@JsonKey(name: 'double_damage_to')
      required final List<TypeInfo> doubleDamageTo}) = _$DamageRelationsImpl;

  factory _DamageRelations.fromJson(Map<String, dynamic> json) =
      _$DamageRelationsImpl.fromJson;

  @override
  @JsonKey(name: 'double_damage_to')
  List<TypeInfo> get doubleDamageTo;
  @override
  @JsonKey(ignore: true)
  _$$DamageRelationsImplCopyWith<_$DamageRelationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonShort _$PokemonShortFromJson(Map<String, dynamic> json) {
  return _PokemonShort.fromJson(json);
}

/// @nodoc
mixin _$PokemonShort {
  TypeInfo get pokemon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonShortCopyWith<PokemonShort> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonShortCopyWith<$Res> {
  factory $PokemonShortCopyWith(
          PokemonShort value, $Res Function(PokemonShort) then) =
      _$PokemonShortCopyWithImpl<$Res, PokemonShort>;
  @useResult
  $Res call({TypeInfo pokemon});

  $TypeInfoCopyWith<$Res> get pokemon;
}

/// @nodoc
class _$PokemonShortCopyWithImpl<$Res, $Val extends PokemonShort>
    implements $PokemonShortCopyWith<$Res> {
  _$PokemonShortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
  }) {
    return _then(_value.copyWith(
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as TypeInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeInfoCopyWith<$Res> get pokemon {
    return $TypeInfoCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonShortImplCopyWith<$Res>
    implements $PokemonShortCopyWith<$Res> {
  factory _$$PokemonShortImplCopyWith(
          _$PokemonShortImpl value, $Res Function(_$PokemonShortImpl) then) =
      __$$PokemonShortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TypeInfo pokemon});

  @override
  $TypeInfoCopyWith<$Res> get pokemon;
}

/// @nodoc
class __$$PokemonShortImplCopyWithImpl<$Res>
    extends _$PokemonShortCopyWithImpl<$Res, _$PokemonShortImpl>
    implements _$$PokemonShortImplCopyWith<$Res> {
  __$$PokemonShortImplCopyWithImpl(
      _$PokemonShortImpl _value, $Res Function(_$PokemonShortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
  }) {
    return _then(_$PokemonShortImpl(
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as TypeInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonShortImpl implements _PokemonShort {
  const _$PokemonShortImpl({required this.pokemon});

  factory _$PokemonShortImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonShortImplFromJson(json);

  @override
  final TypeInfo pokemon;

  @override
  String toString() {
    return 'PokemonShort(pokemon: $pokemon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonShortImpl &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pokemon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonShortImplCopyWith<_$PokemonShortImpl> get copyWith =>
      __$$PokemonShortImplCopyWithImpl<_$PokemonShortImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonShortImplToJson(
      this,
    );
  }
}

abstract class _PokemonShort implements PokemonShort {
  const factory _PokemonShort({required final TypeInfo pokemon}) =
      _$PokemonShortImpl;

  factory _PokemonShort.fromJson(Map<String, dynamic> json) =
      _$PokemonShortImpl.fromJson;

  @override
  TypeInfo get pokemon;
  @override
  @JsonKey(ignore: true)
  _$$PokemonShortImplCopyWith<_$PokemonShortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

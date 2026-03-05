// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Pokemon> get items => throw _privateConstructorUsedError;
  Pokemon? get item => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchStateCopyWith<FetchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchStateCopyWith<$Res> {
  factory $FetchStateCopyWith(
          FetchState value, $Res Function(FetchState) then) =
      _$FetchStateCopyWithImpl<$Res, FetchState>;
  @useResult
  $Res call(
      {bool isLoading, List<Pokemon> items, Pokemon? item, String? error});

  $PokemonCopyWith<$Res>? get item;
}

/// @nodoc
class _$FetchStateCopyWithImpl<$Res, $Val extends FetchState>
    implements $FetchStateCopyWith<$Res> {
  _$FetchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? items = null,
    Object? item = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $PokemonCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchStateImplCopyWith<$Res>
    implements $FetchStateCopyWith<$Res> {
  factory _$$FetchStateImplCopyWith(
          _$FetchStateImpl value, $Res Function(_$FetchStateImpl) then) =
      __$$FetchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<Pokemon> items, Pokemon? item, String? error});

  @override
  $PokemonCopyWith<$Res>? get item;
}

/// @nodoc
class __$$FetchStateImplCopyWithImpl<$Res>
    extends _$FetchStateCopyWithImpl<$Res, _$FetchStateImpl>
    implements _$$FetchStateImplCopyWith<$Res> {
  __$$FetchStateImplCopyWithImpl(
      _$FetchStateImpl _value, $Res Function(_$FetchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? items = null,
    Object? item = freezed,
    Object? error = freezed,
  }) {
    return _then(_$FetchStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchStateImpl extends _FetchState {
  const _$FetchStateImpl(
      {this.isLoading = false,
      final List<Pokemon> items = const [],
      this.item,
      this.error})
      : _items = items,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<Pokemon> _items;
  @override
  @JsonKey()
  List<Pokemon> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Pokemon? item;
  @override
  final String? error;

  @override
  String toString() {
    return 'FetchState(isLoading: $isLoading, items: $items, item: $item, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_items), item, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchStateImplCopyWith<_$FetchStateImpl> get copyWith =>
      __$$FetchStateImplCopyWithImpl<_$FetchStateImpl>(this, _$identity);
}

abstract class _FetchState extends FetchState {
  const factory _FetchState(
      {final bool isLoading,
      final List<Pokemon> items,
      final Pokemon? item,
      final String? error}) = _$FetchStateImpl;
  const _FetchState._() : super._();

  @override
  bool get isLoading;
  @override
  List<Pokemon> get items;
  @override
  Pokemon? get item;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$FetchStateImplCopyWith<_$FetchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

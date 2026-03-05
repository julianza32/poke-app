// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginationState {
  List<Pokemon> get pokemons => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationStateCopyWith<PaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationStateCopyWith<$Res> {
  factory $PaginationStateCopyWith(
          PaginationState value, $Res Function(PaginationState) then) =
      _$PaginationStateCopyWithImpl<$Res, PaginationState>;
  @useResult
  $Res call(
      {List<Pokemon> pokemons,
      bool isLoading,
      bool isLoadingMore,
      bool hasMore,
      String? error});
}

/// @nodoc
class _$PaginationStateCopyWithImpl<$Res, $Val extends PaginationState>
    implements $PaginationStateCopyWith<$Res> {
  _$PaginationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? hasMore = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      pokemons: null == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationStateImplCopyWith<$Res>
    implements $PaginationStateCopyWith<$Res> {
  factory _$$PaginationStateImplCopyWith(_$PaginationStateImpl value,
          $Res Function(_$PaginationStateImpl) then) =
      __$$PaginationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Pokemon> pokemons,
      bool isLoading,
      bool isLoadingMore,
      bool hasMore,
      String? error});
}

/// @nodoc
class __$$PaginationStateImplCopyWithImpl<$Res>
    extends _$PaginationStateCopyWithImpl<$Res, _$PaginationStateImpl>
    implements _$$PaginationStateImplCopyWith<$Res> {
  __$$PaginationStateImplCopyWithImpl(
      _$PaginationStateImpl _value, $Res Function(_$PaginationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? hasMore = null,
    Object? error = freezed,
  }) {
    return _then(_$PaginationStateImpl(
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaginationStateImpl extends _PaginationState {
  const _$PaginationStateImpl(
      {final List<Pokemon> pokemons = const [],
      this.isLoading = false,
      this.isLoadingMore = false,
      this.hasMore = true,
      this.error})
      : _pokemons = pokemons,
        super._();

  final List<Pokemon> _pokemons;
  @override
  @JsonKey()
  List<Pokemon> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  final String? error;

  @override
  String toString() {
    return 'PaginationState(pokemons: $pokemons, isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasMore: $hasMore, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationStateImpl &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pokemons),
      isLoading,
      isLoadingMore,
      hasMore,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationStateImplCopyWith<_$PaginationStateImpl> get copyWith =>
      __$$PaginationStateImplCopyWithImpl<_$PaginationStateImpl>(
          this, _$identity);
}

abstract class _PaginationState extends PaginationState {
  const factory _PaginationState(
      {final List<Pokemon> pokemons,
      final bool isLoading,
      final bool isLoadingMore,
      final bool hasMore,
      final String? error}) = _$PaginationStateImpl;
  const _PaginationState._() : super._();

  @override
  List<Pokemon> get pokemons;
  @override
  bool get isLoading;
  @override
  bool get isLoadingMore;
  @override
  bool get hasMore;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$PaginationStateImplCopyWith<_$PaginationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

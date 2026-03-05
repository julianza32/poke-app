import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';

part 'pagination_state.freezed.dart';

@freezed
class PaginationState with _$PaginationState {
  const factory PaginationState({
    @Default([]) List<Pokemon> pokemons,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(true) bool hasMore,
    String? error,
  }) = _PaginationState;

  const PaginationState._();

  bool get isEmpty => pokemons.isEmpty && !isLoading;

  bool get isInitialLoading => isLoading && pokemons.isEmpty;
}


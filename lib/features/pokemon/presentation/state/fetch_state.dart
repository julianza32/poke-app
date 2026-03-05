import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
part 'fetch_state.freezed.dart';

@freezed
class FetchState with _$FetchState {
  const factory FetchState({
    @Default(false) bool isLoading,
    @Default([]) List<Pokemon> items,
    Pokemon? item,
    String? error,
  }) = _FetchState;

  const FetchState._();

  bool get hasError => error != null;
  bool get hasData => items.isNotEmpty;
}

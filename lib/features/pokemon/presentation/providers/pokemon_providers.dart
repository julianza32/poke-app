import 'dart:ui' as ui;
import 'package:global66/core/constants/app_constants.dart';
import 'package:global66/core/database/isar_config.dart';
import 'package:global66/core/network/dio_config.dart';
import 'package:global66/features/pokemon/data/datasources/pokemon_local_data_source.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/domain/usecases/add_remove_favorite_pokemon.dart';
import 'package:global66/features/pokemon/domain/usecases/get_favorite_pokemons.dart';
import 'package:global66/features/pokemon/domain/usecases/get_pokemon_by_id.dart';
import 'package:global66/features/pokemon/domain/usecases/get_pokemons_by_types.dart';
import 'package:global66/features/pokemon/presentation/state/fetch_state.dart';
import 'package:global66/features/pokemon/presentation/state/pagination_state.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

import 'package:global66/features/pokemon/data/datasources/pokemon_remote_data_source.dart';
import 'package:global66/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:global66/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:global66/features/pokemon/domain/usecases/get_pokemons.dart';

part 'pokemon_providers.g.dart';

/// Secure Dio instance with proper configuration.
@riverpod
Dio dio(DioRef ref) => SecureDioConfig.createDio(baseUrl: ApiConfig.baseUrl);

@riverpod
Isar isar(IsarRef ref) => getIsarInstance();

@riverpod
PokemonLocalDataSource localDataSource(LocalDataSourceRef ref) =>
    PokemonLocalDataSourceImpl(isar: ref.read(isarProvider));

@riverpod
PokemonRemoteDataSource remoteDataSource(RemoteDataSourceRef ref) =>
    PokemonRemoteDataSourceImpl(dio: ref.read(dioProvider));

@riverpod
PokemonRepository repository(RepositoryRef ref) => PokemonRepositoryImpl(
    remoteDataSource: ref.read(remoteDataSourceProvider),
    localDataSource: ref.read(localDataSourceProvider));

@riverpod
GetPokemons getPokemons(GetPokemonsRef ref) =>
    GetPokemons(ref.read(repositoryProvider));

@riverpod
GetPokemonById getPokemonById(GetPokemonByIdRef ref) =>
    GetPokemonById(ref.read(repositoryProvider));

@riverpod
GetPokemonsByTypes getPokemonsByTypes(GetPokemonsByTypesRef ref) =>
    GetPokemonsByTypes(ref.read(repositoryProvider));

@riverpod
GetFavoritePokemons getFavoritePokemons(GetFavoritePokemonsRef ref) =>
    GetFavoritePokemons(ref.read(repositoryProvider));

@riverpod
AddFavoritePokemon addFavoritePokemon(AddFavoritePokemonRef ref) =>
    AddFavoritePokemon(ref.read(repositoryProvider));

@riverpod
RemoveFavoritePokemon removeFavoritePokemon(RemoveFavoritePokemonRef ref) =>
    RemoveFavoritePokemon(ref.read(repositoryProvider));

@riverpod
class PaginatedPokemonNotifier extends _$PaginatedPokemonNotifier {
  static const int _pageSize = 20;

  @override
  PaginationState build() {
    _loadInitial();
    return const PaginationState(isLoading: true);
  }

  Future<void> _loadInitial() async {
    try {
      final uc = ref.read(getPokemonsProvider);
      final pokemons = await uc(limit: _pageSize, offset: 0);

      state = state.copyWith(
        pokemons: pokemons,
        isLoading: false,
        isLoadingMore: false,
        hasMore: pokemons.length >= _pageSize,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isLoadingMore: false,
        error: e.toString(),
      );
    }
  }

  Future<void> loadMore() async {
    if (state.isLoadingMore || !state.hasMore || state.isLoading) return;

    state = state.copyWith(isLoadingMore: true);

    try {
      final uc = ref.read(getPokemonsProvider);
      final offset = state.pokemons.length;
      final newPokemons = await uc(limit: _pageSize, offset: offset);

      state = state.copyWith(
        pokemons: [...state.pokemons, ...newPokemons],
        isLoadingMore: false,
        hasMore: newPokemons.length >= _pageSize,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoadingMore: false,
        error: e.toString(),
      );
    }
  }

  Future<void> refresh() async {
    state = const PaginationState(isLoading: true);
    await _loadInitial();
  }
}

@riverpod
class PokemonByIdNotifier extends _$PokemonByIdNotifier {
  @override
  FetchState build(String id) {
    _loadPokemon(id);
    return const FetchState(isLoading: true);
  }

  void _loadPokemon(String id) async {
    try {
      final GetPokemonById uc = ref.read(getPokemonByIdProvider);
      final languageCode = ui.PlatformDispatcher.instance.locale.languageCode;
      final pokemon = await uc(id: int.parse(id), languageCode: languageCode);

      state = state.copyWith(
        item: pokemon,
        isLoading: false,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }
}

@riverpod
class PokemonByTypesNotifier extends _$PokemonByTypesNotifier {
  @override
  FetchState build(List<String> types) {
    _loadPokemons(types);
    return const FetchState(isLoading: true);
  }

  void _loadPokemons(List<String> types) async {
    try {
      final uc = ref.read(getPokemonsByTypesProvider);
      final pokemons = await uc(types);

      state = state.copyWith(
        items: pokemons,
        isLoading: false,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }
}

@riverpod
class PokemonsFavoriteNotifier extends _$PokemonsFavoriteNotifier {
  @override
  FetchState build() {
    _loadFavorites();
    return const FetchState(isLoading: true);
  }

  void _loadFavorites() async {
    try {
      final uc = ref.read(getFavoritePokemonsProvider);
      final pokemons = await uc();

      state = state.copyWith(
        items: pokemons,
        isLoading: false,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> addFavorite(Pokemon pokemon, String localPath) async {
    try {
      final uc = ref.read(addFavoritePokemonProvider);
      await uc(pokemon: pokemon);
      if (localPath == 'Pokemons') {
        ref.read(paginatedPokemonNotifierProvider.notifier).refresh();
      } else if (localPath == 'PokemonDetail') {
        ref.read(pokemonByIdNotifierProvider(pokemon.id.toString()).notifier)._loadPokemon(pokemon.id.toString());
      } else {
        _loadFavorites();
      }
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> removeFavorite(Pokemon pokemon, String localPath) async {
    try {
      final uc = ref.read(removeFavoritePokemonProvider);
      await uc(pokemon: pokemon);
      if (localPath == 'Pokemons') {
        ref.read(paginatedPokemonNotifierProvider.notifier).refresh();
      } else if (localPath == 'PokemonDetail') {
        ref.read(pokemonByIdNotifierProvider(pokemon.id.toString()).notifier)._loadPokemon(pokemon.id.toString());
      } else {
        _loadFavorites();
      }
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }
}

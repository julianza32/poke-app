import 'package:global66/features/pokemon/data/datasources/pokemon_local_data_source.dart';
import 'package:global66/features/pokemon/data/mappers/pokemon_mapper.dart';
import 'package:global66/features/pokemon/data/models/pokemon_model.dart';
import 'package:global66/core/utils/url_parser.dart';

import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_remote_data_source.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource remoteDataSource;
  final PokemonLocalDataSource localDataSource;

  PokemonRepositoryImpl(
      {required this.remoteDataSource, required this.localDataSource});

  @override
  // obtener la lista de pokemones con paginación
  Future<List<Pokemon>> getPokemons({int limit = 20, int offset = 0}) async {
    final pokemonsModel = await remoteDataSource.fetchPokemons(
      limit: limit,
      offset: offset,
    );
    final favoritePokemon = await localDataSource.getFavoritePokemons();
    final pokemons = pokemonsModel.map((e) => e.toEntity()).toList();

    // Usar map para crear una nueva lista con isFavorite actualizado
    return pokemons.map((pokemon) {
      final isFavorite = favoritePokemon.any((fav) => fav.idPokemon == pokemon.id.toString());
      return isFavorite ? pokemon.copyWith(isFavorite: true) : pokemon;
    }).toList();
  }

  @override
  // obtener los detalles de un pokemon por su id
  Future<Pokemon> getPokemonById(int id, {String languageCode = 'en'}) async {
    

    final pokemon = await remoteDataSource.fetchPokemonById(id);
    final species = await remoteDataSource.fetchPokemonSpeciesById(id);
    final abilityId = _extractAbilityId(pokemon);
    final abilities =
        await remoteDataSource.fetchPokemonAbilitiesById(abilityId);
    final types = await _fetchTypeDamageRelations(pokemon);
    final favoritePokemon = await localDataSource.getFavoritePokemons();

    return pokemon.toEntity().copyWith(
          description: PokemonMapper.getDescription(species, preferredLanguage: languageCode),
          category: PokemonMapper.getCategory(species, preferredLanguage: languageCode),
          ability: PokemonMapper.getAbilityName(abilities, preferredLanguage: languageCode),
          genderRate: species.genderRate,
          damageRelations: PokemonMapper.getDamageRelations(types),
          isFavorite: favoritePokemon.any((fav) => fav.idPokemon == pokemon.id.toString()),
        );
  }

  @override
  // obtener pokemones por tipos, Agua, Fuego, Planta, etc
  Future<List<Pokemon>> getPokemonsByTypes(List<String> types) async {
    final pokemons = await remoteDataSource.fetchPokemonsByTypes(types);
    return pokemons.map((e) => e.toEntity()).toList();
  }

  // Extrae el ID de la habilidad no oculta del Pokémon. Si no se encuentra, devuelve 0.
  int _extractAbilityId(PokemonModel pokemon) {
    final nonHiddenAbility =
        pokemon.abilities?.where((ability) => !ability.isHidden).firstOrNull;

    if (nonHiddenAbility == null) return 0;

    return extractIdFromUrl(nonHiddenAbility.ability.url) ?? 0;
  }

  // Encuentra las Debilidades de un pokemon con el tipo del mismo ej, si es de tipo agua, sus debilidades serian fuego, planta, etc.
  Future<List<TypesPokemonModel>> _fetchTypeDamageRelations(
    PokemonModel pokemon,
  ) async {
    final typeIds = pokemon.types
        .map((type) => extractIdFromUrl(type.type.url) ?? 0)
        .where((id) => id > 0)
        .toList();

    final List<TypesPokemonModel> types = [];

    for (final id in typeIds) {
      final type = await remoteDataSource.fetchPokemonTypesById(id);
      types.add(type);
    }

    return types;
  }

  @override
  Future<List<Pokemon>> getFavoritePokemons() async {
    final favoriteItems = await localDataSource.getFavoritePokemons();
    final allPokemons = await remoteDataSource
        .fetchPokemonsByIds(favoriteItems.map((e) => e.idPokemon.toString()).toList());
    final pokemons = allPokemons.map((e) => e.toEntity()).toList();
    final pokemonswithFavorite =
        PokemonMapper.mapPokemonFavoriteToEntity(pokemons);
    return pokemonswithFavorite;
  }

  @override
  Future<void> addFavoritePokemon(Pokemon poke) async {
    await localDataSource.addFavoritePokemon(poke);
  }

  @override
  Future<void> removeFavoritePokemon(Pokemon poke) async {
    await localDataSource.removeFavoritePokemon(poke.id.toString());
  }
}

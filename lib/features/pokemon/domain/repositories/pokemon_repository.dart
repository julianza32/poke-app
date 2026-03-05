import '../entities/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> getPokemons({int limit = 20, int offset = 0});
  Future<Pokemon> getPokemonById(int id, {String languageCode = 'en'});
  Future<List<Pokemon>> getPokemonsByTypes(List<String> types);
  Future<List<Pokemon>> getFavoritePokemons();
  Future<void> addFavoritePokemon(Pokemon pokemon);
  Future<void> removeFavoritePokemon(Pokemon pokemon);
}

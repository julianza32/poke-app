import '../entities/pokemon.dart';
import '../repositories/pokemon_repository.dart';

class GetPokemons {
  final PokemonRepository repository;

  GetPokemons(this.repository);

  Future<List<Pokemon>> call({int limit = 20, int offset = 0}) {
    return repository.getPokemons(limit: limit, offset: offset);
  }
}

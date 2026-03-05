import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/domain/repositories/pokemon_repository.dart';

class GetFavoritePokemons {
  final PokemonRepository repository;

  GetFavoritePokemons(this.repository);

  Future<List<Pokemon>> call() async {
    return await repository.getFavoritePokemons();
  }
}

import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/domain/repositories/pokemon_repository.dart';

class AddFavoritePokemon {
  final PokemonRepository repository;

  AddFavoritePokemon(this.repository);

  Future<void> call({required Pokemon pokemon}) async {
    return await repository.addFavoritePokemon(pokemon);
  }
}

class RemoveFavoritePokemon {
  final PokemonRepository repository;

  RemoveFavoritePokemon(this.repository);

  Future<void> call({required Pokemon pokemon}) async {
    return await repository.removeFavoritePokemon(pokemon);
  }
}
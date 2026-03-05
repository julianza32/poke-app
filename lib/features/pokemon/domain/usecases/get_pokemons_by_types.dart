import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/domain/repositories/pokemon_repository.dart';

class GetPokemonsByTypes {
  final PokemonRepository repository;

  GetPokemonsByTypes(this.repository);

  Future<List<Pokemon>> call(List<String> types) {
    return repository.getPokemonsByTypes(types);
  }
}

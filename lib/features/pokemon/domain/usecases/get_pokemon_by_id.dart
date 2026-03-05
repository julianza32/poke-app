import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/domain/repositories/pokemon_repository.dart';

class GetPokemonById {
  final PokemonRepository repository;

  GetPokemonById(this.repository);

  Future<Pokemon> call({required int id, String languageCode = 'en'}) async {
    return await repository.getPokemonById(id, languageCode: languageCode);
  }
}
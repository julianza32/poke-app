import 'package:global66/core/constants/app_constants.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:isar/isar.dart';

abstract class PokemonLocalDataSource {
  Future<void> addFavoritePokemon(Pokemon poke);
  Future<void> removeFavoritePokemon(String idPokemon);
  Future<List<PokemonItemIsar>> getFavoritePokemons();
}

class PokemonLocalDataSourceImpl implements PokemonLocalDataSource {
  const PokemonLocalDataSourceImpl({required this.isar});
  final Isar isar;
  @override
  Future<void> addFavoritePokemon(Pokemon poke) async {
    await isar.writeTxn(() async {
      await isar.pokemonItemIsars.put(PokemonItemIsar.create(
        idPokemon: poke.id.toString(),
        imageUrl: '${ApiConfig.officialArtworkUrl}${poke.id}',
        name: poke.name,
      ));
    });
  }

  @override
  Future<void> removeFavoritePokemon(String idPokemon) async {
    await isar.writeTxn(() async {
      final item = await isar.pokemonItemIsars.filter().idPokemonEqualTo(idPokemon).findFirst();
      if (item != null) {
        await isar.pokemonItemIsars.delete(item.id);
      }
    });
  }

  @override
  Future<List<PokemonItemIsar>> getFavoritePokemons() async {
    return await isar.pokemonItemIsars.where().findAll();
  }
}
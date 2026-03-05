import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/presentation/providers/pokemon_providers.dart';

class ButtonFavoritePokemonOrganism extends ConsumerWidget {
  const ButtonFavoritePokemonOrganism({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = ModalRoute.of(context)?.settings.name ?? '';
    return IconButton(
      icon: Icon(
        pokemon.isFavorite == true ? Icons.favorite : Icons.favorite_border,
        color: pokemon.isFavorite == true ? Colors.red : Colors.white,
      ),
      onPressed: () {
        if (pokemon.isFavorite != true) {
          ref
              .read(pokemonsFavoriteNotifierProvider.notifier)
              .addFavorite(pokemon, location);
        } else {
          ref
              .read(pokemonsFavoriteNotifierProvider.notifier)
              .removeFavorite(pokemon, location);
        }
      },
    );
  }
}

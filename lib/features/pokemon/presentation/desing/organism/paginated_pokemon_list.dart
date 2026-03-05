import 'package:flutter/material.dart';
import 'package:global66/core/constants/app_constants.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/card_pokemon_molecule.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/tooltip_molecule.dart';
import 'package:global66/features/pokemon/presentation/utils/pokemon_style_utils.dart';
import 'package:go_router/go_router.dart';

/// A simple paginated list of Pokemon cards.
///
/// Unlike infinite scroll, this shows one page at a time
/// with external pagination controls.
class PaginatedPokemonList extends StatelessWidget {
  const PaginatedPokemonList({
    super.key,
    required this.pokemons,
    required this.onRefresh,
    this.isLoading = false,
  });

  final List<Pokemon> pokemons;
  final Future<void> Function() onRefresh;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          final pokemon = pokemons[index];
          return _PokemonListItem(
            pokemon: pokemon,
            isLast: index == pokemons.length - 1,
          );
        },
      ),
    );
  }
}

class _PokemonListItem extends StatelessWidget {
  const _PokemonListItem({
    required this.pokemon,
    this.isLast = false,
  });

  final Pokemon pokemon;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final style = getPokemonStyleFromSprite(pokemon.types.first.type.name);
    const artworkUrl = ApiConfig.officialArtworkUrl;

    return GestureDetector(
      onTap: () => context.go('/pokemon/${pokemon.id}'),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: CardPokemonMolecule(
              pokemon: pokemon,
              imagePokemon: '$artworkUrl${pokemon.id}.png',
              backgroundColorCard: style.backgroundColor,
              backgroundColorCardPokemon: style.pokemonBackgroundColor,
              natureImage: style.image,
              types: _buildTypeChips(),
            ),
          ),
          if (!isLast) const SizedBox(height: 16),
        ],
      ),
    );
  }

  List<Widget> _buildTypeChips() {
    return pokemon.types.map((t) {
      final styleTip = getPokemonStyleFromSprite(t.type.name);
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TooltipMolecule(
            text: t.type.name,
            imagePath: styleTip.image,
            colorBackgroud: styleTip.pokemonBackgroundColor,
          ),
          const SizedBox(width: 4),
        ],
      );
    }).toList();
  }

}

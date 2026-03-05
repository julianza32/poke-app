import 'package:flutter/material.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/image_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/button_favorite_pokemon_organism.dart';
import 'package:go_router/go_router.dart';

class InfoHeaderPokemon extends StatelessWidget {
  const InfoHeaderPokemon(
      {super.key,
      required this.pokemon,
      required this.backgroundColor,
      required this.natureImage});

  final Pokemon pokemon;
  final Color backgroundColor;
  final String natureImage;

  @override
  Widget build(BuildContext context) {
    final artworkUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemon.id}.png';
    return SizedBox(
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(200)),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: backgroundColor,
              ),
            ),
          ),
        
          Positioned(
              top: 44,
              left: 0,
              right: 0,
              child: ImageAtom(
                imagePath: natureImage,
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              )),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Center(
              child: ImageAtom(
                imagePath: artworkUrl,
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: 8,
            top: 8,
            child: SafeArea(
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => context.go('/pokemons'),
              ),
            ),
          ),
            Positioned(
            right: 8,
            top: 8,
            child: SafeArea(
              child: ButtonFavoritePokemonOrganism(
                pokemon: pokemon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

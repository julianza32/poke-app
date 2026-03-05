import 'package:flutter/material.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/card_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/head_text_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/image_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/text_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/button_favorite_pokemon_organism.dart';

class CardPokemonMolecule extends StatelessWidget {
  const CardPokemonMolecule(
      {super.key,
      required this.pokemon,
      required this.imagePokemon,
      required this.backgroundColorCard,
      required this.backgroundColorCardPokemon,
      required this.natureImage,
      required this.types});

  final Pokemon pokemon;
  final String  imagePokemon;
  final Color backgroundColorCard, backgroundColorCardPokemon;
  final String natureImage;
  final List<Widget> types;

  @override
  Widget build(BuildContext context) {
    return CardAtom(
      backgroundColor: backgroundColorCard,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextAtom(text: 'Nº${pokemon.id}'),
                  const SizedBox(height: 2),
                  HeadTextAtom(text: _capitalizeName(pokemon.name)),
                  const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: types)
                ],
              ),
            ),
          ),
          Container(
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: backgroundColorCard,
            ),
            margin: const EdgeInsets.only(left: 16),
            child: Stack(children: [
              CardAtom(
                backgroundColor: backgroundColorCardPokemon,
                child: SizedBox(
                  height: 120,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      if (natureImage.isNotEmpty)
                        Positioned.fill(
                          child: Opacity(
                            opacity: 0.5,
                            child: ImageAtom(
                              imagePath: natureImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      Center(
                          child: Stack(
                        children: [
                          ImageAtom(
                            imagePath: imagePokemon,
                            width: 80,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 75,
                child: SafeArea(
                  child: ButtonFavoritePokemonOrganism(
                    pokemon: pokemon,
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
String _capitalizeName(String name) {
    if (name.isEmpty) return name;
    return name[0].toUpperCase() + name.substring(1);
  }
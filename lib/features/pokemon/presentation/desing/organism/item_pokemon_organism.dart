import 'package:flutter/material.dart';
import 'package:global66/core/constants/app_constants.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/card_pokemon_molecule.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/tooltip_molecule.dart';
import 'package:global66/features/pokemon/presentation/utils/pokemon_style_utils.dart';
import 'package:go_router/go_router.dart';

class ItemPokemonOrganism extends StatelessWidget {
  const ItemPokemonOrganism({super.key, required this.list});

  final List<Pokemon> list;

  @override
  Widget build(BuildContext context) {
    const officialArtworkUrl = ApiConfig.officialArtworkUrl;
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 40),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final p = list[index];
        final style = getPokemonStyleFromSprite(p.types[0].type.name);
        return GestureDetector(
            onTap: () {
              context.go('/pokemon/${p.id}');
            },
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: CardPokemonMolecule(
                      pokemon: p,
                      imagePokemon: '$officialArtworkUrl${p.id}.png',
                      backgroundColorCard: style.backgroundColor,
                      backgroundColorCardPokemon: style.pokemonBackgroundColor,
                      natureImage: style.image,
                      types: p.types.map((t) {
                        final styleTip = getPokemonStyleFromSprite(t.type.name);
                        return Row(
                          children: [
                            TooltipMolecule(
                              text: t.type.name,
                              imagePath: styleTip.image,
                              colorBackgroud: styleTip.pokemonBackgroundColor,
                            ),
                            const SizedBox(width: 4)
                          ],
                        );
                      }).toList(),
                    )),
                if (index < list.length - 1) const SizedBox(height: 16)
              ],
            ));
      },
    );
  }
}

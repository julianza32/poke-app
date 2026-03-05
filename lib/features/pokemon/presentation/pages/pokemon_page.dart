import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66/core/localizations/app_localizations.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/head_text_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/text_atom.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/field_molecule.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/gender_bar_molecule.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/tooltip_molecule.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/info_header_pokemon.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/loader_organism.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/not_found_organism.dart';
import 'package:global66/features/pokemon/presentation/desing/templates/page_template.dart';
import 'package:global66/features/pokemon/presentation/providers/pokemon_providers.dart';
import 'package:global66/features/pokemon/presentation/utils/pokemon_style_utils.dart';

class PokemonPage extends ConsumerWidget {
  const PokemonPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchState = ref.watch(pokemonByIdNotifierProvider(id));
    return PageTemplate(
      child: SingleChildScrollView(
          child: Column(children: [
        if (fetchState.isLoading)
          const LoaderOrganism()
        else if (fetchState.error != null)
          NotFoundOrganism(
            imagePath: 'assets/images/magikarp.png',
            text: AppLocalizations.of(context)!.somethingWentWrong,
            titleButton: '',
            paragraph: AppLocalizations.of(context)!.canNotLoadInformation,
          )
        else
          (() {
            final pokemonInfo = fetchState.item!;
            final style =
                getPokemonStyleFromSprite(pokemonInfo.types[0].type.name);
            return Column(children: [
              InfoHeaderPokemon(
                pokemon: pokemonInfo,
                backgroundColor: style.pokemonBackgroundColor,
                natureImage: style.image,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    HeadTextAtom(
                        text: pokemonInfo.name.toUpperCase()[0] +
                            pokemonInfo.name.substring(1)),
                    TextAtom(text: 'Nº ${pokemonInfo.id.toString()}'),
                    const SizedBox(height: 20),
                    Row(
                      children: pokemonInfo.types.map((t) {
                        final styleTip = getPokemonStyleFromSprite(t.type.name);
                        return Row(
                          children: [
                            TooltipMolecule(
                              text: t.type.name,
                              imagePath: styleTip.image,
                              colorBackgroud: styleTip.pokemonBackgroundColor,
                            ),
                            const SizedBox(width: 15)
                          ],
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 30),
                    TextAtom(
                        textAlign: TextAlign.left,
                        text: pokemonInfo.description ??
                            AppLocalizations.of(context)!
                                .noDescriptionAvailable),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        FieldMolecule(
                          label: AppLocalizations.of(context)!.weight,
                          value: '${pokemonInfo.weight / 10} kg',
                        ),
                        FieldMolecule(
                          label: AppLocalizations.of(context)!.height,
                          value: '${pokemonInfo.height / 10} m',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        FieldMolecule(
                          label: AppLocalizations.of(context)!.category,
                          value: pokemonInfo.category ??
                              AppLocalizations.of(context)!.unknown,
                        ),
                        FieldMolecule(
                          label: AppLocalizations.of(context)!.abilities,
                          value: pokemonInfo.ability ??
                              AppLocalizations.of(context)!.unknown,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GenderBarMolecule(
                      malePercent: ((8 - pokemonInfo.genderRate!) / 8) * 100,
                      femaleColor: const Color(0xFFFF7FA0),
                      label: AppLocalizations.of(context)!.gender,
                    ),
                    const SizedBox(height: 20),
                    HeadTextAtom(
                        text: AppLocalizations.of(context)!.debilities),
                    const SizedBox(height: 12),
                    Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 12,
                      runSpacing: 12,
                      children: pokemonInfo.damageRelations.map((damageName) {
                        final styleTip = getPokemonStyleFromSprite(damageName);
                        return TooltipMolecule(
                          text: damageName,
                          imagePath: styleTip.image,
                          colorBackgroud: styleTip.pokemonBackgroundColor,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ]);
          }())
      ])),
    );
  }
}

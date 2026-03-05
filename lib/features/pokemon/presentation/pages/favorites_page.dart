import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66/core/localizations/app_localizations.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/item_pokemon_organism.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/loader_organism.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/not_found_organism.dart';
import 'package:global66/features/pokemon/presentation/desing/templates/page_template.dart';
import 'package:global66/features/pokemon/presentation/providers/pokemon_providers.dart';
import 'package:global66/features/pokemon/presentation/state/fetch_state.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchState = ref.watch(pokemonsFavoriteNotifierProvider);

    return PageTemplate(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Expanded(
            child: _buildContent(fetchState, ref, context ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(FetchState fetchState, WidgetRef ref, BuildContext context) {
    if (fetchState.isLoading) {
      return const Center(
        child: LoaderOrganism(),
      );
    }

    if (fetchState.error != null) {
      return Padding(
        padding: const  EdgeInsets.all(16.0),
        child: NotFoundOrganism(
          imagePath: 'assets/images/magi.png',
          text: AppLocalizations.of(context)!.somethingWentWrong,
          paragraph:
              AppLocalizations.of(context)!.canNotLoadInformation,
          onPress: () => ref.invalidate(pokemonsFavoriteNotifierProvider),
          titleButton: AppLocalizations.of(context)!.retry,
        ),
      );
    }

    if (!fetchState.hasData || fetchState.items.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: NotFoundOrganism(
          imagePath: 'assets/images/magi.png',
          text: AppLocalizations.of(context)!.noFavoritePokemons,
          paragraph:
              AppLocalizations.of(context)!.noFavoritePokemonsParagraph,
          showButton: false,
          titleButton: '',
          onPress: () {},
        ),
      );
    }

    return ItemPokemonOrganism(list: fetchState.items);
  }
}

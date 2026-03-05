import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
            child: _buildContent(fetchState, ref),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(FetchState fetchState, WidgetRef ref) {
    if (fetchState.isLoading) {
      return const Center(
        child: LoaderOrganism(),
      );
    }

    if (fetchState.error != null) {
      return NotFoundOrganism(
        imagePath: 'assets/images/magi.png',
        text: 'Algo salió mal...',
        paragraph:
            'No pudimos cargar la información en este momento. Verifica tu conexión o intenta nuevamente más tarde.',
        onPress: () => ref.invalidate(pokemonsFavoriteNotifierProvider),
        titleButton: 'Reintentar',
      );
    }

    if (!fetchState.hasData || fetchState.items.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text('No tienes Pokémon favoritos aún'),
        ),
      );
    }

    return ItemPokemonOrganism(list: fetchState.items);
  }
}

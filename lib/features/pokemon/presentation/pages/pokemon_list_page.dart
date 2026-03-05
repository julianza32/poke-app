import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66/core/constants/app_constants.dart';
import 'package:global66/core/localizations/app_localizations.dart';
import 'package:global66/core/localizations/localization_helper.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/filter_pokemon_organism.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/infinite_pokemon_list.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/item_pokemon_organism.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/loader_organism.dart';
import 'package:global66/features/pokemon/presentation/desing/organism/not_found_organism.dart';
import 'package:global66/features/pokemon/presentation/desing/templates/page_template.dart';
import 'package:global66/features/pokemon/presentation/providers/pokemon_providers.dart';
class PokemonListPage extends ConsumerStatefulWidget {
  const PokemonListPage({super.key});

  @override
  ConsumerState<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends ConsumerState<PokemonListPage> {
  List<String> _selectedTypes = [];

  static const List<String> _allTypes = SecurityConfig.allowedTypes;

  void _openFilter() async {
    final result = await showModalBottomSheet<List<String>>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => DraggableScrollableSheet(
        initialChildSize: 0.65,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        expand: false,
        builder: (_, scrollController) => FilterPokemonOrganism(
          types: _allTypes,
          initialSelected: _selectedTypes,
        ),
      ),
    );
    if (result != null) {
      setState(() {
        _selectedTypes = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      child: Column(
        children: [
          const SizedBox(height: 50),
          _buildSearchBar(),
          Expanded(
            child: _selectedTypes.isEmpty
                ? _buildInfiniteScrollList()
                : _buildFilteredList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 0),
      child: GestureDetector(
        onTap: _openFilter,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            children: [
              const Icon(Icons.search, color: Colors.grey),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  _selectedTypes.isEmpty
                      ? AppLocalizations.of(context)!.serchByType
                      : _selectedTypes.map((type) => LocalizationHelper.getPokemonType(context, type)).join(', '),
                  style: TextStyle(
                    color: _selectedTypes.isEmpty ? Colors.grey : Colors.black,
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Icon(Icons.tune, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfiniteScrollList() {
    final paginationState = ref.watch(paginatedPokemonNotifierProvider);
    final notifier = ref.read(paginatedPokemonNotifierProvider.notifier);

    if (paginationState.isInitialLoading) {
      return const LoaderOrganism();
    }

    if (paginationState.error != null && paginationState.pokemons.isEmpty) {
      return NotFoundOrganism(
        imagePath: 'assets/images/magikarp.png',
        text: AppLocalizations.of(context)!.somethingWentWrong,
        paragraph:
            AppLocalizations.of(context)!.canNotLoadInformation,
        onPress: () => notifier.refresh(),
        titleButton: AppLocalizations.of(context)!.retry,
      );
    }

    if (paginationState.isEmpty) {
      return ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children:  [
         const SizedBox(height: 200),
          Center(child: Text(AppLocalizations.of(context)!.noFoundMore)),
        ],
      );
    }

    return InfinitePokemonList(
      pokemons: paginationState.pokemons,
      onLoadMore: () => notifier.loadMore(),
      onRefresh: () => notifier.refresh(),
      isLoadingMore: paginationState.isLoadingMore,
      hasMore: paginationState.hasMore,
    );
  }

  Widget _buildFilteredList() {
    final fetchState =
        ref.watch(pokemonByTypesNotifierProvider(_selectedTypes));

    if (fetchState.isLoading) {
      return const Center(child: LoaderOrganism());
    }

    if (fetchState.error != null) {
      return NotFoundOrganism(
        imagePath: 'assets/images/magikarp.png',
        text: AppLocalizations.of(context)!.somethingWentWrong,
        paragraph:
            AppLocalizations.of(context)!.canNotLoadInformation,
        onPress: () => ref.invalidate(pokemonByTypesNotifierProvider(_selectedTypes)),
        titleButton: AppLocalizations.of(context)!.retry,
      );
    }

    if (!fetchState.hasData || fetchState.items.isEmpty) {
      return  Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Text(AppLocalizations.of(context)!.noFoundItemsWithThisType),
        ),
      );
    }

    return ItemPokemonOrganism(list: fetchState.items);
  }
}

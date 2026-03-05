import 'package:flutter/material.dart';
import 'package:global66/core/constants/app_constants.dart';
import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/card_pokemon_molecule.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/tooltip_molecule.dart';
import 'package:global66/features/pokemon/presentation/utils/pokemon_style_utils.dart';
import 'package:go_router/go_router.dart';

class InfinitePokemonList extends StatefulWidget {
  const InfinitePokemonList({
    super.key,
    required this.pokemons,
    required this.onLoadMore,
    required this.onRefresh,
    this.isLoadingMore = false,
    this.hasMore = true,
  });

  final List<Pokemon> pokemons;
  final VoidCallback onLoadMore;
  final Future<void> Function() onRefresh;
  final bool isLoadingMore;
  final bool hasMore;

  @override
  State<InfinitePokemonList> createState() => _InfinitePokemonListState();
}

class _InfinitePokemonListState extends State<InfinitePokemonList> {
  final ScrollController _scrollController = ScrollController();

  static const double _loadMoreThreshold = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isNearBottom && widget.hasMore && !widget.isLoadingMore) {
      widget.onLoadMore();
    }
  }

  bool get _isNearBottom {
    if (!_scrollController.hasClients) return false;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    return currentScroll >= (maxScroll - _loadMoreThreshold);
  }

  @override
  Widget build(BuildContext context) {
    const officialArtworkUrl = ApiConfig.officialArtworkUrl;

    return RefreshIndicator(
      onRefresh: widget.onRefresh,
      child: ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.symmetric(vertical: 40),
        itemCount: widget.pokemons.length + (widget.isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == widget.pokemons.length) {
            return _buildLoadingIndicator();
          }

          final pokemon = widget.pokemons[index];
          return _buildPokemonItem(pokemon, index, officialArtworkUrl);
        },
      ),
    );
  }

  Widget _buildPokemonItem(Pokemon pokemon, int index, String artworkUrl) {
    final style = getPokemonStyleFromSprite(pokemon.types[0].type.name);

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
              types: _buildTypeChips(pokemon),
            ),
          ),
          if (index < widget.pokemons.length - 1) const SizedBox(height: 16),
        ],
      ),
    );
  }

  List<Widget> _buildTypeChips(Pokemon pokemon) {
    return pokemon.types.map((t) {
      final styleTip = getPokemonStyleFromSprite(t.type.name);
      return Row(
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

  Widget _buildLoadingIndicator() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

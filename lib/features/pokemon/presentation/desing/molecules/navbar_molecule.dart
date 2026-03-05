import 'package:flutter/material.dart';
import 'package:global66/core/localizations/app_localizations.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/item_menu_molecule.dart';
import 'package:go_router/go_router.dart';

class NavbarMolecule extends StatelessWidget {
  const NavbarMolecule({super.key, this.location = ''});

  final String location;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,

      child: SizedBox(
        
        height: 72,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemMenuMolecule(
                  icon: Icons.home,
                  title: 'Pokedex',
                  selected: (location == 'Pokemons' || location == 'PokemonDetail'),
                  onPress: () {
                    context.go('/pokemons');
                  }),
              ItemMenuMolecule(
                  icon: Icons.public,
                  title: AppLocalizations.of(context)!.regions,
                  selected: location == 'Regions',
                  onPress: () {
                    context.go('/regions');
                  }),
              ItemMenuMolecule(
                  icon: Icons.favorite,
                  title: AppLocalizations.of(context)!.favorites,
                  selected: location == 'Favorites',
                  onPress: () {
                    context.go('/favorites');
                  }),
              ItemMenuMolecule(
                  icon: Icons.person,
                  title: AppLocalizations.of(context)!.profile,
                  selected: location == 'Profile',
                  onPress: () {
                    context.go('/profile');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

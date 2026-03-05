import 'package:global66/features/pokemon/presentation/pages/favorites_page.dart';
import 'package:global66/features/pokemon/presentation/pages/onboarding_one_page.dart';
import 'package:global66/features/pokemon/presentation/pages/onboarding_two_page.dart';
import 'package:global66/features/pokemon/presentation/pages/pokemon_list_page.dart';
import 'package:global66/features/pokemon/presentation/pages/pokemon_page.dart';
import 'package:global66/features/pokemon/presentation/pages/profile_page.dart';
import 'package:global66/features/pokemon/presentation/pages/regions_page.dart';
import 'package:go_router/go_router.dart';

final appRouter = [
  GoRoute(
    path: '/',
    name: 'OnboardingOne',
    builder: (context, state) => const OnboardingOne(),
  ),
  GoRoute(
    path: '/onboarding-two',
    name: 'OnboardingTwo',
    builder: (context, state) => const OnboardingTwo(),
  ),
  GoRoute(
    path: '/pokemons',
    name: 'Pokemons',
    builder: (context, state) => const PokemonListPage(),
  ),
  GoRoute(
    path: '/regions',
    name: 'Regions',
    builder: (context, state) => const RegionsPage(),
  ),
  GoRoute(
    path: '/profile',
    name: 'Profile',
    builder: (context, state) => const ProfilePage(),
  ),
  GoRoute(
    path: '/favorites',
    name: 'Favorites',
    builder: (context, state) => const FavoritesPage(),
  ),
  GoRoute(
      path: '/pokemon/:id',
      name: 'PokemonDetail',
      builder: (context, state) {
        final id = state.pathParameters['id'] ?? '';
        return PokemonPage(id: id);
      }),
];

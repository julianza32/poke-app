
library;

/// API Configuration
class ApiConfig {
  ApiConfig._();

  /// Base URL para PokeAPI
  static const String baseUrl = 'https://pokeapi.co/api/v2/';

  /// Imagenes oficiales de pokemon
  static const String officialArtworkUrl =
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/';

  /// limite de pokemons por pagina para paginacion
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;
  static const int maxPokemonPerType = 10;
}

class AppConfig {
  AppConfig._();

  /// nombre de app
  static const String appName = 'Poke App Global66';

  /// Habilitar o deshabilitar logs de depuración
  static const bool enableLogging = true;

  /// duración de cache para datos de pokemones (30 mins)
  static const Duration cacheDuration = Duration(minutes: 30);
}

/// configuracion de seguridad para validar inputs y limitar rangos de IDs y tipos permitidos
class SecurityConfig {
  SecurityConfig._();

  /// minimo de id ID (prevenir ids negativos o cero)
  static const int minPokemonId = 1;

  /// máximo de ID de pokemon permitido (límite de PokeAPI)
  static const int maxPokemonId = 10000;

  /// longitud máxima de entrada para búsquedas
  static const int maxInputLength = 50;

  /// tipos de pokemon permitidos (lista blanca para filtrado)
  static const List<String> allowedTypes = [
    'normal',
    'fighting',
    'flying',
    'poison',
    'ground',
    'rock',
    'bug',
    'ghost',
    'steel',
    'fire',
    'water',
    'grass',
    'electric',
    'psychic',
    'ice',
    'dragon',
    'dark',
    'fairy',
  ];

  /// validar si un ID de Pokémon es válido
  static bool isValidPokemonId(int id) {
    return id >= minPokemonId && id <= maxPokemonId;
  }

  /// validar si un tipo de Pokémon es válido
  static bool isValidType(String type) {
    return allowedTypes.contains(type.toLowerCase());
  }

  /// sanitizar entradas de usuario para evitar inyecciones o caracteres no deseados
  static String sanitizeInput(String input) {
    if (input.length > maxInputLength) {
      input = input.substring(0, maxInputLength);
    }
    return input.replaceAll(RegExp(r'[^a-zA-Z0-9\s-]'), '').trim();
  }
}

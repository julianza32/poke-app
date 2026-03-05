/// Custom exceptions for the Pokemon feature.
/// 
/// Following Clean Architecture, exceptions are thrown in the data layer
/// and converted to Failures in the domain layer.
library;

/// Base class for all Pokemon-related exceptions.
sealed class PokemonException implements Exception {
  final String message;
  final int? statusCode;

  const PokemonException(this.message, {this.statusCode});

  @override
  String toString() => 'PokemonException: $message (status: $statusCode)';
}

/// Thrown when a Pokemon is not found.
class PokemonNotFoundException extends PokemonException {
  const PokemonNotFoundException(int id)
      : super('Pokemon with id $id not found', statusCode: 404);
}

/// Thrown when the Pokemon list fetch fails.
class PokemonListFetchException extends PokemonException {
  const PokemonListFetchException(String details, {int? statusCode})
      : super('Failed to fetch Pokemon list: $details', statusCode: statusCode);
}

/// Thrown when a Pokemon species fetch fails.
class PokemonSpeciesNotFoundException extends PokemonException {
  const PokemonSpeciesNotFoundException(int id)
      : super('Pokemon species with id $id not found', statusCode: 404);
}

/// Thrown when abilities fetch fails.
class PokemonAbilitiesNotFoundException extends PokemonException {
  const PokemonAbilitiesNotFoundException(int id)
      : super('Pokemon abilities with id $id not found', statusCode: 404);
}

/// Thrown when type fetch fails.
class PokemonTypeNotFoundException extends PokemonException {
  const PokemonTypeNotFoundException(String type)
      : super('Pokemon type "$type" not found', statusCode: 404);
}

/// Thrown when there's a network error.
class NetworkException extends PokemonException {
  const NetworkException(String details)
      : super('Network error: $details', statusCode: null);
}

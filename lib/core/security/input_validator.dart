import 'package:global66/core/constants/app_constants.dart';

/// Input validation utilities.
/// 
/// Provides security-focused validation for user inputs.
class InputValidator {
  InputValidator._();

  /// valida un id de Pokemon.
  /// 
  /// Retorna el id validado o null si es invalido.
  static int? validatePokemonId(String? input) {
    if (input == null || input.isEmpty) return null;

    // Remove non-numeric characters
    final sanitized = input.replaceAll(RegExp(r'[^0-9]'), '');
    if (sanitized.isEmpty) return null;

    final id = int.tryParse(sanitized);
    if (id == null) return null;

    // Validate range
    if (!SecurityConfig.isValidPokemonId(id)) return null;

    return id;
  }



  /// valida todos los tipos.
  /// 
  /// retorna solo los tipos validos.
  static List<String> validateTypes(List<String>? types) {
    if (types == null || types.isEmpty) return [];

    return types
        .map((t) => t.toLowerCase().trim())
        .where((t) => SecurityConfig.isValidType(t))
        .toSet() // Remove duplicates
        .toList();
  }

  /// valida los parámetros de paginacion.
  static ({int limit, int offset}) validatePagination({
    int? limit,
    int? offset,
  }) {
    final validLimit = (limit ?? ApiConfig.defaultPageSize)
        .clamp(1, ApiConfig.maxPageSize);
    final validOffset = (offset ?? 0).clamp(0, 10000);

    return (limit: validLimit, offset: validOffset);
  }
}

extension StringValidation on String {
  bool get isValidPokemonId => InputValidator.validatePokemonId(this) != null;
  bool get isValidPokemonType => SecurityConfig.isValidType(this);

}

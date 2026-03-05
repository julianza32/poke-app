import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:global66/core/error/exceptions.dart';
import 'package:global66/core/utils/url_parser.dart';
import '../models/pokemon_model.dart';


abstract class PokemonRemoteDataSource {
  Future<List<PokemonModel>> fetchPokemons({int limit = 20, int offset = 0});
  Future<PokemonModel> fetchPokemonById(int id);
  Future<PokemonSpeciesModel> fetchPokemonSpeciesById(int id);
  Future<AbilitiesPokemonModel> fetchPokemonAbilitiesById(int id);
  Future<TypesPokemonModel> fetchPokemonTypesById(int id);
  Future<List<PokemonModel>> fetchPokemonsByTypes(List<String> types);
  Future<List<PokemonModel>> fetchPokemonsByIds(List<String> ids);
}


class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final Dio dio;
  
  PokemonRemoteDataSourceImpl({required this.dio});

  Future<List<PokemonModel>> _fetchPokemonDetailsFromResults(
      List<dynamic> results) async {
    final List<PokemonModel> list = [];
    
    for (final item in results) {
      try {
        final id = extractIdFromUrl(item['url'] as String?);
        if (id == null) continue;

        final detail = await fetchPokemonById(id);
        list.add(detail);
      } catch (e, st) {
        debugPrint('Failed to fetch pokemon details: $e');
        debugPrint('$st');
        continue;
      }
    }
    return list;
  }

  @override
  // Busca los primeros pokemones y luego hace llamadas adicionales para obtener sus detalles.
  Future<List<PokemonModel>> fetchPokemons({
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final res = await dio.get(
        'pokemon',
        queryParameters: {'limit': limit, 'offset': offset},
      );
      
      if (res.statusCode == 200) {
        final data = res.data as Map<String, dynamic>;
        final results = data['results'] as List<dynamic>;
        return _fetchPokemonDetailsFromResults(results);
      }
      
      throw PokemonListFetchException(
        'Unexpected status code',
        statusCode: res.statusCode,
      );
    } on DioException catch (e) {
      throw NetworkException(e.message ?? 'Unknown network error');
    }
  }

  @override
  // Obtiene los detalles de un pokemon por su id
  Future<PokemonModel> fetchPokemonById(int id) async {
    try {
      final res = await dio.get('pokemon/$id');
      
      if (res.statusCode == 200) {
        final data = res.data as Map<String, dynamic>;
        return PokemonModel.fromJson(data);
      }
      
      throw PokemonNotFoundException(id);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw PokemonNotFoundException(id);
      }
      throw NetworkException(e.message ?? 'Unknown network error');
    }
  }

  @override
  // Obtiene los detalles de un pokemon por su id
  Future<PokemonSpeciesModel> fetchPokemonSpeciesById(int id) async {
    try {
      final res = await dio.get('pokemon-species/$id');
      
      if (res.statusCode == 200) {
        final data = res.data as Map<String, dynamic>;
        return PokemonSpeciesModel.fromJson(data);
      }
      
      throw PokemonSpeciesNotFoundException(id);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw PokemonSpeciesNotFoundException(id);
      }
      throw NetworkException(e.message ?? 'Unknown network error');
    }
  }

  @override
  // Obtiene los detalles y habilidades de un pokemon por su id
  Future<AbilitiesPokemonModel> fetchPokemonAbilitiesById(int id) async {
    try {
      final res = await dio.get('ability/$id');
      
      if (res.statusCode == 200) {
        final data = res.data as Map<String, dynamic>;
        return AbilitiesPokemonModel.fromJson(data);
      }
      
      throw PokemonAbilitiesNotFoundException(id);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw PokemonAbilitiesNotFoundException(id);
      }
      throw NetworkException(e.message ?? 'Unknown network error');
    }
  }

  @override
  // Obtiene los tipos de un pokemon por su id
  Future<TypesPokemonModel> fetchPokemonTypesById(int id) async {
    try {
      final res = await dio.get('type/$id');
      
      if (res.statusCode == 200) {
        final data = res.data as Map<String, dynamic>;
        return TypesPokemonModel.fromJson(data);
      }
      
      throw PokemonTypeNotFoundException('id: $id');
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw PokemonTypeNotFoundException('id: $id');
      }
      throw NetworkException(e.message ?? 'Unknown network error');
    }
  }

  // Busca pokemones por un solo tipo (helper interno).
  Future<List<PokemonModel>> _fetchPokemonsByType(
    String type, {
    int limit = 10,
  }) async {
    try {
      final res = await dio.get('type/$type');
      
      if (res.statusCode == 200) {
        final data = res.data as Map<String, dynamic>;
        final typesModel = TypesPokemonModel.fromJson(data);
        
        final pokemonUrls = typesModel.pokemon
            .take(limit)
            .map((p) => {'url': p.pokemon.url})
            .toList();
            
        return _fetchPokemonDetailsFromResults(pokemonUrls);
      }
      
      throw PokemonTypeNotFoundException(type);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw PokemonTypeNotFoundException(type);
      }
      throw NetworkException(e.message ?? 'Unknown network error');
    }
  }

  @override
  // Busca pokemones por varios tipos, combinando resultados y eliminando duplicados.
  Future<List<PokemonModel>> fetchPokemonsByTypes(
    List<String> types, {
    int limitPerType = 10,
  }) async {
    if (types.isEmpty) {
      return fetchPokemons();
    }
    final futures = types.map(
      (type) => _fetchPokemonsByType(type, limit: limitPerType),
    );
    final results = await Future.wait(futures);
    final Map<int, PokemonModel> uniquePokemons = {};
    for (final list in results) {
      for (final pokemon in list) {
        uniquePokemons[pokemon.id] = pokemon;
      }
    }
    return uniquePokemons.values.toList()
      ..sort((a, b) => a.id.compareTo(b.id));
  }

 @override
  Future<List<PokemonModel>> fetchPokemonsByIds(List<String> ids) {
    if (ids.isEmpty) {
      return Future.value([]);
    }


    final futures = ids.map((id) => fetchPokemonById(int.parse(id)));
    return Future.wait(futures);
  }
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'71f9f2de1065eb7b3e14e7102c2b7e62f181b245';

/// Secure Dio instance with proper configuration.
///
/// Copied from [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$isarHash() => r'd2e9457a9559440ffce7ca4746b463eaf03f1bc0';

/// See also [isar].
@ProviderFor(isar)
final isarProvider = AutoDisposeProvider<Isar>.internal(
  isar,
  name: r'isarProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isarHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsarRef = AutoDisposeProviderRef<Isar>;
String _$localDataSourceHash() => r'f323e19769fd26dd00fa00bca72bdb1f690916fc';

/// See also [localDataSource].
@ProviderFor(localDataSource)
final localDataSourceProvider =
    AutoDisposeProvider<PokemonLocalDataSource>.internal(
  localDataSource,
  name: r'localDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalDataSourceRef = AutoDisposeProviderRef<PokemonLocalDataSource>;
String _$remoteDataSourceHash() => r'cc6d3617fb27f8f0e70705af3e85dc06a959021a';

/// See also [remoteDataSource].
@ProviderFor(remoteDataSource)
final remoteDataSourceProvider =
    AutoDisposeProvider<PokemonRemoteDataSource>.internal(
  remoteDataSource,
  name: r'remoteDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$remoteDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RemoteDataSourceRef = AutoDisposeProviderRef<PokemonRemoteDataSource>;
String _$repositoryHash() => r'171f0eeda6ad34c62b226f7c98bed6d321bad644';

/// See also [repository].
@ProviderFor(repository)
final repositoryProvider = AutoDisposeProvider<PokemonRepository>.internal(
  repository,
  name: r'repositoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$repositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RepositoryRef = AutoDisposeProviderRef<PokemonRepository>;
String _$getPokemonsHash() => r'c3d5fbfe5772f3a2331e8a2a8baf246cfb22f2ea';

/// See also [getPokemons].
@ProviderFor(getPokemons)
final getPokemonsProvider = AutoDisposeProvider<GetPokemons>.internal(
  getPokemons,
  name: r'getPokemonsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getPokemonsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetPokemonsRef = AutoDisposeProviderRef<GetPokemons>;
String _$getPokemonByIdHash() => r'1a380018a874f45486037556060d663f9cf6747d';

/// See also [getPokemonById].
@ProviderFor(getPokemonById)
final getPokemonByIdProvider = AutoDisposeProvider<GetPokemonById>.internal(
  getPokemonById,
  name: r'getPokemonByIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getPokemonByIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetPokemonByIdRef = AutoDisposeProviderRef<GetPokemonById>;
String _$getPokemonsByTypesHash() =>
    r'b35c889079f9b72527a24c46a70a5a691c4bdce1';

/// See also [getPokemonsByTypes].
@ProviderFor(getPokemonsByTypes)
final getPokemonsByTypesProvider =
    AutoDisposeProvider<GetPokemonsByTypes>.internal(
  getPokemonsByTypes,
  name: r'getPokemonsByTypesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getPokemonsByTypesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetPokemonsByTypesRef = AutoDisposeProviderRef<GetPokemonsByTypes>;
String _$getFavoritePokemonsHash() =>
    r'301421049924e04e236bc2f4c2792d90a6e9b86b';

/// See also [getFavoritePokemons].
@ProviderFor(getFavoritePokemons)
final getFavoritePokemonsProvider =
    AutoDisposeProvider<GetFavoritePokemons>.internal(
  getFavoritePokemons,
  name: r'getFavoritePokemonsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getFavoritePokemonsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetFavoritePokemonsRef = AutoDisposeProviderRef<GetFavoritePokemons>;
String _$addFavoritePokemonHash() =>
    r'4100558ddf9a3957a5b47b760167b16b08b0da3c';

/// See also [addFavoritePokemon].
@ProviderFor(addFavoritePokemon)
final addFavoritePokemonProvider =
    AutoDisposeProvider<AddFavoritePokemon>.internal(
  addFavoritePokemon,
  name: r'addFavoritePokemonProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addFavoritePokemonHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AddFavoritePokemonRef = AutoDisposeProviderRef<AddFavoritePokemon>;
String _$removeFavoritePokemonHash() =>
    r'148159f3427c987cd63cbd68f6cae7306f465b10';

/// See also [removeFavoritePokemon].
@ProviderFor(removeFavoritePokemon)
final removeFavoritePokemonProvider =
    AutoDisposeProvider<RemoveFavoritePokemon>.internal(
  removeFavoritePokemon,
  name: r'removeFavoritePokemonProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$removeFavoritePokemonHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RemoveFavoritePokemonRef
    = AutoDisposeProviderRef<RemoveFavoritePokemon>;
String _$paginatedPokemonNotifierHash() =>
    r'e7f5a11af998af2c4bfaef5952ea774b06f41507';

/// See also [PaginatedPokemonNotifier].
@ProviderFor(PaginatedPokemonNotifier)
final paginatedPokemonNotifierProvider = AutoDisposeNotifierProvider<
    PaginatedPokemonNotifier, PaginationState>.internal(
  PaginatedPokemonNotifier.new,
  name: r'paginatedPokemonNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedPokemonNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedPokemonNotifier = AutoDisposeNotifier<PaginationState>;
String _$pokemonByIdNotifierHash() =>
    r'a4dd6d16ad4ffdd56b5e8cd91660b6c91ec972f3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PokemonByIdNotifier
    extends BuildlessAutoDisposeNotifier<FetchState> {
  late final String id;

  FetchState build(
    String id,
  );
}

/// See also [PokemonByIdNotifier].
@ProviderFor(PokemonByIdNotifier)
const pokemonByIdNotifierProvider = PokemonByIdNotifierFamily();

/// See also [PokemonByIdNotifier].
class PokemonByIdNotifierFamily extends Family<FetchState> {
  /// See also [PokemonByIdNotifier].
  const PokemonByIdNotifierFamily();

  /// See also [PokemonByIdNotifier].
  PokemonByIdNotifierProvider call(
    String id,
  ) {
    return PokemonByIdNotifierProvider(
      id,
    );
  }

  @override
  PokemonByIdNotifierProvider getProviderOverride(
    covariant PokemonByIdNotifierProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonByIdNotifierProvider';
}

/// See also [PokemonByIdNotifier].
class PokemonByIdNotifierProvider
    extends AutoDisposeNotifierProviderImpl<PokemonByIdNotifier, FetchState> {
  /// See also [PokemonByIdNotifier].
  PokemonByIdNotifierProvider(
    String id,
  ) : this._internal(
          () => PokemonByIdNotifier()..id = id,
          from: pokemonByIdNotifierProvider,
          name: r'pokemonByIdNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonByIdNotifierHash,
          dependencies: PokemonByIdNotifierFamily._dependencies,
          allTransitiveDependencies:
              PokemonByIdNotifierFamily._allTransitiveDependencies,
          id: id,
        );

  PokemonByIdNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FetchState runNotifierBuild(
    covariant PokemonByIdNotifier notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(PokemonByIdNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PokemonByIdNotifierProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PokemonByIdNotifier, FetchState>
      createElement() {
    return _PokemonByIdNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonByIdNotifierProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonByIdNotifierRef on AutoDisposeNotifierProviderRef<FetchState> {
  /// The parameter `id` of this provider.
  String get id;
}

class _PokemonByIdNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<PokemonByIdNotifier, FetchState>
    with PokemonByIdNotifierRef {
  _PokemonByIdNotifierProviderElement(super.provider);

  @override
  String get id => (origin as PokemonByIdNotifierProvider).id;
}

String _$pokemonByTypesNotifierHash() =>
    r'66b2c017261647ea333c7d22445fe3e20a9014e4';

abstract class _$PokemonByTypesNotifier
    extends BuildlessAutoDisposeNotifier<FetchState> {
  late final List<String> types;

  FetchState build(
    List<String> types,
  );
}

/// See also [PokemonByTypesNotifier].
@ProviderFor(PokemonByTypesNotifier)
const pokemonByTypesNotifierProvider = PokemonByTypesNotifierFamily();

/// See also [PokemonByTypesNotifier].
class PokemonByTypesNotifierFamily extends Family<FetchState> {
  /// See also [PokemonByTypesNotifier].
  const PokemonByTypesNotifierFamily();

  /// See also [PokemonByTypesNotifier].
  PokemonByTypesNotifierProvider call(
    List<String> types,
  ) {
    return PokemonByTypesNotifierProvider(
      types,
    );
  }

  @override
  PokemonByTypesNotifierProvider getProviderOverride(
    covariant PokemonByTypesNotifierProvider provider,
  ) {
    return call(
      provider.types,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonByTypesNotifierProvider';
}

/// See also [PokemonByTypesNotifier].
class PokemonByTypesNotifierProvider extends AutoDisposeNotifierProviderImpl<
    PokemonByTypesNotifier, FetchState> {
  /// See also [PokemonByTypesNotifier].
  PokemonByTypesNotifierProvider(
    List<String> types,
  ) : this._internal(
          () => PokemonByTypesNotifier()..types = types,
          from: pokemonByTypesNotifierProvider,
          name: r'pokemonByTypesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonByTypesNotifierHash,
          dependencies: PokemonByTypesNotifierFamily._dependencies,
          allTransitiveDependencies:
              PokemonByTypesNotifierFamily._allTransitiveDependencies,
          types: types,
        );

  PokemonByTypesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.types,
  }) : super.internal();

  final List<String> types;

  @override
  FetchState runNotifierBuild(
    covariant PokemonByTypesNotifier notifier,
  ) {
    return notifier.build(
      types,
    );
  }

  @override
  Override overrideWith(PokemonByTypesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PokemonByTypesNotifierProvider._internal(
        () => create()..types = types,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        types: types,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PokemonByTypesNotifier, FetchState>
      createElement() {
    return _PokemonByTypesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonByTypesNotifierProvider && other.types == types;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, types.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonByTypesNotifierRef on AutoDisposeNotifierProviderRef<FetchState> {
  /// The parameter `types` of this provider.
  List<String> get types;
}

class _PokemonByTypesNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<PokemonByTypesNotifier,
        FetchState> with PokemonByTypesNotifierRef {
  _PokemonByTypesNotifierProviderElement(super.provider);

  @override
  List<String> get types => (origin as PokemonByTypesNotifierProvider).types;
}

String _$pokemonsFavoriteNotifierHash() =>
    r'221b3f95b0fec4fb35d15cae5df062381c15250d';

/// See also [PokemonsFavoriteNotifier].
@ProviderFor(PokemonsFavoriteNotifier)
final pokemonsFavoriteNotifierProvider =
    AutoDisposeNotifierProvider<PokemonsFavoriteNotifier, FetchState>.internal(
  PokemonsFavoriteNotifier.new,
  name: r'pokemonsFavoriteNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pokemonsFavoriteNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PokemonsFavoriteNotifier = AutoDisposeNotifier<FetchState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

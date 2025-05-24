// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mural_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cardsHash() => r'007d5d1cb25834dd906c304ef03d4e5eee23ffaf';

/// See also [cards].
@ProviderFor(cards)
final cardsProvider = AutoDisposeFutureProvider<List<MuralModel>>.internal(
  cards,
  name: r'cardsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cardsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CardsRef = AutoDisposeFutureProviderRef<List<MuralModel>>;
String _$insertPostHash() => r'46bae091b431df48e6488a7c87cb28637f0a3831';

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

/// See also [insertPost].
@ProviderFor(insertPost)
const insertPostProvider = InsertPostFamily();

/// See also [insertPost].
class InsertPostFamily extends Family<AsyncValue<void>> {
  /// See also [insertPost].
  const InsertPostFamily();

  /// See also [insertPost].
  InsertPostProvider call(
    MuralModel card,
  ) {
    return InsertPostProvider(
      card,
    );
  }

  @override
  InsertPostProvider getProviderOverride(
    covariant InsertPostProvider provider,
  ) {
    return call(
      provider.card,
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
  String? get name => r'insertPostProvider';
}

/// See also [insertPost].
class InsertPostProvider extends AutoDisposeFutureProvider<void> {
  /// See also [insertPost].
  InsertPostProvider(
    MuralModel card,
  ) : this._internal(
          (ref) => insertPost(
            ref as InsertPostRef,
            card,
          ),
          from: insertPostProvider,
          name: r'insertPostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$insertPostHash,
          dependencies: InsertPostFamily._dependencies,
          allTransitiveDependencies:
              InsertPostFamily._allTransitiveDependencies,
          card: card,
        );

  InsertPostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.card,
  }) : super.internal();

  final MuralModel card;

  @override
  Override overrideWith(
    FutureOr<void> Function(InsertPostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InsertPostProvider._internal(
        (ref) => create(ref as InsertPostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        card: card,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _InsertPostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsertPostProvider && other.card == card;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, card.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InsertPostRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `card` of this provider.
  MuralModel get card;
}

class _InsertPostProviderElement extends AutoDisposeFutureProviderElement<void>
    with InsertPostRef {
  _InsertPostProviderElement(super.provider);

  @override
  MuralModel get card => (origin as InsertPostProvider).card;
}

String _$deletPostHash() => r'b75277f621c4f58214ec876ec9d2c05c6683abca';

/// See also [deletPost].
@ProviderFor(deletPost)
const deletPostProvider = DeletPostFamily();

/// See also [deletPost].
class DeletPostFamily extends Family<AsyncValue<void>> {
  /// See also [deletPost].
  const DeletPostFamily();

  /// See also [deletPost].
  DeletPostProvider call(
    MuralModel card,
  ) {
    return DeletPostProvider(
      card,
    );
  }

  @override
  DeletPostProvider getProviderOverride(
    covariant DeletPostProvider provider,
  ) {
    return call(
      provider.card,
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
  String? get name => r'deletPostProvider';
}

/// See also [deletPost].
class DeletPostProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deletPost].
  DeletPostProvider(
    MuralModel card,
  ) : this._internal(
          (ref) => deletPost(
            ref as DeletPostRef,
            card,
          ),
          from: deletPostProvider,
          name: r'deletPostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deletPostHash,
          dependencies: DeletPostFamily._dependencies,
          allTransitiveDependencies: DeletPostFamily._allTransitiveDependencies,
          card: card,
        );

  DeletPostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.card,
  }) : super.internal();

  final MuralModel card;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeletPostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeletPostProvider._internal(
        (ref) => create(ref as DeletPostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        card: card,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeletPostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeletPostProvider && other.card == card;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, card.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeletPostRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `card` of this provider.
  MuralModel get card;
}

class _DeletPostProviderElement extends AutoDisposeFutureProviderElement<void>
    with DeletPostRef {
  _DeletPostProviderElement(super.provider);

  @override
  MuralModel get card => (origin as DeletPostProvider).card;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

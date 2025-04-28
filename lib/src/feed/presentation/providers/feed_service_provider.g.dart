// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_service_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$insertPostServiceHash() => r'881d63761e6f89c702fc20df15bae557e5eed4bd';

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

/// See also [insertPostService].
@ProviderFor(insertPostService)
const insertPostServiceProvider = InsertPostServiceFamily();

/// See also [insertPostService].
class InsertPostServiceFamily extends Family<AsyncValue<void>> {
  /// See also [insertPostService].
  const InsertPostServiceFamily();

  /// See also [insertPostService].
  InsertPostServiceProvider call({
    required File file,
    required FeedModel feed,
  }) {
    return InsertPostServiceProvider(
      file: file,
      feed: feed,
    );
  }

  @override
  InsertPostServiceProvider getProviderOverride(
    covariant InsertPostServiceProvider provider,
  ) {
    return call(
      file: provider.file,
      feed: provider.feed,
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
  String? get name => r'insertPostServiceProvider';
}

/// See also [insertPostService].
class InsertPostServiceProvider extends AutoDisposeFutureProvider<void> {
  /// See also [insertPostService].
  InsertPostServiceProvider({
    required File file,
    required FeedModel feed,
  }) : this._internal(
          (ref) => insertPostService(
            ref as InsertPostServiceRef,
            file: file,
            feed: feed,
          ),
          from: insertPostServiceProvider,
          name: r'insertPostServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$insertPostServiceHash,
          dependencies: InsertPostServiceFamily._dependencies,
          allTransitiveDependencies:
              InsertPostServiceFamily._allTransitiveDependencies,
          file: file,
          feed: feed,
        );

  InsertPostServiceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.file,
    required this.feed,
  }) : super.internal();

  final File file;
  final FeedModel feed;

  @override
  Override overrideWith(
    FutureOr<void> Function(InsertPostServiceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InsertPostServiceProvider._internal(
        (ref) => create(ref as InsertPostServiceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        file: file,
        feed: feed,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _InsertPostServiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsertPostServiceProvider &&
        other.file == file &&
        other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, file.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InsertPostServiceRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `file` of this provider.
  File get file;

  /// The parameter `feed` of this provider.
  FeedModel get feed;
}

class _InsertPostServiceProviderElement
    extends AutoDisposeFutureProviderElement<void> with InsertPostServiceRef {
  _InsertPostServiceProviderElement(super.provider);

  @override
  File get file => (origin as InsertPostServiceProvider).file;
  @override
  FeedModel get feed => (origin as InsertPostServiceProvider).feed;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

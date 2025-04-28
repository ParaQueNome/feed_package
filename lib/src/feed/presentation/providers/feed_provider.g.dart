// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedHash() => r'd0e3cc9ee4cac8dd124fef47bd0a4ad198d0f960';

/// See also [feed].
@ProviderFor(feed)
final feedProvider = AutoDisposeStreamProvider<List<FeedModel>>.internal(
  feed,
  name: r'feedProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$feedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FeedRef = AutoDisposeStreamProviderRef<List<FeedModel>>;
String _$findPostByUserProviderHash() =>
    r'71fa52a51ced7a477c6379db9a981fed4149bbef';

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

/// See also [findPostByUserProvider].
@ProviderFor(findPostByUserProvider)
const findPostByUserProviderProvider = FindPostByUserProviderFamily();

/// See also [findPostByUserProvider].
class FindPostByUserProviderFamily extends Family<AsyncValue<List<FeedModel>>> {
  /// See also [findPostByUserProvider].
  const FindPostByUserProviderFamily();

  /// See also [findPostByUserProvider].
  FindPostByUserProviderProvider call(
    String id,
  ) {
    return FindPostByUserProviderProvider(
      id,
    );
  }

  @override
  FindPostByUserProviderProvider getProviderOverride(
    covariant FindPostByUserProviderProvider provider,
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
  String? get name => r'findPostByUserProviderProvider';
}

/// See also [findPostByUserProvider].
class FindPostByUserProviderProvider
    extends AutoDisposeFutureProvider<List<FeedModel>> {
  /// See also [findPostByUserProvider].
  FindPostByUserProviderProvider(
    String id,
  ) : this._internal(
          (ref) => findPostByUserProvider(
            ref as FindPostByUserProviderRef,
            id,
          ),
          from: findPostByUserProviderProvider,
          name: r'findPostByUserProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findPostByUserProviderHash,
          dependencies: FindPostByUserProviderFamily._dependencies,
          allTransitiveDependencies:
              FindPostByUserProviderFamily._allTransitiveDependencies,
          id: id,
        );

  FindPostByUserProviderProvider._internal(
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
  Override overrideWith(
    FutureOr<List<FeedModel>> Function(FindPostByUserProviderRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindPostByUserProviderProvider._internal(
        (ref) => create(ref as FindPostByUserProviderRef),
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
  AutoDisposeFutureProviderElement<List<FeedModel>> createElement() {
    return _FindPostByUserProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindPostByUserProviderProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FindPostByUserProviderRef
    on AutoDisposeFutureProviderRef<List<FeedModel>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _FindPostByUserProviderProviderElement
    extends AutoDisposeFutureProviderElement<List<FeedModel>>
    with FindPostByUserProviderRef {
  _FindPostByUserProviderProviderElement(super.provider);

  @override
  String get id => (origin as FindPostByUserProviderProvider).id;
}

String _$findSavedPostsProviderHash() =>
    r'805645961919d78d89b0f4eca822a64bf296dce8';

/// See also [findSavedPostsProvider].
@ProviderFor(findSavedPostsProvider)
const findSavedPostsProviderProvider = FindSavedPostsProviderFamily();

/// See also [findSavedPostsProvider].
class FindSavedPostsProviderFamily extends Family<AsyncValue<List<FeedModel>>> {
  /// See also [findSavedPostsProvider].
  const FindSavedPostsProviderFamily();

  /// See also [findSavedPostsProvider].
  FindSavedPostsProviderProvider call(
    int id,
  ) {
    return FindSavedPostsProviderProvider(
      id,
    );
  }

  @override
  FindSavedPostsProviderProvider getProviderOverride(
    covariant FindSavedPostsProviderProvider provider,
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
  String? get name => r'findSavedPostsProviderProvider';
}

/// See also [findSavedPostsProvider].
class FindSavedPostsProviderProvider
    extends AutoDisposeFutureProvider<List<FeedModel>> {
  /// See also [findSavedPostsProvider].
  FindSavedPostsProviderProvider(
    int id,
  ) : this._internal(
          (ref) => findSavedPostsProvider(
            ref as FindSavedPostsProviderRef,
            id,
          ),
          from: findSavedPostsProviderProvider,
          name: r'findSavedPostsProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findSavedPostsProviderHash,
          dependencies: FindSavedPostsProviderFamily._dependencies,
          allTransitiveDependencies:
              FindSavedPostsProviderFamily._allTransitiveDependencies,
          id: id,
        );

  FindSavedPostsProviderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<List<FeedModel>> Function(FindSavedPostsProviderRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindSavedPostsProviderProvider._internal(
        (ref) => create(ref as FindSavedPostsProviderRef),
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
  AutoDisposeFutureProviderElement<List<FeedModel>> createElement() {
    return _FindSavedPostsProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindSavedPostsProviderProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FindSavedPostsProviderRef
    on AutoDisposeFutureProviderRef<List<FeedModel>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _FindSavedPostsProviderProviderElement
    extends AutoDisposeFutureProviderElement<List<FeedModel>>
    with FindSavedPostsProviderRef {
  _FindSavedPostsProviderProviderElement(super.provider);

  @override
  int get id => (origin as FindSavedPostsProviderProvider).id;
}

String _$insertPostHash() => r'dbf9a66b018f096acf367d8ebcff4e3927fcc537';

/// See also [insertPost].
@ProviderFor(insertPost)
const insertPostProvider = InsertPostFamily();

/// See also [insertPost].
class InsertPostFamily extends Family<AsyncValue<void>> {
  /// See also [insertPost].
  const InsertPostFamily();

  /// See also [insertPost].
  InsertPostProvider call(
    FeedModel feed,
  ) {
    return InsertPostProvider(
      feed,
    );
  }

  @override
  InsertPostProvider getProviderOverride(
    covariant InsertPostProvider provider,
  ) {
    return call(
      provider.feed,
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
    FeedModel feed,
  ) : this._internal(
          (ref) => insertPost(
            ref as InsertPostRef,
            feed,
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
          feed: feed,
        );

  InsertPostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.feed,
  }) : super.internal();

  final FeedModel feed;

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
        feed: feed,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _InsertPostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsertPostProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InsertPostRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `feed` of this provider.
  FeedModel get feed;
}

class _InsertPostProviderElement extends AutoDisposeFutureProviderElement<void>
    with InsertPostRef {
  _InsertPostProviderElement(super.provider);

  @override
  FeedModel get feed => (origin as InsertPostProvider).feed;
}

String _$updatePostHash() => r'566968d981f06c71d48d99863ef36418b16fa38b';

/// See also [updatePost].
@ProviderFor(updatePost)
const updatePostProvider = UpdatePostFamily();

/// See also [updatePost].
class UpdatePostFamily extends Family<AsyncValue<void>> {
  /// See also [updatePost].
  const UpdatePostFamily();

  /// See also [updatePost].
  UpdatePostProvider call(
    FeedModel feed,
  ) {
    return UpdatePostProvider(
      feed,
    );
  }

  @override
  UpdatePostProvider getProviderOverride(
    covariant UpdatePostProvider provider,
  ) {
    return call(
      provider.feed,
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
  String? get name => r'updatePostProvider';
}

/// See also [updatePost].
class UpdatePostProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updatePost].
  UpdatePostProvider(
    FeedModel feed,
  ) : this._internal(
          (ref) => updatePost(
            ref as UpdatePostRef,
            feed,
          ),
          from: updatePostProvider,
          name: r'updatePostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updatePostHash,
          dependencies: UpdatePostFamily._dependencies,
          allTransitiveDependencies:
              UpdatePostFamily._allTransitiveDependencies,
          feed: feed,
        );

  UpdatePostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.feed,
  }) : super.internal();

  final FeedModel feed;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdatePostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdatePostProvider._internal(
        (ref) => create(ref as UpdatePostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        feed: feed,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdatePostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdatePostProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdatePostRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `feed` of this provider.
  FeedModel get feed;
}

class _UpdatePostProviderElement extends AutoDisposeFutureProviderElement<void>
    with UpdatePostRef {
  _UpdatePostProviderElement(super.provider);

  @override
  FeedModel get feed => (origin as UpdatePostProvider).feed;
}

String _$deletePostHash() => r'0e749f11ad62ee2f69727cf35ff7603d3124cb8e';

/// See also [deletePost].
@ProviderFor(deletePost)
const deletePostProvider = DeletePostFamily();

/// See also [deletePost].
class DeletePostFamily extends Family<AsyncValue<void>> {
  /// See also [deletePost].
  const DeletePostFamily();

  /// See also [deletePost].
  DeletePostProvider call(
    FeedModel feed,
  ) {
    return DeletePostProvider(
      feed,
    );
  }

  @override
  DeletePostProvider getProviderOverride(
    covariant DeletePostProvider provider,
  ) {
    return call(
      provider.feed,
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
  String? get name => r'deletePostProvider';
}

/// See also [deletePost].
class DeletePostProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deletePost].
  DeletePostProvider(
    FeedModel feed,
  ) : this._internal(
          (ref) => deletePost(
            ref as DeletePostRef,
            feed,
          ),
          from: deletePostProvider,
          name: r'deletePostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deletePostHash,
          dependencies: DeletePostFamily._dependencies,
          allTransitiveDependencies:
              DeletePostFamily._allTransitiveDependencies,
          feed: feed,
        );

  DeletePostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.feed,
  }) : super.internal();

  final FeedModel feed;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeletePostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeletePostProvider._internal(
        (ref) => create(ref as DeletePostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        feed: feed,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeletePostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeletePostProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeletePostRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `feed` of this provider.
  FeedModel get feed;
}

class _DeletePostProviderElement extends AutoDisposeFutureProviderElement<void>
    with DeletePostRef {
  _DeletePostProviderElement(super.provider);

  @override
  FeedModel get feed => (origin as DeletePostProvider).feed;
}

String _$savePostHash() => r'637102bdf85a96ebb68897fb8534f754a6644aca';

/// See also [savePost].
@ProviderFor(savePost)
const savePostProvider = SavePostFamily();

/// See also [savePost].
class SavePostFamily extends Family<AsyncValue<void>> {
  /// See also [savePost].
  const SavePostFamily();

  /// See also [savePost].
  SavePostProvider call(
    SaveModel save,
  ) {
    return SavePostProvider(
      save,
    );
  }

  @override
  SavePostProvider getProviderOverride(
    covariant SavePostProvider provider,
  ) {
    return call(
      provider.save,
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
  String? get name => r'savePostProvider';
}

/// See also [savePost].
class SavePostProvider extends AutoDisposeFutureProvider<void> {
  /// See also [savePost].
  SavePostProvider(
    SaveModel save,
  ) : this._internal(
          (ref) => savePost(
            ref as SavePostRef,
            save,
          ),
          from: savePostProvider,
          name: r'savePostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$savePostHash,
          dependencies: SavePostFamily._dependencies,
          allTransitiveDependencies: SavePostFamily._allTransitiveDependencies,
          save: save,
        );

  SavePostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.save,
  }) : super.internal();

  final SaveModel save;

  @override
  Override overrideWith(
    FutureOr<void> Function(SavePostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SavePostProvider._internal(
        (ref) => create(ref as SavePostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        save: save,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SavePostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SavePostProvider && other.save == save;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, save.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SavePostRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `save` of this provider.
  SaveModel get save;
}

class _SavePostProviderElement extends AutoDisposeFutureProviderElement<void>
    with SavePostRef {
  _SavePostProviderElement(super.provider);

  @override
  SaveModel get save => (origin as SavePostProvider).save;
}

String _$likePostHash() => r'28c7daa7980acdc79f91d227a34999fa4bc50a77';

/// See also [likePost].
@ProviderFor(likePost)
const likePostProvider = LikePostFamily();

/// See also [likePost].
class LikePostFamily extends Family<AsyncValue<void>> {
  /// See also [likePost].
  const LikePostFamily();

  /// See also [likePost].
  LikePostProvider call(
    LikeModel like,
  ) {
    return LikePostProvider(
      like,
    );
  }

  @override
  LikePostProvider getProviderOverride(
    covariant LikePostProvider provider,
  ) {
    return call(
      provider.like,
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
  String? get name => r'likePostProvider';
}

/// See also [likePost].
class LikePostProvider extends AutoDisposeFutureProvider<void> {
  /// See also [likePost].
  LikePostProvider(
    LikeModel like,
  ) : this._internal(
          (ref) => likePost(
            ref as LikePostRef,
            like,
          ),
          from: likePostProvider,
          name: r'likePostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$likePostHash,
          dependencies: LikePostFamily._dependencies,
          allTransitiveDependencies: LikePostFamily._allTransitiveDependencies,
          like: like,
        );

  LikePostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.like,
  }) : super.internal();

  final LikeModel like;

  @override
  Override overrideWith(
    FutureOr<void> Function(LikePostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LikePostProvider._internal(
        (ref) => create(ref as LikePostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        like: like,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _LikePostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LikePostProvider && other.like == like;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, like.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LikePostRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `like` of this provider.
  LikeModel get like;
}

class _LikePostProviderElement extends AutoDisposeFutureProviderElement<void>
    with LikePostRef {
  _LikePostProviderElement(super.provider);

  @override
  LikeModel get like => (origin as LikePostProvider).like;
}

String _$dislikePostHash() => r'9e62bded88feb08d35fac0aab6342e6af5f196ff';

/// See also [dislikePost].
@ProviderFor(dislikePost)
const dislikePostProvider = DislikePostFamily();

/// See also [dislikePost].
class DislikePostFamily extends Family<AsyncValue<void>> {
  /// See also [dislikePost].
  const DislikePostFamily();

  /// See also [dislikePost].
  DislikePostProvider call(
    LikeModel like,
  ) {
    return DislikePostProvider(
      like,
    );
  }

  @override
  DislikePostProvider getProviderOverride(
    covariant DislikePostProvider provider,
  ) {
    return call(
      provider.like,
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
  String? get name => r'dislikePostProvider';
}

/// See also [dislikePost].
class DislikePostProvider extends AutoDisposeFutureProvider<void> {
  /// See also [dislikePost].
  DislikePostProvider(
    LikeModel like,
  ) : this._internal(
          (ref) => dislikePost(
            ref as DislikePostRef,
            like,
          ),
          from: dislikePostProvider,
          name: r'dislikePostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dislikePostHash,
          dependencies: DislikePostFamily._dependencies,
          allTransitiveDependencies:
              DislikePostFamily._allTransitiveDependencies,
          like: like,
        );

  DislikePostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.like,
  }) : super.internal();

  final LikeModel like;

  @override
  Override overrideWith(
    FutureOr<void> Function(DislikePostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DislikePostProvider._internal(
        (ref) => create(ref as DislikePostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        like: like,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DislikePostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DislikePostProvider && other.like == like;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, like.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DislikePostRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `like` of this provider.
  LikeModel get like;
}

class _DislikePostProviderElement extends AutoDisposeFutureProviderElement<void>
    with DislikePostRef {
  _DislikePostProviderElement(super.provider);

  @override
  LikeModel get like => (origin as DislikePostProvider).like;
}

String _$couterlikePostHash() => r'c980698d2a7d64026c7a0ccee5084f35dcb5e008';

/// See also [couterlikePost].
@ProviderFor(couterlikePost)
const couterlikePostProvider = CouterlikePostFamily();

/// See also [couterlikePost].
class CouterlikePostFamily extends Family<AsyncValue<Map<String, dynamic>>> {
  /// See also [couterlikePost].
  const CouterlikePostFamily();

  /// See also [couterlikePost].
  CouterlikePostProvider call(
    LikeModel like,
  ) {
    return CouterlikePostProvider(
      like,
    );
  }

  @override
  CouterlikePostProvider getProviderOverride(
    covariant CouterlikePostProvider provider,
  ) {
    return call(
      provider.like,
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
  String? get name => r'couterlikePostProvider';
}

/// See also [couterlikePost].
class CouterlikePostProvider
    extends AutoDisposeFutureProvider<Map<String, dynamic>> {
  /// See also [couterlikePost].
  CouterlikePostProvider(
    LikeModel like,
  ) : this._internal(
          (ref) => couterlikePost(
            ref as CouterlikePostRef,
            like,
          ),
          from: couterlikePostProvider,
          name: r'couterlikePostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$couterlikePostHash,
          dependencies: CouterlikePostFamily._dependencies,
          allTransitiveDependencies:
              CouterlikePostFamily._allTransitiveDependencies,
          like: like,
        );

  CouterlikePostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.like,
  }) : super.internal();

  final LikeModel like;

  @override
  Override overrideWith(
    FutureOr<Map<String, dynamic>> Function(CouterlikePostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CouterlikePostProvider._internal(
        (ref) => create(ref as CouterlikePostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        like: like,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Map<String, dynamic>> createElement() {
    return _CouterlikePostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CouterlikePostProvider && other.like == like;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, like.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CouterlikePostRef on AutoDisposeFutureProviderRef<Map<String, dynamic>> {
  /// The parameter `like` of this provider.
  LikeModel get like;
}

class _CouterlikePostProviderElement
    extends AutoDisposeFutureProviderElement<Map<String, dynamic>>
    with CouterlikePostRef {
  _CouterlikePostProviderElement(super.provider);

  @override
  LikeModel get like => (origin as CouterlikePostProvider).like;
}

String _$insertLikeHash() => r'9947d70dc585a65bc5ebc06513c65d0ebbe8b0e5';

/// See also [insertLike].
@ProviderFor(insertLike)
const insertLikeProvider = InsertLikeFamily();

/// See also [insertLike].
class InsertLikeFamily extends Family<AsyncValue<void>> {
  /// See also [insertLike].
  const InsertLikeFamily();

  /// See also [insertLike].
  InsertLikeProvider call(
    LikeModel like,
  ) {
    return InsertLikeProvider(
      like,
    );
  }

  @override
  InsertLikeProvider getProviderOverride(
    covariant InsertLikeProvider provider,
  ) {
    return call(
      provider.like,
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
  String? get name => r'insertLikeProvider';
}

/// See also [insertLike].
class InsertLikeProvider extends AutoDisposeFutureProvider<void> {
  /// See also [insertLike].
  InsertLikeProvider(
    LikeModel like,
  ) : this._internal(
          (ref) => insertLike(
            ref as InsertLikeRef,
            like,
          ),
          from: insertLikeProvider,
          name: r'insertLikeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$insertLikeHash,
          dependencies: InsertLikeFamily._dependencies,
          allTransitiveDependencies:
              InsertLikeFamily._allTransitiveDependencies,
          like: like,
        );

  InsertLikeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.like,
  }) : super.internal();

  final LikeModel like;

  @override
  Override overrideWith(
    FutureOr<void> Function(InsertLikeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InsertLikeProvider._internal(
        (ref) => create(ref as InsertLikeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        like: like,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _InsertLikeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsertLikeProvider && other.like == like;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, like.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InsertLikeRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `like` of this provider.
  LikeModel get like;
}

class _InsertLikeProviderElement extends AutoDisposeFutureProviderElement<void>
    with InsertLikeRef {
  _InsertLikeProviderElement(super.provider);

  @override
  LikeModel get like => (origin as InsertLikeProvider).like;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

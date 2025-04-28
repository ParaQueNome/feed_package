// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$findAllCommentsHash() => r'75f4e15b9962d8fd073aae788ba60667558c0226';

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

/// See also [findAllComments].
@ProviderFor(findAllComments)
const findAllCommentsProvider = FindAllCommentsFamily();

/// See also [findAllComments].
class FindAllCommentsFamily extends Family<AsyncValue<List<PostCommentModel>>> {
  /// See also [findAllComments].
  const FindAllCommentsFamily();

  /// See also [findAllComments].
  FindAllCommentsProvider call(
    int postId,
  ) {
    return FindAllCommentsProvider(
      postId,
    );
  }

  @override
  FindAllCommentsProvider getProviderOverride(
    covariant FindAllCommentsProvider provider,
  ) {
    return call(
      provider.postId,
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
  String? get name => r'findAllCommentsProvider';
}

/// See also [findAllComments].
class FindAllCommentsProvider
    extends AutoDisposeFutureProvider<List<PostCommentModel>> {
  /// See also [findAllComments].
  FindAllCommentsProvider(
    int postId,
  ) : this._internal(
          (ref) => findAllComments(
            ref as FindAllCommentsRef,
            postId,
          ),
          from: findAllCommentsProvider,
          name: r'findAllCommentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findAllCommentsHash,
          dependencies: FindAllCommentsFamily._dependencies,
          allTransitiveDependencies:
              FindAllCommentsFamily._allTransitiveDependencies,
          postId: postId,
        );

  FindAllCommentsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final int postId;

  @override
  Override overrideWith(
    FutureOr<List<PostCommentModel>> Function(FindAllCommentsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindAllCommentsProvider._internal(
        (ref) => create(ref as FindAllCommentsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<PostCommentModel>> createElement() {
    return _FindAllCommentsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindAllCommentsProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FindAllCommentsRef
    on AutoDisposeFutureProviderRef<List<PostCommentModel>> {
  /// The parameter `postId` of this provider.
  int get postId;
}

class _FindAllCommentsProviderElement
    extends AutoDisposeFutureProviderElement<List<PostCommentModel>>
    with FindAllCommentsRef {
  _FindAllCommentsProviderElement(super.provider);

  @override
  int get postId => (origin as FindAllCommentsProvider).postId;
}

String _$createCommentHash() => r'5a624b8adc314da74aca01a3790ebfca65916b02';

/// See also [createComment].
@ProviderFor(createComment)
const createCommentProvider = CreateCommentFamily();

/// See also [createComment].
class CreateCommentFamily extends Family<AsyncValue<void>> {
  /// See also [createComment].
  const CreateCommentFamily();

  /// See also [createComment].
  CreateCommentProvider call(
    PostCommentModel comment,
  ) {
    return CreateCommentProvider(
      comment,
    );
  }

  @override
  CreateCommentProvider getProviderOverride(
    covariant CreateCommentProvider provider,
  ) {
    return call(
      provider.comment,
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
  String? get name => r'createCommentProvider';
}

/// See also [createComment].
class CreateCommentProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createComment].
  CreateCommentProvider(
    PostCommentModel comment,
  ) : this._internal(
          (ref) => createComment(
            ref as CreateCommentRef,
            comment,
          ),
          from: createCommentProvider,
          name: r'createCommentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createCommentHash,
          dependencies: CreateCommentFamily._dependencies,
          allTransitiveDependencies:
              CreateCommentFamily._allTransitiveDependencies,
          comment: comment,
        );

  CreateCommentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.comment,
  }) : super.internal();

  final PostCommentModel comment;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateCommentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateCommentProvider._internal(
        (ref) => create(ref as CreateCommentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        comment: comment,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateCommentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateCommentProvider && other.comment == comment;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, comment.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateCommentRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `comment` of this provider.
  PostCommentModel get comment;
}

class _CreateCommentProviderElement
    extends AutoDisposeFutureProviderElement<void> with CreateCommentRef {
  _CreateCommentProviderElement(super.provider);

  @override
  PostCommentModel get comment => (origin as CreateCommentProvider).comment;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

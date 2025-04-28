// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentNotifierProviderHash() =>
    r'0280b032aff20d4cf508014f87d62e1136a30d50';

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

abstract class _$CommentNotifierProvider
    extends BuildlessAutoDisposeAsyncNotifier<List<PostCommentModel>> {
  late final int postId;

  FutureOr<List<PostCommentModel>> build(
    int postId,
  );
}

/// See also [CommentNotifierProvider].
@ProviderFor(CommentNotifierProvider)
const commentNotifierProviderProvider = CommentNotifierProviderFamily();

/// See also [CommentNotifierProvider].
class CommentNotifierProviderFamily
    extends Family<AsyncValue<List<PostCommentModel>>> {
  /// See also [CommentNotifierProvider].
  const CommentNotifierProviderFamily();

  /// See also [CommentNotifierProvider].
  CommentNotifierProviderProvider call(
    int postId,
  ) {
    return CommentNotifierProviderProvider(
      postId,
    );
  }

  @override
  CommentNotifierProviderProvider getProviderOverride(
    covariant CommentNotifierProviderProvider provider,
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
  String? get name => r'commentNotifierProviderProvider';
}

/// See also [CommentNotifierProvider].
class CommentNotifierProviderProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CommentNotifierProvider,
        List<PostCommentModel>> {
  /// See also [CommentNotifierProvider].
  CommentNotifierProviderProvider(
    int postId,
  ) : this._internal(
          () => CommentNotifierProvider()..postId = postId,
          from: commentNotifierProviderProvider,
          name: r'commentNotifierProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentNotifierProviderHash,
          dependencies: CommentNotifierProviderFamily._dependencies,
          allTransitiveDependencies:
              CommentNotifierProviderFamily._allTransitiveDependencies,
          postId: postId,
        );

  CommentNotifierProviderProvider._internal(
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
  FutureOr<List<PostCommentModel>> runNotifierBuild(
    covariant CommentNotifierProvider notifier,
  ) {
    return notifier.build(
      postId,
    );
  }

  @override
  Override overrideWith(CommentNotifierProvider Function() create) {
    return ProviderOverride(
      origin: this,
      override: CommentNotifierProviderProvider._internal(
        () => create()..postId = postId,
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
  AutoDisposeAsyncNotifierProviderElement<CommentNotifierProvider,
      List<PostCommentModel>> createElement() {
    return _CommentNotifierProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommentNotifierProviderProvider && other.postId == postId;
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
mixin CommentNotifierProviderRef
    on AutoDisposeAsyncNotifierProviderRef<List<PostCommentModel>> {
  /// The parameter `postId` of this provider.
  int get postId;
}

class _CommentNotifierProviderProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CommentNotifierProvider,
        List<PostCommentModel>> with CommentNotifierProviderRef {
  _CommentNotifierProviderProviderElement(super.provider);

  @override
  int get postId => (origin as CommentNotifierProviderProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

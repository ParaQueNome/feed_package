// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bucket_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getFileUrlHash() => r'45bffd7c2367b0dc0e806159f14555df9c7b4916';

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

/// See also [getFileUrl].
@ProviderFor(getFileUrl)
const getFileUrlProvider = GetFileUrlFamily();

/// See also [getFileUrl].
class GetFileUrlFamily extends Family<AsyncValue<String>> {
  /// See also [getFileUrl].
  const GetFileUrlFamily();

  /// See also [getFileUrl].
  GetFileUrlProvider call(
    String filePathBucket,
  ) {
    return GetFileUrlProvider(
      filePathBucket,
    );
  }

  @override
  GetFileUrlProvider getProviderOverride(
    covariant GetFileUrlProvider provider,
  ) {
    return call(
      provider.filePathBucket,
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
  String? get name => r'getFileUrlProvider';
}

/// See also [getFileUrl].
class GetFileUrlProvider extends AutoDisposeFutureProvider<String> {
  /// See also [getFileUrl].
  GetFileUrlProvider(
    String filePathBucket,
  ) : this._internal(
          (ref) => getFileUrl(
            ref as GetFileUrlRef,
            filePathBucket,
          ),
          from: getFileUrlProvider,
          name: r'getFileUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getFileUrlHash,
          dependencies: GetFileUrlFamily._dependencies,
          allTransitiveDependencies:
              GetFileUrlFamily._allTransitiveDependencies,
          filePathBucket: filePathBucket,
        );

  GetFileUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filePathBucket,
  }) : super.internal();

  final String filePathBucket;

  @override
  Override overrideWith(
    FutureOr<String> Function(GetFileUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetFileUrlProvider._internal(
        (ref) => create(ref as GetFileUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filePathBucket: filePathBucket,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _GetFileUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetFileUrlProvider &&
        other.filePathBucket == filePathBucket;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filePathBucket.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetFileUrlRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `filePathBucket` of this provider.
  String get filePathBucket;
}

class _GetFileUrlProviderElement
    extends AutoDisposeFutureProviderElement<String> with GetFileUrlRef {
  _GetFileUrlProviderElement(super.provider);

  @override
  String get filePathBucket => (origin as GetFileUrlProvider).filePathBucket;
}

String _$uploadFileHash() => r'c5e494ce84037089dc1ae1c2de8f6032c5d8620a';

/// See also [uploadFile].
@ProviderFor(uploadFile)
const uploadFileProvider = UploadFileFamily();

/// See also [uploadFile].
class UploadFileFamily extends Family<AsyncValue<String>> {
  /// See also [uploadFile].
  const UploadFileFamily();

  /// See also [uploadFile].
  UploadFileProvider call(
    File file,
  ) {
    return UploadFileProvider(
      file,
    );
  }

  @override
  UploadFileProvider getProviderOverride(
    covariant UploadFileProvider provider,
  ) {
    return call(
      provider.file,
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
  String? get name => r'uploadFileProvider';
}

/// See also [uploadFile].
class UploadFileProvider extends AutoDisposeFutureProvider<String> {
  /// See also [uploadFile].
  UploadFileProvider(
    File file,
  ) : this._internal(
          (ref) => uploadFile(
            ref as UploadFileRef,
            file,
          ),
          from: uploadFileProvider,
          name: r'uploadFileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$uploadFileHash,
          dependencies: UploadFileFamily._dependencies,
          allTransitiveDependencies:
              UploadFileFamily._allTransitiveDependencies,
          file: file,
        );

  UploadFileProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.file,
  }) : super.internal();

  final File file;

  @override
  Override overrideWith(
    FutureOr<String> Function(UploadFileRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UploadFileProvider._internal(
        (ref) => create(ref as UploadFileRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        file: file,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _UploadFileProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UploadFileProvider && other.file == file;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, file.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UploadFileRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `file` of this provider.
  File get file;
}

class _UploadFileProviderElement
    extends AutoDisposeFutureProviderElement<String> with UploadFileRef {
  _UploadFileProviderElement(super.provider);

  @override
  File get file => (origin as UploadFileProvider).file;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

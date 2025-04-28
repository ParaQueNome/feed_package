// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StorageModel _$StorageModelFromJson(Map<String, dynamic> json) {
  return _StorageModel.fromJson(json);
}

/// @nodoc
mixin _$StorageModel {
  @JsonKey(name: 'storage_id')
  int? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_post_id')
  int get fkPostId => throw _privateConstructorUsedError;

  /// Serializes this StorageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StorageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StorageModelCopyWith<StorageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageModelCopyWith<$Res> {
  factory $StorageModelCopyWith(
          StorageModel value, $Res Function(StorageModel) then) =
      _$StorageModelCopyWithImpl<$Res, StorageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'storage_id') int? id,
      String? url,
      @JsonKey(name: 'fk_post_id') int fkPostId});
}

/// @nodoc
class _$StorageModelCopyWithImpl<$Res, $Val extends StorageModel>
    implements $StorageModelCopyWith<$Res> {
  _$StorageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StorageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? fkPostId = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      fkPostId: null == fkPostId
          ? _value.fkPostId
          : fkPostId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StorageModelImplCopyWith<$Res>
    implements $StorageModelCopyWith<$Res> {
  factory _$$StorageModelImplCopyWith(
          _$StorageModelImpl value, $Res Function(_$StorageModelImpl) then) =
      __$$StorageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'storage_id') int? id,
      String? url,
      @JsonKey(name: 'fk_post_id') int fkPostId});
}

/// @nodoc
class __$$StorageModelImplCopyWithImpl<$Res>
    extends _$StorageModelCopyWithImpl<$Res, _$StorageModelImpl>
    implements _$$StorageModelImplCopyWith<$Res> {
  __$$StorageModelImplCopyWithImpl(
      _$StorageModelImpl _value, $Res Function(_$StorageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? fkPostId = null,
  }) {
    return _then(_$StorageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      fkPostId: null == fkPostId
          ? _value.fkPostId
          : fkPostId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorageModelImpl implements _StorageModel {
  _$StorageModelImpl(
      {@JsonKey(name: 'storage_id') this.id,
      this.url,
      @JsonKey(name: 'fk_post_id') required this.fkPostId});

  factory _$StorageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StorageModelImplFromJson(json);

  @override
  @JsonKey(name: 'storage_id')
  final int? id;
  @override
  final String? url;
  @override
  @JsonKey(name: 'fk_post_id')
  final int fkPostId;

  @override
  String toString() {
    return 'StorageModel(id: $id, url: $url, fkPostId: $fkPostId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.fkPostId, fkPostId) ||
                other.fkPostId == fkPostId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, fkPostId);

  /// Create a copy of StorageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageModelImplCopyWith<_$StorageModelImpl> get copyWith =>
      __$$StorageModelImplCopyWithImpl<_$StorageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StorageModelImplToJson(
      this,
    );
  }
}

abstract class _StorageModel implements StorageModel {
  factory _StorageModel(
          {@JsonKey(name: 'storage_id') final int? id,
          final String? url,
          @JsonKey(name: 'fk_post_id') required final int fkPostId}) =
      _$StorageModelImpl;

  factory _StorageModel.fromJson(Map<String, dynamic> json) =
      _$StorageModelImpl.fromJson;

  @override
  @JsonKey(name: 'storage_id')
  int? get id;
  @override
  String? get url;
  @override
  @JsonKey(name: 'fk_post_id')
  int get fkPostId;

  /// Create a copy of StorageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorageModelImplCopyWith<_$StorageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

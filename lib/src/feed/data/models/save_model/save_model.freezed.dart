// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveModel _$SaveModelFromJson(Map<String, dynamic> json) {
  return _SaveModel.fromJson(json);
}

/// @nodoc
mixin _$SaveModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_post_id')
  int get postId => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;

  /// Serializes this SaveModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaveModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveModelCopyWith<SaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveModelCopyWith<$Res> {
  factory $SaveModelCopyWith(SaveModel value, $Res Function(SaveModel) then) =
      _$SaveModelCopyWithImpl<$Res, SaveModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'fk_user_id') int userId,
      @JsonKey(name: 'fk_post_id') int postId,
      bool saved});
}

/// @nodoc
class _$SaveModelCopyWithImpl<$Res, $Val extends SaveModel>
    implements $SaveModelCopyWith<$Res> {
  _$SaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? postId = null,
    Object? saved = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveModelImplCopyWith<$Res>
    implements $SaveModelCopyWith<$Res> {
  factory _$$SaveModelImplCopyWith(
          _$SaveModelImpl value, $Res Function(_$SaveModelImpl) then) =
      __$$SaveModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'fk_user_id') int userId,
      @JsonKey(name: 'fk_post_id') int postId,
      bool saved});
}

/// @nodoc
class __$$SaveModelImplCopyWithImpl<$Res>
    extends _$SaveModelCopyWithImpl<$Res, _$SaveModelImpl>
    implements _$$SaveModelImplCopyWith<$Res> {
  __$$SaveModelImplCopyWithImpl(
      _$SaveModelImpl _value, $Res Function(_$SaveModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? postId = null,
    Object? saved = null,
  }) {
    return _then(_$SaveModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveModelImpl implements _SaveModel {
  _$SaveModelImpl(
      {this.id,
      @JsonKey(name: 'fk_user_id') required this.userId,
      @JsonKey(name: 'fk_post_id') required this.postId,
      required this.saved});

  factory _$SaveModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'fk_user_id')
  final int userId;
  @override
  @JsonKey(name: 'fk_post_id')
  final int postId;
  @override
  final bool saved;

  @override
  String toString() {
    return 'SaveModel(id: $id, userId: $userId, postId: $postId, saved: $saved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.saved, saved) || other.saved == saved));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, postId, saved);

  /// Create a copy of SaveModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveModelImplCopyWith<_$SaveModelImpl> get copyWith =>
      __$$SaveModelImplCopyWithImpl<_$SaveModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveModelImplToJson(
      this,
    );
  }
}

abstract class _SaveModel implements SaveModel {
  factory _SaveModel(
      {final int? id,
      @JsonKey(name: 'fk_user_id') required final int userId,
      @JsonKey(name: 'fk_post_id') required final int postId,
      required final bool saved}) = _$SaveModelImpl;

  factory _SaveModel.fromJson(Map<String, dynamic> json) =
      _$SaveModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'fk_user_id')
  int get userId;
  @override
  @JsonKey(name: 'fk_post_id')
  int get postId;
  @override
  bool get saved;

  /// Create a copy of SaveModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveModelImplCopyWith<_$SaveModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostCommentModel _$PostCommentModelFromJson(Map<String, dynamic> json) {
  return _PostCommentModel.fromJson(json);
}

/// @nodoc
mixin _$PostCommentModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_user_id')
  int get fkUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_post_id')
  int get fkPostId => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  String get hora => throw _privateConstructorUsedError;
  String get descricao => throw _privateConstructorUsedError;
  UserModel? get profile => throw _privateConstructorUsedError;

  /// Serializes this PostCommentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCommentModelCopyWith<PostCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentModelCopyWith<$Res> {
  factory $PostCommentModelCopyWith(
          PostCommentModel value, $Res Function(PostCommentModel) then) =
      _$PostCommentModelCopyWithImpl<$Res, PostCommentModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'fk_user_id') int fkUserId,
      @JsonKey(name: 'fk_post_id') int fkPostId,
      String data,
      String hora,
      String descricao,
      UserModel? profile});

  $UserModelCopyWith<$Res>? get profile;
}

/// @nodoc
class _$PostCommentModelCopyWithImpl<$Res, $Val extends PostCommentModel>
    implements $PostCommentModelCopyWith<$Res> {
  _$PostCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fkUserId = null,
    Object? fkPostId = null,
    Object? data = null,
    Object? hora = null,
    Object? descricao = null,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fkUserId: null == fkUserId
          ? _value.fkUserId
          : fkUserId // ignore: cast_nullable_to_non_nullable
              as int,
      fkPostId: null == fkPostId
          ? _value.fkPostId
          : fkPostId // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      hora: null == hora
          ? _value.hora
          : hora // ignore: cast_nullable_to_non_nullable
              as String,
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  /// Create a copy of PostCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostCommentModelImplCopyWith<$Res>
    implements $PostCommentModelCopyWith<$Res> {
  factory _$$PostCommentModelImplCopyWith(_$PostCommentModelImpl value,
          $Res Function(_$PostCommentModelImpl) then) =
      __$$PostCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'fk_user_id') int fkUserId,
      @JsonKey(name: 'fk_post_id') int fkPostId,
      String data,
      String hora,
      String descricao,
      UserModel? profile});

  @override
  $UserModelCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$PostCommentModelImplCopyWithImpl<$Res>
    extends _$PostCommentModelCopyWithImpl<$Res, _$PostCommentModelImpl>
    implements _$$PostCommentModelImplCopyWith<$Res> {
  __$$PostCommentModelImplCopyWithImpl(_$PostCommentModelImpl _value,
      $Res Function(_$PostCommentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fkUserId = null,
    Object? fkPostId = null,
    Object? data = null,
    Object? hora = null,
    Object? descricao = null,
    Object? profile = freezed,
  }) {
    return _then(_$PostCommentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fkUserId: null == fkUserId
          ? _value.fkUserId
          : fkUserId // ignore: cast_nullable_to_non_nullable
              as int,
      fkPostId: null == fkPostId
          ? _value.fkPostId
          : fkPostId // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      hora: null == hora
          ? _value.hora
          : hora // ignore: cast_nullable_to_non_nullable
              as String,
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostCommentModelImpl implements _PostCommentModel {
  _$PostCommentModelImpl(
      {this.id,
      @JsonKey(name: 'fk_user_id') required this.fkUserId,
      @JsonKey(name: 'fk_post_id') required this.fkPostId,
      required this.data,
      required this.hora,
      required this.descricao,
      this.profile});

  factory _$PostCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCommentModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'fk_user_id')
  final int fkUserId;
  @override
  @JsonKey(name: 'fk_post_id')
  final int fkPostId;
  @override
  final String data;
  @override
  final String hora;
  @override
  final String descricao;
  @override
  final UserModel? profile;

  @override
  String toString() {
    return 'PostCommentModel(id: $id, fkUserId: $fkUserId, fkPostId: $fkPostId, data: $data, hora: $hora, descricao: $descricao, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fkUserId, fkUserId) ||
                other.fkUserId == fkUserId) &&
            (identical(other.fkPostId, fkPostId) ||
                other.fkPostId == fkPostId) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.hora, hora) || other.hora == hora) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fkUserId, fkPostId, data, hora, descricao, profile);

  /// Create a copy of PostCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentModelImplCopyWith<_$PostCommentModelImpl> get copyWith =>
      __$$PostCommentModelImplCopyWithImpl<_$PostCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCommentModelImplToJson(
      this,
    );
  }
}

abstract class _PostCommentModel implements PostCommentModel {
  factory _PostCommentModel(
      {final int? id,
      @JsonKey(name: 'fk_user_id') required final int fkUserId,
      @JsonKey(name: 'fk_post_id') required final int fkPostId,
      required final String data,
      required final String hora,
      required final String descricao,
      final UserModel? profile}) = _$PostCommentModelImpl;

  factory _PostCommentModel.fromJson(Map<String, dynamic> json) =
      _$PostCommentModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'fk_user_id')
  int get fkUserId;
  @override
  @JsonKey(name: 'fk_post_id')
  int get fkPostId;
  @override
  String get data;
  @override
  String get hora;
  @override
  String get descricao;
  @override
  UserModel? get profile;

  /// Create a copy of PostCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCommentModelImplCopyWith<_$PostCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mural_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MuralModel _$MuralModelFromJson(Map<String, dynamic> json) {
  return _MuralModel.fromJson(json);
}

/// @nodoc
mixin _$MuralModel {
  int? get id => throw _privateConstructorUsedError;
  String get titulo => throw _privateConstructorUsedError;
  String get descricao => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  String get hora => throw _privateConstructorUsedError;
  int get cor => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_user_id')
  int get fkUserId => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  /// Serializes this MuralModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MuralModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MuralModelCopyWith<MuralModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuralModelCopyWith<$Res> {
  factory $MuralModelCopyWith(
          MuralModel value, $Res Function(MuralModel) then) =
      _$MuralModelCopyWithImpl<$Res, MuralModel>;
  @useResult
  $Res call(
      {int? id,
      String titulo,
      String descricao,
      String data,
      String hora,
      int cor,
      @JsonKey(name: 'fk_user_id') int fkUserId,
      UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$MuralModelCopyWithImpl<$Res, $Val extends MuralModel>
    implements $MuralModelCopyWith<$Res> {
  _$MuralModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MuralModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? titulo = null,
    Object? descricao = null,
    Object? data = null,
    Object? hora = null,
    Object? cor = null,
    Object? fkUserId = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      titulo: null == titulo
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      hora: null == hora
          ? _value.hora
          : hora // ignore: cast_nullable_to_non_nullable
              as String,
      cor: null == cor
          ? _value.cor
          : cor // ignore: cast_nullable_to_non_nullable
              as int,
      fkUserId: null == fkUserId
          ? _value.fkUserId
          : fkUserId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  /// Create a copy of MuralModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MuralModelImplCopyWith<$Res>
    implements $MuralModelCopyWith<$Res> {
  factory _$$MuralModelImplCopyWith(
          _$MuralModelImpl value, $Res Function(_$MuralModelImpl) then) =
      __$$MuralModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String titulo,
      String descricao,
      String data,
      String hora,
      int cor,
      @JsonKey(name: 'fk_user_id') int fkUserId,
      UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$MuralModelImplCopyWithImpl<$Res>
    extends _$MuralModelCopyWithImpl<$Res, _$MuralModelImpl>
    implements _$$MuralModelImplCopyWith<$Res> {
  __$$MuralModelImplCopyWithImpl(
      _$MuralModelImpl _value, $Res Function(_$MuralModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MuralModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? titulo = null,
    Object? descricao = null,
    Object? data = null,
    Object? hora = null,
    Object? cor = null,
    Object? fkUserId = null,
    Object? user = freezed,
  }) {
    return _then(_$MuralModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      titulo: null == titulo
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      hora: null == hora
          ? _value.hora
          : hora // ignore: cast_nullable_to_non_nullable
              as String,
      cor: null == cor
          ? _value.cor
          : cor // ignore: cast_nullable_to_non_nullable
              as int,
      fkUserId: null == fkUserId
          ? _value.fkUserId
          : fkUserId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MuralModelImpl implements _MuralModel {
  _$MuralModelImpl(
      {this.id,
      required this.titulo,
      required this.descricao,
      required this.data,
      required this.hora,
      required this.cor,
      @JsonKey(name: 'fk_user_id') required this.fkUserId,
      this.user});

  factory _$MuralModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuralModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String titulo;
  @override
  final String descricao;
  @override
  final String data;
  @override
  final String hora;
  @override
  final int cor;
  @override
  @JsonKey(name: 'fk_user_id')
  final int fkUserId;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'MuralModel(id: $id, titulo: $titulo, descricao: $descricao, data: $data, hora: $hora, cor: $cor, fkUserId: $fkUserId, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuralModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.titulo, titulo) || other.titulo == titulo) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.hora, hora) || other.hora == hora) &&
            (identical(other.cor, cor) || other.cor == cor) &&
            (identical(other.fkUserId, fkUserId) ||
                other.fkUserId == fkUserId) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, titulo, descricao, data, hora, cor, fkUserId, user);

  /// Create a copy of MuralModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MuralModelImplCopyWith<_$MuralModelImpl> get copyWith =>
      __$$MuralModelImplCopyWithImpl<_$MuralModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MuralModelImplToJson(
      this,
    );
  }
}

abstract class _MuralModel implements MuralModel {
  factory _MuralModel(
      {final int? id,
      required final String titulo,
      required final String descricao,
      required final String data,
      required final String hora,
      required final int cor,
      @JsonKey(name: 'fk_user_id') required final int fkUserId,
      final UserModel? user}) = _$MuralModelImpl;

  factory _MuralModel.fromJson(Map<String, dynamic> json) =
      _$MuralModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get titulo;
  @override
  String get descricao;
  @override
  String get data;
  @override
  String get hora;
  @override
  int get cor;
  @override
  @JsonKey(name: 'fk_user_id')
  int get fkUserId;
  @override
  UserModel? get user;

  /// Create a copy of MuralModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MuralModelImplCopyWith<_$MuralModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

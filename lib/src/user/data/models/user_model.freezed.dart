// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int? get id => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  @JsonKey(name: 'url_avatar')
  String? get urlAvatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_nascimento')
  String get dataNascimento => throw _privateConstructorUsedError;
  String? get logradouro => throw _privateConstructorUsedError;
  String? get bairro => throw _privateConstructorUsedError;
  String? get cidade => throw _privateConstructorUsedError;
  String? get cep => throw _privateConstructorUsedError;
  @JsonKey(name: 'numero_casa')
  int? get numeroCasa => throw _privateConstructorUsedError;
  String? get telefone => throw _privateConstructorUsedError;
  String? get estado => throw _privateConstructorUsedError;
  bool get admin => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_login_id')
  int? get fkLoginId => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int? id,
      String nome,
      @JsonKey(name: 'url_avatar') String? urlAvatar,
      @JsonKey(name: 'data_nascimento') String dataNascimento,
      String? logradouro,
      String? bairro,
      String? cidade,
      String? cep,
      @JsonKey(name: 'numero_casa') int? numeroCasa,
      String? telefone,
      String? estado,
      bool admin,
      @JsonKey(name: 'fk_login_id') int? fkLoginId});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = null,
    Object? urlAvatar = freezed,
    Object? dataNascimento = null,
    Object? logradouro = freezed,
    Object? bairro = freezed,
    Object? cidade = freezed,
    Object? cep = freezed,
    Object? numeroCasa = freezed,
    Object? telefone = freezed,
    Object? estado = freezed,
    Object? admin = null,
    Object? fkLoginId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      urlAvatar: freezed == urlAvatar
          ? _value.urlAvatar
          : urlAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNascimento: null == dataNascimento
          ? _value.dataNascimento
          : dataNascimento // ignore: cast_nullable_to_non_nullable
              as String,
      logradouro: freezed == logradouro
          ? _value.logradouro
          : logradouro // ignore: cast_nullable_to_non_nullable
              as String?,
      bairro: freezed == bairro
          ? _value.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as String?,
      cidade: freezed == cidade
          ? _value.cidade
          : cidade // ignore: cast_nullable_to_non_nullable
              as String?,
      cep: freezed == cep
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String?,
      numeroCasa: freezed == numeroCasa
          ? _value.numeroCasa
          : numeroCasa // ignore: cast_nullable_to_non_nullable
              as int?,
      telefone: freezed == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as String?,
      estado: freezed == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
      fkLoginId: freezed == fkLoginId
          ? _value.fkLoginId
          : fkLoginId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String nome,
      @JsonKey(name: 'url_avatar') String? urlAvatar,
      @JsonKey(name: 'data_nascimento') String dataNascimento,
      String? logradouro,
      String? bairro,
      String? cidade,
      String? cep,
      @JsonKey(name: 'numero_casa') int? numeroCasa,
      String? telefone,
      String? estado,
      bool admin,
      @JsonKey(name: 'fk_login_id') int? fkLoginId});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = null,
    Object? urlAvatar = freezed,
    Object? dataNascimento = null,
    Object? logradouro = freezed,
    Object? bairro = freezed,
    Object? cidade = freezed,
    Object? cep = freezed,
    Object? numeroCasa = freezed,
    Object? telefone = freezed,
    Object? estado = freezed,
    Object? admin = null,
    Object? fkLoginId = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      urlAvatar: freezed == urlAvatar
          ? _value.urlAvatar
          : urlAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNascimento: null == dataNascimento
          ? _value.dataNascimento
          : dataNascimento // ignore: cast_nullable_to_non_nullable
              as String,
      logradouro: freezed == logradouro
          ? _value.logradouro
          : logradouro // ignore: cast_nullable_to_non_nullable
              as String?,
      bairro: freezed == bairro
          ? _value.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as String?,
      cidade: freezed == cidade
          ? _value.cidade
          : cidade // ignore: cast_nullable_to_non_nullable
              as String?,
      cep: freezed == cep
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String?,
      numeroCasa: freezed == numeroCasa
          ? _value.numeroCasa
          : numeroCasa // ignore: cast_nullable_to_non_nullable
              as int?,
      telefone: freezed == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as String?,
      estado: freezed == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
      fkLoginId: freezed == fkLoginId
          ? _value.fkLoginId
          : fkLoginId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {this.id,
      required this.nome,
      @JsonKey(name: 'url_avatar') this.urlAvatar,
      @JsonKey(name: 'data_nascimento') required this.dataNascimento,
      required this.logradouro,
      required this.bairro,
      required this.cidade,
      required this.cep,
      @JsonKey(name: 'numero_casa') required this.numeroCasa,
      required this.telefone,
      required this.estado,
      required this.admin,
      @JsonKey(name: 'fk_login_id') required this.fkLoginId});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String nome;
  @override
  @JsonKey(name: 'url_avatar')
  final String? urlAvatar;
  @override
  @JsonKey(name: 'data_nascimento')
  final String dataNascimento;
  @override
  final String? logradouro;
  @override
  final String? bairro;
  @override
  final String? cidade;
  @override
  final String? cep;
  @override
  @JsonKey(name: 'numero_casa')
  final int? numeroCasa;
  @override
  final String? telefone;
  @override
  final String? estado;
  @override
  final bool admin;
  @override
  @JsonKey(name: 'fk_login_id')
  final int? fkLoginId;

  @override
  String toString() {
    return 'UserModel(id: $id, nome: $nome, urlAvatar: $urlAvatar, dataNascimento: $dataNascimento, logradouro: $logradouro, bairro: $bairro, cidade: $cidade, cep: $cep, numeroCasa: $numeroCasa, telefone: $telefone, estado: $estado, admin: $admin, fkLoginId: $fkLoginId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.urlAvatar, urlAvatar) ||
                other.urlAvatar == urlAvatar) &&
            (identical(other.dataNascimento, dataNascimento) ||
                other.dataNascimento == dataNascimento) &&
            (identical(other.logradouro, logradouro) ||
                other.logradouro == logradouro) &&
            (identical(other.bairro, bairro) || other.bairro == bairro) &&
            (identical(other.cidade, cidade) || other.cidade == cidade) &&
            (identical(other.cep, cep) || other.cep == cep) &&
            (identical(other.numeroCasa, numeroCasa) ||
                other.numeroCasa == numeroCasa) &&
            (identical(other.telefone, telefone) ||
                other.telefone == telefone) &&
            (identical(other.estado, estado) || other.estado == estado) &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.fkLoginId, fkLoginId) ||
                other.fkLoginId == fkLoginId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nome,
      urlAvatar,
      dataNascimento,
      logradouro,
      bairro,
      cidade,
      cep,
      numeroCasa,
      telefone,
      estado,
      admin,
      fkLoginId);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {final int? id,
      required final String nome,
      @JsonKey(name: 'url_avatar') final String? urlAvatar,
      @JsonKey(name: 'data_nascimento') required final String dataNascimento,
      required final String? logradouro,
      required final String? bairro,
      required final String? cidade,
      required final String? cep,
      @JsonKey(name: 'numero_casa') required final int? numeroCasa,
      required final String? telefone,
      required final String? estado,
      required final bool admin,
      @JsonKey(name: 'fk_login_id')
      required final int? fkLoginId}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get nome;
  @override
  @JsonKey(name: 'url_avatar')
  String? get urlAvatar;
  @override
  @JsonKey(name: 'data_nascimento')
  String get dataNascimento;
  @override
  String? get logradouro;
  @override
  String? get bairro;
  @override
  String? get cidade;
  @override
  String? get cep;
  @override
  @JsonKey(name: 'numero_casa')
  int? get numeroCasa;
  @override
  String? get telefone;
  @override
  String? get estado;
  @override
  bool get admin;
  @override
  @JsonKey(name: 'fk_login_id')
  int? get fkLoginId;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

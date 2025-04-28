// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedModel _$FeedModelFromJson(Map<String, dynamic> json) {
  return _FeedModel.fromJson(json);
}

/// @nodoc
mixin _$FeedModel {
  int? get id => throw _privateConstructorUsedError;
  String get titulo => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  String get hora => throw _privateConstructorUsedError;
  String get descricao => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_user_id')
  int get fkUserId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get autor => throw _privateConstructorUsedError;
  String? get urlavatar =>
      throw _privateConstructorUsedError; // Associando tabela User para resgatar o autor do post
  bool? get devocional => throw _privateConstructorUsedError;

  /// Serializes this FeedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedModelCopyWith<FeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedModelCopyWith<$Res> {
  factory $FeedModelCopyWith(FeedModel value, $Res Function(FeedModel) then) =
      _$FeedModelCopyWithImpl<$Res, FeedModel>;
  @useResult
  $Res call(
      {int? id,
      String titulo,
      String data,
      String hora,
      String descricao,
      @JsonKey(name: 'fk_user_id') int fkUserId,
      String? url,
      String? autor,
      String? urlavatar,
      bool? devocional});
}

/// @nodoc
class _$FeedModelCopyWithImpl<$Res, $Val extends FeedModel>
    implements $FeedModelCopyWith<$Res> {
  _$FeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? titulo = null,
    Object? data = null,
    Object? hora = null,
    Object? descricao = null,
    Object? fkUserId = null,
    Object? url = freezed,
    Object? autor = freezed,
    Object? urlavatar = freezed,
    Object? devocional = freezed,
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
      fkUserId: null == fkUserId
          ? _value.fkUserId
          : fkUserId // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      autor: freezed == autor
          ? _value.autor
          : autor // ignore: cast_nullable_to_non_nullable
              as String?,
      urlavatar: freezed == urlavatar
          ? _value.urlavatar
          : urlavatar // ignore: cast_nullable_to_non_nullable
              as String?,
      devocional: freezed == devocional
          ? _value.devocional
          : devocional // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedModelImplCopyWith<$Res>
    implements $FeedModelCopyWith<$Res> {
  factory _$$FeedModelImplCopyWith(
          _$FeedModelImpl value, $Res Function(_$FeedModelImpl) then) =
      __$$FeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String titulo,
      String data,
      String hora,
      String descricao,
      @JsonKey(name: 'fk_user_id') int fkUserId,
      String? url,
      String? autor,
      String? urlavatar,
      bool? devocional});
}

/// @nodoc
class __$$FeedModelImplCopyWithImpl<$Res>
    extends _$FeedModelCopyWithImpl<$Res, _$FeedModelImpl>
    implements _$$FeedModelImplCopyWith<$Res> {
  __$$FeedModelImplCopyWithImpl(
      _$FeedModelImpl _value, $Res Function(_$FeedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? titulo = null,
    Object? data = null,
    Object? hora = null,
    Object? descricao = null,
    Object? fkUserId = null,
    Object? url = freezed,
    Object? autor = freezed,
    Object? urlavatar = freezed,
    Object? devocional = freezed,
  }) {
    return _then(_$FeedModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      titulo: null == titulo
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
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
      fkUserId: null == fkUserId
          ? _value.fkUserId
          : fkUserId // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      autor: freezed == autor
          ? _value.autor
          : autor // ignore: cast_nullable_to_non_nullable
              as String?,
      urlavatar: freezed == urlavatar
          ? _value.urlavatar
          : urlavatar // ignore: cast_nullable_to_non_nullable
              as String?,
      devocional: freezed == devocional
          ? _value.devocional
          : devocional // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedModelImpl implements _FeedModel {
  _$FeedModelImpl(
      {this.id,
      required this.titulo,
      required this.data,
      required this.hora,
      required this.descricao,
      @JsonKey(name: 'fk_user_id') required this.fkUserId,
      this.url,
      this.autor,
      this.urlavatar,
      this.devocional});

  factory _$FeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String titulo;
  @override
  final String data;
  @override
  final String hora;
  @override
  final String descricao;
  @override
  @JsonKey(name: 'fk_user_id')
  final int fkUserId;
  @override
  final String? url;
  @override
  final String? autor;
  @override
  final String? urlavatar;
// Associando tabela User para resgatar o autor do post
  @override
  final bool? devocional;

  @override
  String toString() {
    return 'FeedModel(id: $id, titulo: $titulo, data: $data, hora: $hora, descricao: $descricao, fkUserId: $fkUserId, url: $url, autor: $autor, urlavatar: $urlavatar, devocional: $devocional)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.titulo, titulo) || other.titulo == titulo) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.hora, hora) || other.hora == hora) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.fkUserId, fkUserId) ||
                other.fkUserId == fkUserId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.autor, autor) || other.autor == autor) &&
            (identical(other.urlavatar, urlavatar) ||
                other.urlavatar == urlavatar) &&
            (identical(other.devocional, devocional) ||
                other.devocional == devocional));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, titulo, data, hora,
      descricao, fkUserId, url, autor, urlavatar, devocional);

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedModelImplCopyWith<_$FeedModelImpl> get copyWith =>
      __$$FeedModelImplCopyWithImpl<_$FeedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedModelImplToJson(
      this,
    );
  }
}

abstract class _FeedModel implements FeedModel {
  factory _FeedModel(
      {final int? id,
      required final String titulo,
      required final String data,
      required final String hora,
      required final String descricao,
      @JsonKey(name: 'fk_user_id') required final int fkUserId,
      final String? url,
      final String? autor,
      final String? urlavatar,
      final bool? devocional}) = _$FeedModelImpl;

  factory _FeedModel.fromJson(Map<String, dynamic> json) =
      _$FeedModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get titulo;
  @override
  String get data;
  @override
  String get hora;
  @override
  String get descricao;
  @override
  @JsonKey(name: 'fk_user_id')
  int get fkUserId;
  @override
  String? get url;
  @override
  String? get autor;
  @override
  String? get urlavatar; // Associando tabela User para resgatar o autor do post
  @override
  bool? get devocional;

  /// Create a copy of FeedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedModelImplCopyWith<_$FeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mural_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MuralModelImpl _$$MuralModelImplFromJson(Map<String, dynamic> json) =>
    _$MuralModelImpl(
      id: (json['id'] as num?)?.toInt(),
      titulo: json['titulo'] as String,
      descricao: json['descricao'] as String,
      data: json['data'] as String,
      hora: json['hora'] as String,
      cor: (json['cor'] as num).toInt(),
      fkUserId: (json['fk_user_id'] as num).toInt(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MuralModelImplToJson(_$MuralModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'titulo': instance.titulo,
      'descricao': instance.descricao,
      'data': instance.data,
      'hora': instance.hora,
      'cor': instance.cor,
      'fk_user_id': instance.fkUserId,
      'user': instance.user,
    };

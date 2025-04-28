// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedModelImpl _$$FeedModelImplFromJson(Map<String, dynamic> json) =>
    _$FeedModelImpl(
      id: (json['id'] as num?)?.toInt(),
      titulo: json['titulo'] as String,
      data: json['data'] as String,
      hora: json['hora'] as String,
      descricao: json['descricao'] as String,
      fkUserId: (json['fk_user_id'] as num).toInt(),
      url: json['url'] as String?,
      autor: json['autor'] as String?,
      urlavatar: json['urlavatar'] as String?,
      devocional: json['devocional'] as bool?,
    );

Map<String, dynamic> _$$FeedModelImplToJson(_$FeedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'titulo': instance.titulo,
      'data': instance.data,
      'hora': instance.hora,
      'descricao': instance.descricao,
      'fk_user_id': instance.fkUserId,
      'url': instance.url,
      'autor': instance.autor,
      'urlavatar': instance.urlavatar,
      'devocional': instance.devocional,
    };

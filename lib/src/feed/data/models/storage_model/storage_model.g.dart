// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StorageModelImpl _$$StorageModelImplFromJson(Map<String, dynamic> json) =>
    _$StorageModelImpl(
      id: (json['storage_id'] as num?)?.toInt(),
      url: json['url'] as String?,
      fkPostId: (json['fk_post_id'] as num).toInt(),
    );

Map<String, dynamic> _$$StorageModelImplToJson(_$StorageModelImpl instance) =>
    <String, dynamic>{
      'storage_id': instance.id,
      'url': instance.url,
      'fk_post_id': instance.fkPostId,
    };

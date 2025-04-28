// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveModelImpl _$$SaveModelImplFromJson(Map<String, dynamic> json) =>
    _$SaveModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['fk_user_id'] as num).toInt(),
      postId: (json['fk_post_id'] as num).toInt(),
      saved: json['saved'] as bool,
    );

Map<String, dynamic> _$$SaveModelImplToJson(_$SaveModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fk_user_id': instance.userId,
      'fk_post_id': instance.postId,
      'saved': instance.saved,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikeModelImpl _$$LikeModelImplFromJson(Map<String, dynamic> json) =>
    _$LikeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['fk_user_id'] as num).toInt(),
      postId: (json['fk_post_id'] as num).toInt(),
      like: json['like'] as bool?,
    );

Map<String, dynamic> _$$LikeModelImplToJson(_$LikeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fk_user_id': instance.userId,
      'fk_post_id': instance.postId,
      'like': instance.like,
    };

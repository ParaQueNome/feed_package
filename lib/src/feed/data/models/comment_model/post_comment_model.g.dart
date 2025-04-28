// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostCommentModelImpl _$$PostCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostCommentModelImpl(
      id: (json['id'] as num?)?.toInt(),
      fkUserId: (json['fk_user_id'] as num).toInt(),
      fkPostId: (json['fk_post_id'] as num).toInt(),
      data: json['data'] as String,
      hora: json['hora'] as String,
      descricao: json['descricao'] as String,
      profile: json['profile'] == null
          ? null
          : UserModel.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostCommentModelImplToJson(
        _$PostCommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fk_user_id': instance.fkUserId,
      'fk_post_id': instance.fkPostId,
      'data': instance.data,
      'hora': instance.hora,
      'descricao': instance.descricao,
      'profile': instance.profile,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: json['nome'] as String,
      urlAvatar: json['url_avatar'] as String?,
      dataNascimento: json['data_nascimento'] as String,
      logradouro: json['logradouro'] as String?,
      bairro: json['bairro'] as String?,
      cidade: json['cidade'] as String?,
      cep: json['cep'] as String?,
      numeroCasa: (json['numero_casa'] as num?)?.toInt(),
      telefone: json['telefone'] as String?,
      estado: json['estado'] as String?,
      admin: json['admin'] as bool,
      fkLoginId: (json['fk_login_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'url_avatar': instance.urlAvatar,
      'data_nascimento': instance.dataNascimento,
      'logradouro': instance.logradouro,
      'bairro': instance.bairro,
      'cidade': instance.cidade,
      'cep': instance.cep,
      'numero_casa': instance.numeroCasa,
      'telefone': instance.telefone,
      'estado': instance.estado,
      'admin': instance.admin,
      'fk_login_id': instance.fkLoginId,
    };

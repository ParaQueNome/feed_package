import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    int? id,
    required String nome,
    @JsonKey(name: 'url_avatar') String? urlAvatar,
    @JsonKey(name: 'data_nascimento') required String dataNascimento,
    required String? logradouro,
    required String? bairro,
    required String? cidade,
    required String? cep,
    @JsonKey(name: 'numero_casa') required int? numeroCasa,
    required String? telefone,
    required String? estado,
    required bool admin,
    @JsonKey(name: 'fk_login_id') required int? fkLoginId,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

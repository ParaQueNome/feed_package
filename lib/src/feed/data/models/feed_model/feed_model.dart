import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_model.freezed.dart';

part 'feed_model.g.dart';

//Classe de Modelos que representa a tabela de Posts do Supabasa - Cada elemento do json retornado, será uma propriedade de nosso objeto

@freezed // gera automaticamente o serializador e desserilizador json.
class FeedModel with _$FeedModel {
  //padrão de projeto que gerencia a criação de nossa classe para modelar os objetos
  factory FeedModel({
    int? id,
    required String titulo,
    required String data,
    required String hora,
    required String descricao,
    @JsonKey(name: 'fk_user_id') required int fkUserId,
    String? url,
    String? autor,
    String? urlavatar, // Associando tabela User para resgatar o autor do post
    bool? devocional,
  }) = _FeedModel;

  // metodos responsaveis por tranformar o json em objetos e voltar os objetos para json
  factory FeedModel.fromJson(Map<String, dynamic> json) =>
      _$FeedModelFromJson(json);
}

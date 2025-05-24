import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../user/data/models/user_model.dart';
part 'mural_model.freezed.dart';
part 'mural_model.g.dart';

@freezed
class MuralModel with _$MuralModel {
  factory MuralModel({
    int? id,
    required String titulo,
    required String descricao,
    required String data,
    required String hora,
    required int cor,
    @JsonKey(name: 'fk_user_id') required int fkUserId,
    UserModel? user,
  }) = _MuralModel;

  factory MuralModel.fromJson(Map<String, dynamic> json) =>
      _$MuralModelFromJson(json);
}

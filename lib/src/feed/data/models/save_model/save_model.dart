import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_model.g.dart';
part 'save_model.freezed.dart';


@freezed
class SaveModel with _$SaveModel{

  
  factory SaveModel({
    int? id,
    @JsonKey(name: 'fk_user_id') required int userId,
    @JsonKey(name: 'fk_post_id') required int postId,
    required bool saved,
  }) = _SaveModel;

  factory SaveModel.fromJson(Map<String, dynamic> json) => _$SaveModelFromJson(json);
}
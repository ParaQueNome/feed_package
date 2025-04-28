import 'package:feed_package/src/user/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_comment_model.freezed.dart';
part 'post_comment_model.g.dart';

@freezed
class PostCommentModel with _$PostCommentModel {
  factory PostCommentModel({
    int? id,
    @JsonKey(name: 'fk_user_id') required int fkUserId,
    @JsonKey(name: 'fk_post_id') required int fkPostId,
    required String data,
    required String hora,
    required String descricao,
    UserModel? profile,
  }) = _PostCommentModel;

  factory PostCommentModel.fromJson(Map<String, dynamic> json) =>
      _$PostCommentModelFromJson(json);
}

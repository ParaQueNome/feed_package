import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_post_model.freezed.dart';
part 'like_post_model.g.dart';

@freezed
class LikeModel with _$LikeModel{

  factory LikeModel({
    int? id,
    @JsonKey(name: 'fk_user_id') required int userId,
    @JsonKey(name: 'fk_post_id') required int postId,
    bool? like,
  }) = _LikeModel;

  factory LikeModel.fromJson(Map<String, dynamic> json) => _$LikeModelFromJson(json);
}
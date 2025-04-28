

import 'package:feed_package/src/feed/data/models/comment_model/post_comment_model.dart';

abstract class CommentRepository {
  Future<List<PostCommentModel>> findAllPostComments({required int postId});
  Future<void> insertPostComment({required PostCommentModel postCommentModel});
}

import 'package:feed_package/src/feed/data/models/comment_model/post_comment_model.dart';
import 'package:feed_package/src/feed/data/repositories/post_comment_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_comment_provider.g.dart';

@riverpod
Future<List<PostCommentModel>> findAllComments(Ref ref, int postId) {
  return ref.watch(postRepositoryProvider).findAllPostComments(postId: postId);
}

@riverpod
Future<void> createComment(Ref ref, PostCommentModel comment) async {
  await ref
      .read(postRepositoryProvider)
      .insertPostComment(postCommentModel: comment);
}

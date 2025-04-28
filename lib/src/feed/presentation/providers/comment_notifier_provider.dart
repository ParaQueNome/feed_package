import 'package:feed_package/src/feed/data/models/comment_model/post_comment_model.dart';
import 'package:feed_package/src/feed/data/repositories/post_comment_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_notifier_provider.g.dart';

@riverpod
class CommentNotifierProvider extends _$CommentNotifierProvider {
  @override
  Future<List<PostCommentModel>> build(int postId) async {
    return ref.read(postRepositoryProvider).findAllPostComments(postId: postId);
  }

  Future<void> insertComment(PostCommentModel comment) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      await ref
          .read(postRepositoryProvider)
          .insertPostComment(postCommentModel: comment);
      return ref
          .read(postRepositoryProvider)
          .findAllPostComments(postId: postId);
    });
  }
}

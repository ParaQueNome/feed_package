import 'package:feed_package/src/core/providers/supabase_provider.dart';
import 'package:feed_package/src/core/repositories/comment_repository.dart';
import 'package:feed_package/src/feed/data/models/comment_model/post_comment_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'post_comment_repository_impl.g.dart';

class PostCommentRepositoryImpl implements CommentRepository {
  final SupabaseClient supabase;

  PostCommentRepositoryImpl({required this.supabase});
  @override
  Future<List<PostCommentModel>> findAllPostComments(
      {required int postId}) async {
    final response = await supabase
        .from('comentario_post')
        .select('*, profile:fk_user_id(*)')
        .eq('fk_post_id', postId);

    return [for (final comment in response) PostCommentModel.fromJson(comment)];
  }

  @override
  Future<void> insertPostComment(
      {required PostCommentModel postCommentModel}) async {
    final commentJson = postCommentModel.toJson()
      ..remove('profile')
      ..remove('id');
    await supabase.from('comentario_post').insert(commentJson);
  }
}

@riverpod
CommentRepository postRepository(Ref ref) {
  return PostCommentRepositoryImpl(supabase: ref.watch(supabaseProvider));
}

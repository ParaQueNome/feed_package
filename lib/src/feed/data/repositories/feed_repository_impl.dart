import 'package:feed_package/src/core/providers/supabase_provider.dart';
import 'package:feed_package/src/feed/data/models/feed_model/feed_model.dart';
import 'package:feed_package/src/feed/data/models/like_model/like_post_model.dart';
import 'package:feed_package/src/feed/data/models/save_model/save_model.dart';
import 'package:feed_package/src/feed/domain/repositories/feed_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


part 'feed_repository_impl.g.dart';

class FeedRepositoryImpl implements FeedRepository {
  final SupabaseClient supabase ;

  FeedRepositoryImpl({required this.supabase});
  
  @override
  Stream<List<FeedModel>> findAllPosts()  {
    return supabase.from('post_feed2')
    .stream(primaryKey: ['id'])
    .map((e)=>[for(final post in e) FeedModel.fromJson(post)]);
  }

  @override
  Future<void> insertPost(FeedModel feed) async {
    final feedJson = feed.toJson()
      ..remove('id')
      ..remove('autor')
      ..remove('urlavatar');
    await supabase.from('post').insert(feedJson);
  }


  @override
  Future<void> deletePost(FeedModel feed) async =>
      await supabase.from('post').delete().eq('id', feed.id!);

  @override
  Future<void> updatePost(FeedModel feed) async =>
      await supabase.from('post').update(feed.toJson()).eq('id', feed.id!);

  @override
  Future<List<FeedModel>> findPostByUser(String id) async {
    final response =
        await supabase.from('post').select('*').eq('fk_user_id', id);
    return [for (final post in response) FeedModel.fromJson(post)];
  }

  @override
  Future<void> likePost(LikeModel like) async =>
      await supabase.from('liked').insert(like.toJson()..remove('id'));

  @override
  Future<void> dislikePost(LikeModel like) async =>
      await supabase.from('liked').delete().eq('fk_post_id', like.postId).eq('fk_user_id', like.userId);

      

  @override
  Future<void> savePost(SaveModel save) async =>
      await supabase.from('save').insert(save.toJson()..remove('id'));

  @override
  Future<List<FeedModel>> findSavedPosts(int userId) async =>
      (await supabase.rpc('find_saved_posts', params: {'user_id': userId}))
          .map<FeedModel>((post) => FeedModel.fromJson(post))
          .toList();

  @override
  Future<Map<String, dynamic>> couterLike(LikeModel userId) async {
    final response = await supabase
        .from('liked')
        .select('*')
        .eq('fk_post_id', userId.postId)
        .count();

    // Retorna o valor da contagem dentro de um Map<String, dynamic>
    return {'likeCount': response.count};
  }

  @override
  Future<void> insertLike(LikeModel like) async{
    final feedJson = like.toJson()..remove('id')..remove('like');
    await supabase.from('liked').insert(feedJson);
  }
}
  
// injetando dependencia do provider
@riverpod
FeedRepository feedRepository(Ref ref) {
  return FeedRepositoryImpl(supabase: ref.watch(supabaseProvider));
}


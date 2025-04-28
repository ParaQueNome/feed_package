import 'package:feed_package/src/feed/data/models/feed_model/feed_model.dart';
import 'package:feed_package/src/feed/data/models/like_model/like_post_model.dart';
import 'package:feed_package/src/feed/data/models/save_model/save_model.dart';

abstract class FeedRepository {
  Stream<List<FeedModel>>findAllPosts();
  Future<List<FeedModel>>findPostByUser(String id);
  Future<void> insertPost(FeedModel feed);
  Future<void> deletePost(FeedModel feed);
  Future<void> updatePost(FeedModel feed);
  Future<void> likePost(LikeModel like);
  Future<void> dislikePost(LikeModel like);
  Future<void> savePost(SaveModel save);
  Future<Map<String,dynamic>> couterLike(LikeModel like);
  Future<void> insertLike(LikeModel like);
  Future<List<FeedModel>> findSavedPosts(int userId);
  
}
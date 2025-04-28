import 'package:feed_package/src/feed/data/models/like_model/like_post_model.dart';
import 'package:feed_package/src/feed/data/models/save_model/save_model.dart';
import 'package:feed_package/src/feed/data/repositories/feed_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/feed_model/feed_model.dart';


part 'feed_provider.g.dart';

@riverpod
Stream<List<FeedModel>> feed(Ref ref)  {
  return ref.watch(feedRepositoryProvider).findAllPosts();
}

@riverpod
Future<List<FeedModel>> findPostByUserProvider(Ref ref, String id) async {
  return await ref.watch(feedRepositoryProvider).findPostByUser(id);
}

@riverpod
Future<List<FeedModel>> findSavedPostsProvider(Ref ref, int id) async {
  return await ref.watch(feedRepositoryProvider).findSavedPosts(id);
}


@riverpod
Future<void> insertPost(Ref ref, FeedModel feed) async {
  final repository = ref.watch(feedRepositoryProvider);
  await repository.insertPost(feed);
}

@riverpod
Future<void> updatePost(Ref ref, FeedModel feed) async {
  final repository = ref.watch(feedRepositoryProvider);
  await repository.updatePost(feed);
}

@riverpod
Future<void> deletePost(Ref ref, FeedModel feed) async {
  final repository = ref.watch(feedRepositoryProvider);
  await repository.deletePost(feed);
}

@riverpod
Future<void> savePost(Ref ref, SaveModel save) async {
  final repository = ref.watch(feedRepositoryProvider);
  await repository.savePost(save);
}

@riverpod
Future<void> likePost(Ref ref, LikeModel like) async {
  final repository = ref.watch(feedRepositoryProvider);
  await repository.likePost(like);
}

@riverpod
Future<void> dislikePost(Ref ref, LikeModel like) async {
  final repository = ref.watch(feedRepositoryProvider);
  await repository.dislikePost(like);
}

@riverpod
Future<Map<String,dynamic>> couterlikePost(Ref ref, LikeModel like) async {
  final repository = ref.watch(feedRepositoryProvider);
  return await repository.couterLike(like);
}

@riverpod
Future<void> insertLike(Ref ref, LikeModel like) async {
  final repository = ref.watch(feedRepositoryProvider);
  await repository.insertLike(like);
}



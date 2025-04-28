import 'dart:io';
import 'package:feed_package/src/core/repositories/bucket_repository.dart';
import 'package:feed_package/src/core/services/bucket_service.dart';
import 'package:feed_package/src/feed/data/models/feed_model/feed_model.dart';
import 'package:feed_package/src/feed/data/repositories/feed_bucket_repository_impl.dart';
import 'package:feed_package/src/feed/data/repositories/feed_repository_impl.dart';
import 'package:feed_package/src/feed/domain/repositories/feed_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_service.g.dart';

class FeedService implements BucketService {
  final BucketRepository bucketRepository;
  final FeedRepository feedRepository;

  FeedService({
    required this.bucketRepository,
    required this.feedRepository,
  });

  @override
  Future<void> insertBucket(File file, FeedModel feed) async {
    try {
      final fileUrl = await bucketRepository.getFileUrl(
        await bucketRepository.uploadFile(file),
      );
      await feedRepository.insertPost(feed.copyWith(url: fileUrl));
    } on Exception catch (e) {
      throw Exception("Falha no envio do post: $e");
    }
  }
}

@riverpod
FeedService feedService(Ref ref) => FeedService(
  bucketRepository: ref.watch(bucketRepositoryProvider),
  feedRepository: ref.watch(feedRepositoryProvider),
);

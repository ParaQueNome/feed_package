import 'dart:io';
import 'package:feed_package/src/feed/application/services/feed_service.dart';
import 'package:feed_package/src/feed/data/models/feed_model/feed_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_service_provider.g.dart';

@riverpod
Future<void> insertPostService( Ref ref, {required File file, required FeedModel feed}) async {
  final service = ref.watch(feedServiceProvider);
  return await service.insertBucket(file, feed);
}
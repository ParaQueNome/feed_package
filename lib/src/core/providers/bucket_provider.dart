

import 'dart:io';

import 'package:feed_package/src/feed/data/repositories/feed_bucket_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bucket_provider.g.dart';

@riverpod
Future<String> getFileUrl(Ref ref, String filePathBucket) async {
  final repository = ref.watch(bucketRepositoryProvider);
  return await repository.getFileUrl(filePathBucket);
}

@riverpod
Future<String> uploadFile(Ref ref, File file) async {
  final repository = ref.watch(bucketRepositoryProvider);
  return await repository.uploadFile(file);
}
import 'dart:io';
import 'package:feed_package/src/core/providers/supabase_provider.dart';
import 'package:feed_package/src/core/repositories/bucket_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'feed_bucket_repository_impl.g.dart';

class FeedBucketRepositoryImpl implements BucketRepository{

  final SupabaseClient supabase;

  FeedBucketRepositoryImpl({required this.supabase});
  
  @override
  Future<String> getFileUrl(String filePathBucket) async {
    filePathBucket = filePathBucket.split('/').last;
    return supabase.storage.from('images').getPublicUrl(filePathBucket);
  }
    
    
  
  @override
  Future<String> uploadFile(File file) async {
    final fileName = file.path.split('/').last;
    final response = await supabase.storage.from('images').upload(fileName, file);
    return response;
    
  }
    
  

}

@riverpod
BucketRepository bucketRepository(Ref ref) {
  return FeedBucketRepositoryImpl(supabase: ref.watch(supabaseProvider));
}
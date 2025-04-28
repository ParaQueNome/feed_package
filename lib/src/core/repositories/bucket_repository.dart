
import 'dart:io';

abstract class BucketRepository { 
  Future<String>uploadFile(File filePath);
  Future<String>getFileUrl(String filePathBucket);
}
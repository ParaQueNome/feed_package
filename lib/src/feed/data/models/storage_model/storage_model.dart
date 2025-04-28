import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_model.freezed.dart';
part 'storage_model.g.dart';

@freezed
class StorageModel with _$StorageModel {
  
  factory StorageModel({
    @JsonKey(name: 'storage_id') int? id,
    String? url,
    @JsonKey(name: 'fk_post_id')
    required int fkPostId,
  }) = _StorageModel;


  factory StorageModel.fromJson(Map<String, dynamic> json) => _$StorageModelFromJson(json);
}
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'inser_post_state_provider.g.dart';

@riverpod
class UploadState extends _$UploadState {
  @override
  bool build() => false; // Estado inicial: não carregando

  void startUpload() => state = true; // Inicia o upload
  void finishUpload() => state = false; // Finaliza o upload
}

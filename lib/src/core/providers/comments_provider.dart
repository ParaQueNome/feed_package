import 'package:flutter_riverpod/flutter_riverpod.dart';

final commentsUpdateProvider = StateNotifierProvider<CommentsUpdateNotifier, bool>(
  (ref) => CommentsUpdateNotifier(),
);

class CommentsUpdateNotifier extends StateNotifier<bool> {
  CommentsUpdateNotifier() : super(false);

  void triggerUpdate() {
    state = !state; // Alterna o estado para forçar a atualização
  }
}

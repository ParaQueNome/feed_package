import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/mural_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/mural_model.dart';
part 'mural_provider.g.dart';

@riverpod
Future<List<MuralModel>> cards(Ref ref) async {
  return await ref.watch(muralRepositoryProvider).findAllMuralCards();
}

@riverpod
Future<void> insertPost(Ref ref, MuralModel card) async {
  final repository = ref.watch(muralRepositoryProvider);
  await repository.insertMuralCards(card);
}

@riverpod
Future<void> deletPost(Ref ref, MuralModel card) async {
  final repository = ref.watch(muralRepositoryProvider);
  await repository.deletMuralCards(card.id!);
}

final deleteModeProvider = StateProvider<bool>((ref) => false);

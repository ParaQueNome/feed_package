import 'package:feed_package/feed_package.dart';
import 'package:feed_package/src/mural/domain/repositories/mural_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/mural_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'mural_repository_impl.g.dart';

class MuralRepositoryImpl implements MuralRepository {
  final SupabaseClient supabase;

  MuralRepositoryImpl({required this.supabase});

  @override
  Future<List<MuralModel>> findAllMuralCards() async {
    final response = await supabase
        .from('mural_cards')
        .select('*,profile!fk_user_id(*)');
    return [for (final mural in response) MuralModel.fromJson(mural)];
  }

  @override
  Future<void> deletMuralCards(int id) async {
    await supabase.from('mural_cards').delete().eq('id', id!);
  }

  @override
  Future<void> insertMuralCards(MuralModel card) async {
    final muralJson =
        card.copyWith(user: null).toJson()
          ..remove('user')
          ..remove('id');
    await supabase.from('mural_cards').insert(muralJson);
  }
}

@riverpod
MuralRepository muralRepository(Ref ref) {
  return MuralRepositoryImpl(supabase: ref.watch(supabaseProvider));
}

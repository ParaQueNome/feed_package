import 'package:feed_package/src/user/domain/repostitories/user_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  final SupabaseClient supabase = Supabase.instance.client;

  @override
  Future<void> updateUser(UserModel user) async {
    final response = await supabase.from('user').update(user.toJson());

    if (response.error != null) {
      throw ('Erro ao atualizar os dados: ${response.error!.message}');
    }
  }
}

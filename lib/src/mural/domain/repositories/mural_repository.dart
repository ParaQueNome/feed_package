import '../../data/models/mural_model.dart';

abstract class MuralRepository {
  Future<List<MuralModel>> findAllMuralCards();
  Future<void> insertMuralCards(MuralModel card);
  Future<void> deletMuralCards(int id);
}

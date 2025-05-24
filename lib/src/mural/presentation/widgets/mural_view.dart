import 'package:flutter/material.dart';

import '../../data/models/mural_model.dart';
import 'card_mural_widgets.dart';

class MuralView extends StatelessWidget {
  const MuralView({super.key, required this.cards});

  final List<MuralModel> cards;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cards.length,
      itemBuilder: (context, index) {
        return CardMuralWidgets(muralCard: cards[index], index: index);
      },
    );
  }
}

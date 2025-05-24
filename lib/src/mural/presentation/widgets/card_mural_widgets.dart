import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/mural_model.dart';
import '../../presentation/providers/mural_provider.dart';
import '/src/core/services/dateConverter.dart';

class CardMuralWidgets extends ConsumerStatefulWidget {
  const CardMuralWidgets({
    super.key,
    required this.muralCard,
    required this.index,
  });

  final MuralModel muralCard;
  final int index;

  @override
  ConsumerState<CardMuralWidgets> createState() => _CardMuralWidgetsState();
}

class _CardMuralWidgetsState extends ConsumerState<CardMuralWidgets> {
  late MuralModel muralCard;

  final List<Color> colors = [
    Colors.purple.shade300,
    Colors.lightGreen.shade300,
    Colors.orange.shade300,
    Colors.blue.shade300,
    Colors.red.shade300,
    Colors.pink.shade300,
  ];
  final List<Color> colors2 = [
    Colors.purple.shade100,
    Colors.lightGreen.shade100,
    Colors.orange.shade100,
    Colors.blue.shade100,
    Colors.red.shade100,
    Colors.pink.shade100,
  ];
  final List<IconData> icons = [
    Icons.mail,
    Icons.event,
    Icons.warning,
    Icons.card_giftcard,
    Icons.timer,
    Icons.celebration,
  ];

  @override
  void initState() {
    super.initState();
    muralCard = widget.muralCard;
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(cardsProvider);
    final deleteMode = ref.watch(deleteModeProvider);
    final brightness = MediaQuery.of(context).platformBrightness;
    final valueColor = colors[muralCard.cor];
    final valueColor2 = colors2[muralCard.cor];
    final valueIcon = icons[muralCard.cor];

    return SizedBox(
      width: 170,
      height: 150,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: brightness == Brightness.light ? valueColor : valueColor2,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  muralCard.titulo,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color:
                        brightness == Brightness.light
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  muralCard.descricao,
                  style: TextStyle(
                    fontSize: 12,
                    color:
                        brightness == Brightness.light
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
                const Spacer(),
                Text(
                  '${getRelativeTime(muralCard.data)} - ${muralCard.hora}',
                  style: TextStyle(
                    fontSize: 9,
                    color:
                        brightness == Brightness.light
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          if (deleteMode)
            Positioned(
              top: 5,
              right: 5,
              child: IconButton(
                icon: Icon(Icons.close, color: Colors.red.shade400),
                onPressed: () async {
                  await ref.read(deletPostProvider(muralCard).future);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Card ${muralCard.titulo} foi deletado'),
                    ),
                  );
                },
              ),
            ),
          Positioned(
            top: 10,
            right: 10,
            left: 10,
            bottom: 10,
            child: Icon(
              valueIcon,
              size: 84,
              color:
                  brightness == Brightness.light
                      ? Colors.white.withOpacity(0.15)
                      : Colors.black.withOpacity(0.06),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../presentation/widgets/card_mural_widgets.dart';
import '../presentation/providers/mural_provider.dart';

class MuralPage extends ConsumerWidget {
  const MuralPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muralState = ref.watch(cardsProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: muralState.when(
          data: (muralList) {
            if (muralList.isEmpty) {
              return const Center(
                child: Text(
                  "Nenhum cartão criado",
                  style: TextStyle(fontSize: 24),
                ),
              );
            }

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 1,
              ),
              itemCount: muralList.length,
              itemBuilder: (context, index) {
                final muralCard = muralList[index];
                return CardMuralWidgets(muralCard: muralCard, index: index);
              },
            );
          },
          error: (error, stackTrace) => Center(child: Text('Erro: $error')),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}

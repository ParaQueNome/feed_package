import 'package:feed_package/src/core/widgets/ima_error_widget.dart';
import 'package:feed_package/src/core/widgets/loading_widget.dart';
import 'package:feed_package/src/core/widgets/new_comment_widget.dart';
import 'package:feed_package/src/feed/data/models/feed_model/feed_model.dart';
import 'package:feed_package/src/feed/data/models/feed_model/feed_model_interface.dart';
import 'package:feed_package/src/feed/presentation/providers/comment_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentSectionWidget extends ConsumerWidget {
  final FeedModelInterface feed;

  const CommentSectionWidget({required this.feed, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final comments = ref.watch(commentNotifierProviderProvider(feed.id!)); // Observando os comentários para o feed

    return Container(
      padding: const EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height * 0.8, // 80% da altura da tela
      child: Column(
        children: [
          // Cabeçalho da seção de comentários
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Comentários",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          // Exibindo os comentários ou mensagem de "Nenhum comentário"
          Expanded(
            child: comments.when(
              data: (data) => data.isNotEmpty
                  ? ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final comment = data[index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              comment.profile?.urlAvatar ??
                                  'https://images.pexels.com/photos/4506436/pexels-photo-4506436.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            ),
                          ),
                          title: Text(comment.profile!.nome),
                          subtitle: Text(comment.descricao),
                        );
                      },
                    )
                  : Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.comment_bank_outlined, size: 48),
                            const SizedBox(height: 8),
                            Text(
                              "Nenhum comentário",
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
              error: (error, stackTrace) => const InternalErrorWidget(),
              loading: () => const LoadingWidget(),
            ),
          ),
          // Caixa para adicionar novo comentário
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: NewCommentWidget(feed: feed), // Novo comentário
          ),
        ],
      ),

    );
  }
}

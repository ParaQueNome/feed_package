import 'package:feed_package/src/core/widgets/comment_section_widget.dart';
import 'package:feed_package/src/feed/data/models/feed_model/feed_model.dart';
import 'package:feed_package/src/feed/data/models/feed_model/feed_model_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class FeedPostViewPage extends ConsumerWidget {
  const FeedPostViewPage({
    super.key,
    required this.post,
    required this.scrollToComments,
  });

  final FeedModelInterface post;
  final bool scrollToComments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();
    final controller = TextEditingController();

    return Scaffold(
      body: NestedScrollView(
        controller: scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  post.titulo,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                ),
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      post.url!,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0, -0.5),
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black87,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Barra de ícones
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinha os ícones nas extremidades
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                    iconSize: 24.0, // Ícones menores
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share_outlined),
                    iconSize: 24.0, // Ícones menores
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_outline),
                    iconSize: 24.0, // Ícones menores
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  IconButton(
                    onPressed: () {
                      // Abre o modal de comentários
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return CommentSectionWidget(feed: post); // Abre o modal com a seção de comentários
                        },
                      );
                    },
                    icon: const Icon(Icons.comment_outlined),
                    iconSize: 24.0, // Ícone de comentários pequeno
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(post.urlavatar ?? ''),
              ),
              title: Text(
                post.autor ?? 'Anônimo',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                DateFormat('dd/MM/yyyy').format(DateTime.parse(post.data)),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
              child: Text(
                post.descricao,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            // Adicionando o espaço para o conteúdo do post, sem deixar grandes espaços vazios
            Flexible(
              child: SizedBox.shrink(), // Preenche o espaço restante
            ),
          ],
        ),
      ),
    );
  }
}

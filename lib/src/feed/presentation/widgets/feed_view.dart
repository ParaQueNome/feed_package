import 'package:flutter/material.dart';

import '../../data/models/feed_model/feed_model.dart';
import '../feed_post_view.dart';
import 'feed_card_widget.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key, required this.feed});

  final List<FeedModel> feed;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Últimas novidades',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: feed.where((f) => f.devocional == false).toList().length,
            itemBuilder: (context, index) {
              var postagens = feed.where((f) => f.devocional == false).toList();
              final p = postagens[index];
              return AspectRatio(
                aspectRatio: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FeedPostViewPage(
                          post: p,
                          scrollToComments: false,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        Image.network(
                          p.url!,
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black,
                                Colors.black54,
                                Colors.black45,
                                Colors.black26,
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(
                                4.0), // Reduzindo o espaçamento
                            child: Text(
                              p.titulo,
                              maxLines: 2, // Limita o texto a 2 linhas
                              overflow: TextOverflow
                                  .ellipsis, // Adiciona "..." se o texto for muito longo
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium! // Texto menor
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Devocionais',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: feed.where((f) => f.devocional == true).toList().length,
            itemBuilder: (context, index) {
              var devocionais =
                  feed.where((f) => f.devocional == true).toList();
              final p = devocionais[index];
              return AspectRatio(
                aspectRatio: 5 / 3,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FeedPostViewPage(
                          post: p,
                          scrollToComments: false,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        Image.network(
                          p.url!,
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black,
                                Colors.black54,
                                Colors.black45,
                                Colors.black26,
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              p.titulo,
                              maxLines: 1,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: feed.where((f) => f.devocional == false).toList().length,
          itemBuilder: (context, index) {
            var postagens = feed.where((f) => f.devocional == false).toList();
            return FeedCardWidget(feed: postagens[index]);
          },
        )
      ],
    );
  }
}

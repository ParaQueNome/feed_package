import 'package:feed_package/src/feed/data/models/like_model/like_post_model.dart';
import 'package:feed_package/src/feed/presentation/feed_post_view.dart';
import 'package:feed_package/src/feed/presentation/providers/feed_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../data/models/feed_model/feed_model.dart';

class FeedCardWidget extends ConsumerWidget {
  const FeedCardWidget({
    super.key,
    required this.feed,
  });

  final FeedModel feed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //TODO: Rever e remover
    LikeModel like = LikeModel(
      userId: 2,
      postId: 50,
    );
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FeedPostViewPage(
              post: feed,
              scrollToComments: false,
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(feed.urlavatar ?? ''),
              ),
              title: Text(
                feed.autor ?? 'Anonimo',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              subtitle: Text(
                DateFormat('dd-MM-yyyy').format(DateTime.parse(feed.data)),
                style: Theme.of(context).textTheme.labelSmall,
              ),
              trailing: const Icon(Icons.bookmark_add_outlined),
            ),
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    feed.url ??
                        'https://images.pexels.com/photos/29274208/pexels-photo-29274208/free-photo-of-retrato-colorido-da-celebracao-do-dia-de-los-muertos.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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
                    alignment: const Alignment(-0.9, 0.9),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        feed.titulo,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: Colors.white70,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16),
                      child: Text(
                        style: Theme.of(context).textTheme.bodyLarge,
                        feed.descricao,
                        textAlign: TextAlign.justify,
                        maxLines: 3,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 8),
                  child: OverflowBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          ref.read(insertLikeProvider(like).future);
                        },
                        icon: const Icon(Icons.favorite_outline),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share_outlined),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FeedPostViewPage(
                                post: feed,
                                scrollToComments: true,
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.chat_outlined),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

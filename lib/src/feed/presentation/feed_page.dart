import 'package:feed_package/src/core/widgets/ima_error_widget.dart';
import 'package:feed_package/src/core/widgets/loading_widget.dart';
import 'package:feed_package/src/feed/presentation/providers/feed_provider.dart';
import 'package:feed_package/src/feed/presentation/widgets/form_post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'widgets/feed_view.dart';

class FeedPage extends ConsumerStatefulWidget {
  const FeedPage({super.key});

  @override
  ConsumerState createState() => _FeedPageState();
}

class _FeedPageState extends ConsumerState<FeedPage> {
  @override
  Widget build(BuildContext context) {
    var feed = ref.watch(feedProvider);
    return Scaffold(
      body: feed.when(
        data: (data) => FeedView(feed: data.reversed.toList()),
        error: (e, s) => InternalErrorWidget(error: e, stackTrace: s),
        loading: () => const LoadingWidget(size: 150),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final shouldReload = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PostFormFeedWidget()),
          );
          if (shouldReload ?? true) {
            ref.invalidate(feedProvider);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

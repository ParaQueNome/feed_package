import 'package:feed_package/src/core/widgets/ima_error_widget.dart';
import 'package:feed_package/src/core/widgets/loading_widget.dart';
import 'package:feed_package/src/feed/presentation/providers/feed_provider.dart';
import 'package:feed_package/src/feed/presentation/widgets/feed_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SalvosPage extends ConsumerStatefulWidget {
  const SalvosPage({super.key});

  @override
  ConsumerState createState() => _SalvosPageState();
}

class _SalvosPageState extends ConsumerState<SalvosPage> {
  @override
  Widget build(BuildContext context) {
    var feed = ref.watch(feedProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Salvos',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: feed.when(
        data: (data) => FeedView(feed: data.reversed.toList()),
        error: (error, stackTrace) => const InternalErrorWidget(),
        loading: () => const LoadingWidget(size: 150),
      ),
    );
  }
}

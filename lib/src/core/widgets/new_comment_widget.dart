import 'package:feed_package/src/feed/data/models/comment_model/post_comment_model.dart';
import 'package:feed_package/src/feed/data/models/feed_model/feed_model.dart';
import 'package:feed_package/src/feed/data/models/feed_model/feed_model_interface.dart';
import 'package:feed_package/src/feed/presentation/providers/comment_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewCommentWidget extends ConsumerStatefulWidget {
  final FeedModelInterface feed;

  const NewCommentWidget({super.key, required this.feed});

  @override
  _NewCommentWidgetState createState() => _NewCommentWidgetState();
}

class _NewCommentWidgetState extends ConsumerState<NewCommentWidget> {
  late final TextEditingController _commentController;

  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController();
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _commentController,
              decoration: InputDecoration(
                hintText: "Adicione um comentário...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {
              final text = _commentController.text.trim();
              if (text.isNotEmpty) {
                final now = DateTime.now();
                // Use um método do provider para adicionar o comentário
                final userComment = PostCommentModel(
                  fkUserId: 3,
                  fkPostId: widget.feed.id!,
                  descricao: text,
                  data:
                      "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}",
                  hora:
                      "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}",
                );
                ref
                    .read(commentNotifierProviderProvider(widget.feed.id!)
                        .notifier)
                    .insertComment(userComment);
                _commentController.clear();
              }
            },
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}

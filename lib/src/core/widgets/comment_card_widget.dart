import 'package:feed_package/src/feed/data/models/comment_model/post_comment_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommentCardWidget extends StatelessWidget {
  final PostCommentModel post;

  const CommentCardWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          post.profile!.urlAvatar!,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            post.profile!.nome,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${DateFormat('dd-MM-yyyy').format(DateTime.parse(post.data))}/${post.hora}',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 11,
            ),
          )
        ],
      ),
      subtitle: Text(
        post.descricao,
      ),
    );
  }
}

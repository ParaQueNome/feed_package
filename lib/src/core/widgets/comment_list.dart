import 'package:feed_package/src/core/widgets/comment_card_widget.dart';
import 'package:feed_package/src/core/widgets/new_comment_widget.dart';
import 'package:feed_package/src/feed/data/models/comment_model/post_comment_model.dart';
import 'package:feed_package/src/feed/data/models/feed_model/feed_model.dart';
import 'package:flutter/material.dart';





class CommentList extends StatefulWidget {
  const CommentList({super.key, required this.post, required this.feed});
  
  final List<PostCommentModel> post;
  final FeedModel feed;

  @override
  State<CommentList> createState() => _CommentListState();
}

class _CommentListState extends State<CommentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,                             
        title: SizedBox(
          width: double.infinity,          
          child: NewCommentWidget(feed: widget.feed),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.post.length,
        itemBuilder: (context, index) {
          return CommentCardWidget(post: widget.post[index]);
        },
      ),
    );
  }
}


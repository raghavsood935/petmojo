import 'package:flutter/cupertino.dart';
import 'package:tamely/models/feed_post_comment_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class CommentViewModel extends BaseModel {
  TextEditingController _commentTC = TextEditingController();

  List<FeedPostCommentModel> _listOfComments = [
    FeedPostCommentModel(),
    FeedPostCommentModel(),
    FeedPostCommentModel(),
    FeedPostCommentModel(),
    FeedPostCommentModel(),
    FeedPostCommentModel(),
    FeedPostCommentModel(),
    FeedPostCommentModel(),
    FeedPostCommentModel(),
    FeedPostCommentModel(),
    FeedPostCommentModel(),
    FeedPostCommentModel(),
    FeedPostCommentModel(),
  ];

  TextEditingController get commentTC => _commentTC;

  List<FeedPostCommentModel> get listOfComments => _listOfComments;

  void onClose(BuildContext context) {
    Navigator.pop(context);
  }
}

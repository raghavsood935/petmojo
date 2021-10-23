import 'package:flutter/cupertino.dart';
import 'package:kubelite/models/feed_post_comment_model.dart';
import 'package:kubelite/shared/base_viewmodel.dart';

class FeedPostCommentViewModel extends BaseModel {
  TextEditingController _commentTC = TextEditingController();

  List<FeedPostCommentModel> _listOfComments = [
    FeedPostCommentModel(),
    FeedPostCommentModel(),
  ];

  TextEditingController get commentTC => _commentTC;

  List<FeedPostCommentModel> get listOfComments => _listOfComments;
}

import 'package:json_annotation/json_annotation.dart';
import 'package:tamely/models/params/comments/voter_details_body.dart';
import 'package:tamely/models/params/like_dislike_post_body.dart';

import '../author_details_body.dart';

part 'vote_comment_body.g.dart';

@JsonSerializable(explicitToJson: true)
class VoteCommentBody {
  final String commentId;
  final CommentVoterDetailsBody voterDetails;
  final bool flag;

  VoteCommentBody(this.commentId, this.voterDetails, this.flag);

  factory VoteCommentBody.fromJson(Map<String, dynamic> json) =>
      _$VoteCommentBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VoteCommentBodyToJson(this);
}

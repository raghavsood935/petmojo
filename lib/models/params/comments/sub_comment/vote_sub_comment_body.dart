import 'package:json_annotation/json_annotation.dart';
import 'package:tamely/models/params/comments/voter_details_body.dart';
import 'package:tamely/models/params/like_dislike_post_body.dart';

import '../author_details_body.dart';

part 'vote_sub_comment_body.g.dart';

@JsonSerializable(explicitToJson: true)
class VoteSubCommentBody {
  final String subCommentId;
  final CommentVoterDetailsBody voterDetails;
  final bool flag;

  VoteSubCommentBody(this.subCommentId, this.voterDetails, this.flag);

  factory VoteSubCommentBody.fromJson(Map<String, dynamic> json) =>
      _$VoteSubCommentBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VoteSubCommentBodyToJson(this);
}

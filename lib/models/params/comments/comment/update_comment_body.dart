import 'package:json_annotation/json_annotation.dart';

import '../author_details_body.dart';

part 'update_comment_body.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateCommentBody {
  final String commentId;
  final String message;
  final CommentAuthorDetailsBody authorDetails;

  UpdateCommentBody(this.commentId, this.message, this.authorDetails);

  factory UpdateCommentBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateCommentBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCommentBodyToJson(this);
}

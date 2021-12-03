import 'package:json_annotation/json_annotation.dart';

import '../author_details_body.dart';

part 'store_sub_comment_body.g.dart';

@JsonSerializable(explicitToJson: true)
class StoreSubCommentBody {
  final String parentCommentId;
  final String message;
  final CommentAuthorDetailsBody authorDetails;

  StoreSubCommentBody(this.parentCommentId, this.message, this.authorDetails);

  factory StoreSubCommentBody.fromJson(Map<String, dynamic> json) =>
      _$StoreSubCommentBodyFromJson(json);

  Map<String, dynamic> toJson() => _$StoreSubCommentBodyToJson(this);
}

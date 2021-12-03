import 'package:json_annotation/json_annotation.dart';

import '../author_details_body.dart';

part 'store_comment_body.g.dart';

@JsonSerializable(explicitToJson: true)
class StoreCommentBody {
  final String postId;
  final String message;
  final CommentAuthorDetailsBody authorDetails;

  StoreCommentBody(this.postId, this.message, this.authorDetails);

  factory StoreCommentBody.fromJson(Map<String, dynamic> json) =>
      _$StoreCommentBodyFromJson(json);

  Map<String, dynamic> toJson() => _$StoreCommentBodyToJson(this);
}

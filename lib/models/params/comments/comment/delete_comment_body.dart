import 'package:json_annotation/json_annotation.dart';

import '../author_details_body.dart';

part 'delete_comment_body.g.dart';

@JsonSerializable(explicitToJson: true)
class DeleteCommentBody {
  final String commentId;

  DeleteCommentBody(this.commentId);

  factory DeleteCommentBody.fromJson(Map<String, dynamic> json) =>
      _$DeleteCommentBodyFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteCommentBodyToJson(this);
}

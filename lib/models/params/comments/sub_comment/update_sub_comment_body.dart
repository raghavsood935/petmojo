import 'package:json_annotation/json_annotation.dart';

import '../author_details_body.dart';

part 'update_sub_comment_body.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateSubCommentBody {
  final String subCommentId;
  final String message;

  UpdateSubCommentBody(this.subCommentId, this.message);

  factory UpdateSubCommentBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubCommentBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateSubCommentBodyToJson(this);
}

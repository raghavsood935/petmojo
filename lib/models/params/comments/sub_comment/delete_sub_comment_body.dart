import 'package:json_annotation/json_annotation.dart';

part 'delete_sub_comment_body.g.dart';

@JsonSerializable(explicitToJson: true)
class DeleteSubCommentBody {
  final String subCommentId;

  DeleteSubCommentBody(this.subCommentId);

  factory DeleteSubCommentBody.fromJson(Map<String, dynamic> json) =>
      _$DeleteSubCommentBodyFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteSubCommentBodyToJson(this);
}

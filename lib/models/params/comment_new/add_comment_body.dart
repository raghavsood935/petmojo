import 'package:json_annotation/json_annotation.dart';

part 'add_comment_body.g.dart';

@JsonSerializable(explicitToJson: true)
class AddCommentBody {
  final String message;

  AddCommentBody(this.message);

  factory AddCommentBody.fromJson(Map<String, dynamic> json) =>
      _$AddCommentBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AddCommentBodyToJson(this);
}

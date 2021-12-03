import 'package:json_annotation/json_annotation.dart';

part 'author_details_body.g.dart';

@JsonSerializable(explicitToJson: true)
class CommentAuthorDetailsBody {
  final String authorType;
  final String authorId;

  CommentAuthorDetailsBody(this.authorType, this.authorId);

  factory CommentAuthorDetailsBody.fromJson(Map<String, dynamic> json) =>
      _$CommentAuthorDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CommentAuthorDetailsBodyToJson(this);
}

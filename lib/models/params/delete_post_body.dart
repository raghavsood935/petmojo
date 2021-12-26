import 'package:json_annotation/json_annotation.dart';

part 'delete_post_body.g.dart';

@JsonSerializable(explicitToJson: true)
class DeletePostBody {
  final String postId;

  DeletePostBody(this.postId);

  factory DeletePostBody.fromJson(Map<String, dynamic> json) =>
      _$DeletePostBodyFromJson(json);

  Map<String, dynamic> toJson() => _$DeletePostBodyToJson(this);
}

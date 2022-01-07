import 'package:json_annotation/json_annotation.dart';

part 'create_post_body.g.dart';

@JsonSerializable(explicitToJson: true)
class CreatePostBody {
  final String caption;
  final String filter;
  final String Userauthor;
  final String authorType;
  final String image;
  final String thumbnail;
  final String Animalauthor;
  final String group;

  CreatePostBody(this.caption, this.filter, this.Userauthor, this.authorType,
      this.image, this.thumbnail, this.Animalauthor, this.group);

  factory CreatePostBody.fromJson(Map<String, dynamic> json) =>
      _$CreatePostBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePostBodyToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'liked_blog_body.g.dart';

@JsonSerializable(explicitToJson: true)
class LikedBlogBody {
  final String blogId;

  LikedBlogBody(this.blogId);

  factory LikedBlogBody.fromJson(Map<String, dynamic> json) =>
      _$LikedBlogBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LikedBlogBodyToJson(this);
}

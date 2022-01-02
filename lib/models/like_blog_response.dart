import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_blog_response.freezed.dart';
part 'like_blog_response.g.dart';

@freezed
class LikedBlogResponse with _$LikedBlogResponse {
  LikedBlogResponse._();

  factory LikedBlogResponse({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
  }) = _LikedBlogLikedBlogResponse;
  factory LikedBlogResponse.fromJson(Map<String, dynamic> json) =>
      _$LikedBlogResponseFromJson(json);
}

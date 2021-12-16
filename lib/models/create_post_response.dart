import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_post_response.freezed.dart';
part 'create_post_response.g.dart';

@freezed
class CreatePostResponse with _$CreatePostResponse {
  CreatePostResponse._();

  factory CreatePostResponse({
    @JsonKey(name: "post") CreatePostDetailsResponse? createPostDetailsResponse,
  }) = _CreatePostResponse;

  factory CreatePostResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePostResponseFromJson(json);
}

@freezed
class CreatePostDetailsResponse with _$CreatePostDetailsResponse {
  CreatePostDetailsResponse._();

  factory CreatePostDetailsResponse({
    @JsonKey(name: "hashtags") List<String>? hashtags,
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "thumbnail") String? thumbnail,
    @JsonKey(name: "filter") String? filter,
    @JsonKey(name: "caption") String? caption,
    @JsonKey(name: "Userauthor") String? Userauthor,
    @JsonKey(name: "authorType") String? authorType,
    @JsonKey(name: "date") String? date,
  }) = _CreatePostDetailsResponse;

  factory CreatePostDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePostDetailsResponseFromJson(json);
}

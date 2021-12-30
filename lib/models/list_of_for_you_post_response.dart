import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/post_response.dart';

part 'list_of_for_you_post_response.freezed.dart';
part 'list_of_for_you_post_response.g.dart';

@freezed
class ListOfForYouPostResponse with _$ListOfForYouPostResponse {
  ListOfForYouPostResponse._();

  factory ListOfForYouPostResponse({
    @JsonKey(name: "posts") List<ForYouPostResponse>? listOfPosts,
  }) = _ListOfForYouPostResponse;

  factory ListOfForYouPostResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfForYouPostResponseFromJson(json);
}

@freezed
class ForYouPostResponse with _$ForYouPostResponse {
  ForYouPostResponse._();

  factory ForYouPostResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "thumbnail") String? thumbnail,
  }) = _ForYouPostResponse;

  factory ForYouPostResponse.fromJson(Map<String, dynamic> json) =>
      _$ForYouPostResponseFromJson(json);
}

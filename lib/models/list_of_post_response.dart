import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/post_response.dart';

part 'list_of_post_response.freezed.dart';
part 'list_of_post_response.g.dart';

@freezed
class ListOfPostResponse with _$ListOfPostResponse {
  ListOfPostResponse._();

  factory ListOfPostResponse({
    @JsonKey(name: "posts") List<PostResponse>? listOfPosts,
  }) = _ListOfPostResponse;

  factory ListOfPostResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfPostResponseFromJson(json);
}

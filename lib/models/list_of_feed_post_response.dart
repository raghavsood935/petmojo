import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/post_response.dart';

part 'list_of_feed_post_response.freezed.dart';
part 'list_of_feed_post_response.g.dart';

@freezed
class ListOfFeedPostResponse with _$ListOfFeedPostResponse {
  ListOfFeedPostResponse._();

  factory ListOfFeedPostResponse({
    @JsonKey(name: "posts") List<FeedPostResponse>? listOfPosts,
  }) = _ListOfFeedPostResponse;

  factory ListOfFeedPostResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfFeedPostResponseFromJson(json);
}

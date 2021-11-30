import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/post_owner_details.dart';
import 'package:tamely/models/profile_model_response.dart';

part 'feed_post_response.freezed.dart';
part 'feed_post_response.g.dart';

@freezed
class FeedPostResponse with _$FeedPostResponse {
  FeedPostResponse._();

  factory FeedPostResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "hashtags") List<String>? hashtags,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "thumbnail") String? thumbnail,
    @JsonKey(name: "filter") String? filter,
    @JsonKey(name: "caption") String? caption,
    @JsonKey(name: "author") List<ProfileResponse>? author,
    @JsonKey(name: "postOwnerDetails")
        PostOwnerDetailsResponse? postOwnerDetails,
    @JsonKey(name: "date") String? date,
    // @JsonKey(name: "postVotes") List<String>? postVotes,
    // @JsonKey(name: "votesCount") List<String>? votesCounts,
    @JsonKey(name: "commentData") FeedPostCommentResponse? commentResponse,
  }) = _FeedPostResponse;

  factory FeedPostResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedPostResponseFromJson(json);
}

@freezed
class FeedPostCommentResponse with _$FeedPostCommentResponse {
  FeedPostCommentResponse._();

  factory FeedPostCommentResponse({
    @JsonKey(name: "comments") List<FeedPostInnerCommentResponse>? comments,
  }) = _FeedPostCommentResponse;

  factory FeedPostCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedPostCommentResponseFromJson(json);
}

@freezed
class FeedPostInnerCommentResponse with _$FeedPostInnerCommentResponse {
  FeedPostInnerCommentResponse._();

  factory FeedPostInnerCommentResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "post") String? postId,
    @JsonKey(name: "author") List<ProfileResponse>? author,
    @JsonKey(name: "Animalauthor") List<String>? comments,
  }) = _FeedPostInnerCommentResponse;

  factory FeedPostInnerCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedPostInnerCommentResponseFromJson(json);
}

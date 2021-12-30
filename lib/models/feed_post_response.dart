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
    @JsonKey(name: "isLiked") bool? isLiked,
    @JsonKey(name: "isBookmarked") bool? isBookmarked,
    @JsonKey(name: "Userauthor") List<ProfileResponse>? userAuthor,
    @JsonKey(name: "authorType") String? authorType,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "votesCount") List<VotesCountResponse>? votesCounts,
    @JsonKey(name: "commentData") FeedPostCommentResponse? commentResponse,
    @JsonKey(name: "Animalauthor")
        List<AnimalAuthorResponse>? animalAuthorResponse,
  }) = _FeedPostResponse;

  factory FeedPostResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedPostResponseFromJson(json);
}

@freezed
class VotesCountResponse with _$VotesCountResponse {
  VotesCountResponse._();

  factory VotesCountResponse({
    @JsonKey(name: "count") int? count,
  }) = _VotesCountResponse;

  factory VotesCountResponse.fromJson(Map<String, dynamic> json) =>
      _$VotesCountResponseFromJson(json);
}

@freezed
class FeedPostCommentResponse with _$FeedPostCommentResponse {
  FeedPostCommentResponse._();

  factory FeedPostCommentResponse({
    @JsonKey(name: "comments") List<FeedPostInnerCommentResponse>? comments,
    @JsonKey(name: "commentCount") int? commentCount,
  }) = _FeedPostCommentResponse;

  factory FeedPostCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedPostCommentResponseFromJson(json);
}

@freezed
class FeedPostInnerCommentResponse with _$FeedPostInnerCommentResponse {
  FeedPostInnerCommentResponse._();

  factory FeedPostInnerCommentResponse({
    @JsonKey(name: "post") String? postId,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "UserAuthor") List<ProfileResponse>? userAuthor,
    @JsonKey(name: "authorType") String? authorType,
    @JsonKey(name: "Animalauthor") List<AnimalAuthorResponse>? animalAuthor,
  }) = _FeedPostInnerCommentResponse;

  factory FeedPostInnerCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedPostInnerCommentResponseFromJson(json);
}

@freezed
class AuthorDetailsResponse with _$AuthorDetailsResponse {
  AuthorDetailsResponse._();

  factory AuthorDetailsResponse({
    @JsonKey(name: "authorDetails") String? authorDetails,
    @JsonKey(name: "authorId") String? authorId,
  }) = _AuthorDetailsResponse;

  factory AuthorDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthorDetailsResponseFromJson(json);
}

@freezed
class AnimalAuthorResponse with _$AnimalAuthorResponse {
  AnimalAuthorResponse._();

  factory AnimalAuthorResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "category") String? token,
  }) = _AnimalAuthorResponse;

  factory AnimalAuthorResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimalAuthorResponseFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/comment_added_response.dart';

part 'list_of_comments_response.freezed.dart';
part 'list_of_comments_response.g.dart';

@freezed
class ListOfCommentsResponse with _$ListOfCommentsResponse {
  ListOfCommentsResponse._();

  factory ListOfCommentsResponse({
    @JsonKey(name: "comments") List<CommentResponse>? listOfComments,
  }) = _ListOfCommentsResponse;

  factory ListOfCommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfCommentsResponseFromJson(json);
}

@freezed
class CommentResponse with _$CommentResponse {
  CommentResponse._();

  factory CommentResponse({
    @JsonKey(name: "_id") String? commentId,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "Userauthor")
        List<AuthorDetailsResponse>? authorDetailsResponse,
    @JsonKey(name: "Animalauthor")
        List<AnimalAuthorDetailsResponse>? animalAuthorDetailsResponse,
    @JsonKey(name: "authorType") String? authorType,
    @JsonKey(name: "post") String? postId,
    @JsonKey(name: "date") String? date,
  }) = _CommentResponse;

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);
}

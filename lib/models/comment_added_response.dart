import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_added_response.freezed.dart';
part 'comment_added_response.g.dart';

@freezed
class CommentAddedResponse with _$CommentAddedResponse {
  CommentAddedResponse._();

  factory CommentAddedResponse({
    @JsonKey(name: "_id") String? commentId,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "Userauthor") String? authorId,
    @JsonKey(name: "authorType") String? authorType,
    @JsonKey(name: "post") String? postId,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "author") AuthorDetailsResponse? authorDetailsResponse,
  }) = _CommentAddedResponse;

  factory CommentAddedResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentAddedResponseFromJson(json);
}

@freezed
class AuthorDetailsResponse with _$AuthorDetailsResponse {
  AuthorDetailsResponse._();

  factory AuthorDetailsResponse({
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "avatar") String? avatar,
  }) = _AuthorDetailsResponse;

  factory AuthorDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthorDetailsResponseFromJson(json);
}

@freezed
class AnimalAuthorDetailsResponse with _$AnimalAuthorDetailsResponse {
  AnimalAuthorDetailsResponse._();

  factory AnimalAuthorDetailsResponse({
    @JsonKey(name: "name") String? username,
    @JsonKey(name: "avatar") String? avatar,
  }) = _AnimalAuthorDetailsResponse;

  factory AnimalAuthorDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimalAuthorDetailsResponseFromJson(json);
}

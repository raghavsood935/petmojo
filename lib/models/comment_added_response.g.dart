// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_added_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentAddedResponse _$$_CommentAddedResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CommentAddedResponse(
      commentId: json['_id'] as String?,
      message: json['message'] as String?,
      authorId: json['Userauthor'] as String?,
      authorType: json['authorType'] as String?,
      postId: json['post'] as String?,
      date: json['date'] as String?,
      authorDetailsResponse: json['author'] == null
          ? null
          : AuthorDetailsResponse.fromJson(
              json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommentAddedResponseToJson(
        _$_CommentAddedResponse instance) =>
    <String, dynamic>{
      '_id': instance.commentId,
      'message': instance.message,
      'Userauthor': instance.authorId,
      'authorType': instance.authorType,
      'post': instance.postId,
      'date': instance.date,
      'author': instance.authorDetailsResponse,
    };

_$_AuthorDetailsResponse _$$_AuthorDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AuthorDetailsResponse(
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_AuthorDetailsResponseToJson(
        _$_AuthorDetailsResponse instance) =>
    <String, dynamic>{
      'username': instance.username,
      'avatar': instance.avatar,
    };

_$_AnimalAuthorDetailsResponse _$$_AnimalAuthorDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AnimalAuthorDetailsResponse(
      username: json['name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_AnimalAuthorDetailsResponseToJson(
        _$_AnimalAuthorDetailsResponse instance) =>
    <String, dynamic>{
      'name': instance.username,
      'avatar': instance.avatar,
    };

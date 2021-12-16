// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_comments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfCommentsResponse _$$_ListOfCommentsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfCommentsResponse(
      listOfComments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfCommentsResponseToJson(
        _$_ListOfCommentsResponse instance) =>
    <String, dynamic>{
      'comments': instance.listOfComments,
    };

_$_CommentResponse _$$_CommentResponseFromJson(Map<String, dynamic> json) =>
    _$_CommentResponse(
      commentId: json['_id'] as String?,
      message: json['message'] as String?,
      authorDetailsResponse: (json['Userauthor'] as List<dynamic>?)
          ?.map(
              (e) => AuthorDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      animalAuthorDetailsResponse: (json['Animalauthor'] as List<dynamic>?)
          ?.map((e) =>
              AnimalAuthorDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      authorType: json['authorType'] as String?,
      postId: json['post'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_CommentResponseToJson(_$_CommentResponse instance) =>
    <String, dynamic>{
      '_id': instance.commentId,
      'message': instance.message,
      'Userauthor': instance.authorDetailsResponse,
      'Animalauthor': instance.animalAuthorDetailsResponse,
      'authorType': instance.authorType,
      'post': instance.postId,
      'date': instance.date,
    };

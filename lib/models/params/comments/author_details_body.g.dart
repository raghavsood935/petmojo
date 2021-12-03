// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_details_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentAuthorDetailsBody _$CommentAuthorDetailsBodyFromJson(
        Map<String, dynamic> json) =>
    CommentAuthorDetailsBody(
      json['authorType'] as String,
      json['authorId'] as String,
    );

Map<String, dynamic> _$CommentAuthorDetailsBodyToJson(
        CommentAuthorDetailsBody instance) =>
    <String, dynamic>{
      'authorType': instance.authorType,
      'authorId': instance.authorId,
    };

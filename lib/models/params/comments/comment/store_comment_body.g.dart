// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_comment_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreCommentBody _$StoreCommentBodyFromJson(Map<String, dynamic> json) =>
    StoreCommentBody(
      json['postId'] as String,
      json['message'] as String,
      CommentAuthorDetailsBody.fromJson(
          json['authorDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreCommentBodyToJson(StoreCommentBody instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'message': instance.message,
      'authorDetails': instance.authorDetails.toJson(),
    };

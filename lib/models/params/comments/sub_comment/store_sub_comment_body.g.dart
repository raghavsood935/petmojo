// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_sub_comment_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreSubCommentBody _$StoreSubCommentBodyFromJson(Map<String, dynamic> json) =>
    StoreSubCommentBody(
      json['parentCommentId'] as String,
      json['message'] as String,
      CommentAuthorDetailsBody.fromJson(
          json['authorDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreSubCommentBodyToJson(
        StoreSubCommentBody instance) =>
    <String, dynamic>{
      'parentCommentId': instance.parentCommentId,
      'message': instance.message,
      'authorDetails': instance.authorDetails.toJson(),
    };

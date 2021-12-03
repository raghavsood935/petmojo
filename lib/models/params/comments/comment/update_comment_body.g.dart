// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_comment_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCommentBody _$UpdateCommentBodyFromJson(Map<String, dynamic> json) =>
    UpdateCommentBody(
      json['commentId'] as String,
      json['message'] as String,
      CommentAuthorDetailsBody.fromJson(
          json['authorDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateCommentBodyToJson(UpdateCommentBody instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'message': instance.message,
      'authorDetails': instance.authorDetails.toJson(),
    };

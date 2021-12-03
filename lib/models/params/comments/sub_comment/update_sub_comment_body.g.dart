// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_sub_comment_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSubCommentBody _$UpdateSubCommentBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateSubCommentBody(
      json['subCommentId'] as String,
      json['message'] as String,
    );

Map<String, dynamic> _$UpdateSubCommentBodyToJson(
        UpdateSubCommentBody instance) =>
    <String, dynamic>{
      'subCommentId': instance.subCommentId,
      'message': instance.message,
    };

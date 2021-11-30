// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitFeedbackBody _$SubmitFeedbackBodyFromJson(Map<String, dynamic> json) =>
    SubmitFeedbackBody(
      json['rating'] as int,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      json['screenshot'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$SubmitFeedbackBodyToJson(SubmitFeedbackBody instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'tags': instance.tags,
      'screenshot': instance.screenshot,
      'description': instance.description,
    };

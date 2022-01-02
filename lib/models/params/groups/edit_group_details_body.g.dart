// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_group_details_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditGroupDetailsBody _$EditGroupDetailsBodyFromJson(
        Map<String, dynamic> json) =>
    EditGroupDetailsBody(
      json['groupId'] as String,
      json['name'] as String,
      json['avatar'] as String,
      json['description'] as String,
      (json['hashtags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$EditGroupDetailsBodyToJson(
        EditGroupDetailsBody instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'name': instance.name,
      'avatar': instance.avatar,
      'description': instance.description,
      'hashtags': instance.hashtags,
    };

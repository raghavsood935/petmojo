// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_group_hashtags_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateGroupHashtagsBody _$UpdateGroupHashtagsBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateGroupHashtagsBody(
      json['groupId'] as String,
      json['hashtags'] as String,
    );

Map<String, dynamic> _$UpdateGroupHashtagsBodyToJson(
        UpdateGroupHashtagsBody instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'hashtags': instance.hashtags,
    };

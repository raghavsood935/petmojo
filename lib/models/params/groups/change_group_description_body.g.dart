// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_group_description_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeGroupDescriptionBody _$ChangeGroupDescriptionBodyFromJson(
        Map<String, dynamic> json) =>
    ChangeGroupDescriptionBody(
      json['groupId'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$ChangeGroupDescriptionBodyToJson(
        ChangeGroupDescriptionBody instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'description': instance.description,
    };

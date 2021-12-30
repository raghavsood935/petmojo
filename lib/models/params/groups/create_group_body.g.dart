// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGroupBody _$CreateGroupBodyFromJson(Map<String, dynamic> json) =>
    CreateGroupBody(
      json['avatar'] as String,
      json['name'] as String,
      json['coverPhoto'] as String,
    );

Map<String, dynamic> _$CreateGroupBodyToJson(CreateGroupBody instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'name': instance.name,
      'coverPhoto': instance.coverPhoto,
    };

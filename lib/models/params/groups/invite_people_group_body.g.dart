// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_people_group_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvitePeopleGroupBody _$InvitePeopleGroupBodyFromJson(
        Map<String, dynamic> json) =>
    InvitePeopleGroupBody(
      json['groupId'] as String,
      json['userId'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$InvitePeopleGroupBodyToJson(
        InvitePeopleGroupBody instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'userId': instance.userId,
      'type': instance.type,
    };

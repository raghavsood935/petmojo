// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'make_admin_group_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MakeGroupAdminBody _$MakeGroupAdminBodyFromJson(Map<String, dynamic> json) =>
    MakeGroupAdminBody(
      json['groupId'] as String,
      json['userId'] as String,
      json['userType'] as String,
    );

Map<String, dynamic> _$MakeGroupAdminBodyToJson(MakeGroupAdminBody instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'userId': instance.userId,
      'userType': instance.userType,
    };

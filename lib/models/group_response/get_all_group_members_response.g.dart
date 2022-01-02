// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_group_members_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAllGroupMembersResponse _$$_GetAllGroupMembersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetAllGroupMembersResponse(
      listOfMembers: (json['members'] as List<dynamic>?)
          ?.map((e) => GroupMemberResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetAllGroupMembersResponseToJson(
        _$_GetAllGroupMembersResponse instance) =>
    <String, dynamic>{
      'members': instance.listOfMembers,
    };

_$_GroupMemberResponse _$$_GroupMemberResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GroupMemberResponse(
      isAdmin: json['isAdmin'] as bool?,
      userType: json['userType'] as String?,
      user: json['user'] == null
          ? null
          : ProfileResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GroupMemberResponseToJson(
        _$_GroupMemberResponse instance) =>
    <String, dynamic>{
      'isAdmin': instance.isAdmin,
      'userType': instance.userType,
      'user': instance.user,
    };

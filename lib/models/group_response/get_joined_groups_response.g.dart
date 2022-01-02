// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_joined_groups_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetJoinedGroupResponse _$$_GetJoinedGroupResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetJoinedGroupResponse(
      listOfJoinedGroup: (json['message'] as List<dynamic>?)
          ?.map((e) =>
              GetJoinedGroupInfoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$_GetJoinedGroupResponseToJson(
        _$_GetJoinedGroupResponse instance) =>
    <String, dynamic>{
      'message': instance.listOfJoinedGroup,
      'success': instance.success,
    };

_$_GetJoinedGroupInfoResponse _$$_GetJoinedGroupInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetJoinedGroupInfoResponse(
      isAdmin: json['isAdmin'] as bool?,
      group: json['group'] == null
          ? null
          : GroupBasicInfoResponse.fromJson(
              json['group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetJoinedGroupInfoResponseToJson(
        _$_GetJoinedGroupInfoResponse instance) =>
    <String, dynamic>{
      'isAdmin': instance.isAdmin,
      'group': instance.group,
    };

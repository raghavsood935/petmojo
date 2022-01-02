// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_group_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetGroupInfoResponse _$$_GetGroupInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetGroupInfoResponse(
      group: json['group'] == null
          ? null
          : GroupBasicInfoResponse.fromJson(
              json['group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetGroupInfoResponseToJson(
        _$_GetGroupInfoResponse instance) =>
    <String, dynamic>{
      'group': instance.group,
    };

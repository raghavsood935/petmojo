// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_groups_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAllGroupResponse _$$_GetAllGroupResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetAllGroupResponse(
      listOfGroups: (json['message'] as List<dynamic>?)
          ?.map(
              (e) => GroupBasicInfoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$_GetAllGroupResponseToJson(
        _$_GetAllGroupResponse instance) =>
    <String, dynamic>{
      'message': instance.listOfGroups,
      'success': instance.success,
    };

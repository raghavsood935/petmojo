// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_create_resopnse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupCreateResponse _$$_GroupCreateResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GroupCreateResponse(
      message: json['message'] as String?,
      success: json['success'] as bool?,
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$$_GroupCreateResponseToJson(
        _$_GroupCreateResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
      'groupId': instance.groupId,
    };

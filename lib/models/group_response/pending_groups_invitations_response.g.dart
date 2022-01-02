// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_groups_invitations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PendingGroupInvitationResponse _$$_PendingGroupInvitationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PendingGroupInvitationResponse(
      listOfInvitations: (json['message'] as List<dynamic>?)
          ?.map((e) =>
              GroupInvitationResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$_PendingGroupInvitationResponseToJson(
        _$_PendingGroupInvitationResponse instance) =>
    <String, dynamic>{
      'message': instance.listOfInvitations,
      'success': instance.success,
    };

_$_GroupInvitationResponse _$$_GroupInvitationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GroupInvitationResponse(
      Id: json['_id'] as String?,
      group: json['group'] == null
          ? null
          : GroupBasicInfoResponse.fromJson(
              json['group'] as Map<String, dynamic>),
      personType: json['personType'] as String?,
      personInvited: json['personInvited'] == null
          ? null
          : ProfileResponse.fromJson(
              json['personInvited'] as Map<String, dynamic>),
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_GroupInvitationResponseToJson(
        _$_GroupInvitationResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'group': instance.group,
      'personType': instance.personType,
      'personInvited': instance.personInvited,
      'date': instance.date,
    };

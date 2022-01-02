// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_basic_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupBasicInfoResponse _$$_GroupBasicInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GroupBasicInfoResponse(
      description: json['description'] as String?,
      members: json['members'] as int?,
      Id: json['_id'] as String?,
      avatar: json['avatar'] as String?,
      hashtags: (json['hashtags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      isMember: json['isMember'] as bool?,
      isAdmin: json['isAdmin'] as bool?,
    );

Map<String, dynamic> _$$_GroupBasicInfoResponseToJson(
        _$_GroupBasicInfoResponse instance) =>
    <String, dynamic>{
      'description': instance.description,
      'members': instance.members,
      '_id': instance.Id,
      'avatar': instance.avatar,
      'hashtags': instance.hashtags,
      'name': instance.name,
      'coverPhoto': instance.coverPhoto,
      'isMember': instance.isMember,
      'isAdmin': instance.isAdmin,
    };

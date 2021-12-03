// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_profiles_foy_you.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfProfilesForYouResponse _$$_ListOfProfilesForYouResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfProfilesForYouResponse(
      listOfProfiles: (json['profiles'] as List<dynamic>?)
          ?.map(
              (e) => ProfileForYouResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfProfilesForYouResponseToJson(
        _$_ListOfProfilesForYouResponse instance) =>
    <String, dynamic>{
      'profiles': instance.listOfProfiles,
    };

_$_ProfileForYouResponse _$$_ProfileForYouResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileForYouResponse(
      Id: json['_id'] as String?,
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
      avatar: json['avatar'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ProfileForYouResponseToJson(
        _$_ProfileForYouResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'username': instance.username,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'type': instance.type,
    };

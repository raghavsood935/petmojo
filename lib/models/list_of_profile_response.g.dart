// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfProfilesResponse _$$_ListOfProfilesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfProfilesResponse(
      listOfProfiles: (json['profiles'] as List<dynamic>?)
          ?.map((e) => ProfileResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfProfilesResponseToJson(
        _$_ListOfProfilesResponse instance) =>
    <String, dynamic>{
      'profiles': instance.listOfProfiles,
    };

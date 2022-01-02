// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_animals_by_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAnimalsByLocationResponse _$$_GetAnimalsByLocationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetAnimalsByLocationResponse(
      animals: (json['animals'] as List<dynamic>?)
          ?.map((e) => GetAnimalsByLocationDetailsResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetAnimalsByLocationResponseToJson(
        _$_GetAnimalsByLocationResponse instance) =>
    <String, dynamic>{
      'animals': instance.animals,
    };

_$_GetAnimalsByLocationDetailsResponse
    _$$_GetAnimalsByLocationDetailsResponseFromJson(
            Map<String, dynamic> json) =>
        _$_GetAnimalsByLocationDetailsResponse(
          Id: json['_id'] as String?,
          name: json['name'] as String?,
          username: json['username'] as String?,
          avatar: json['avatar'] as String?,
          location: json['location'] == null
              ? null
              : LatLongResponse.fromJson(
                  json['location'] as Map<String, dynamic>),
          guardians: (json['guardians'] as List<dynamic>?)
              ?.map((e) => GuardianResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
          distance: json['distance'] as int?,
        );

Map<String, dynamic> _$$_GetAnimalsByLocationDetailsResponseToJson(
        _$_GetAnimalsByLocationDetailsResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'name': instance.name,
      'username': instance.username,
      'avatar': instance.avatar,
      'location': instance.location,
      'guardians': instance.guardians,
      'distance': instance.distance,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_guardians.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfGuardiansResponse _$$_ListOfGuardiansResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfGuardiansResponse(
      listOfGuardians: (json['guardians'] as List<dynamic>?)
          ?.map((e) => GuardianResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfGuardiansResponseToJson(
        _$_ListOfGuardiansResponse instance) =>
    <String, dynamic>{
      'guardians': instance.listOfGuardians,
    };

_$_GuardianResponse _$$_GuardianResponseFromJson(Map<String, dynamic> json) =>
    _$_GuardianResponse(
      confirmed: json['confirmed'] as bool?,
      guardianDetailsResponse: json['user'] == null
          ? null
          : GuardianDetailsResponse.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GuardianResponseToJson(_$_GuardianResponse instance) =>
    <String, dynamic>{
      'confirmed': instance.confirmed,
      'user': instance.guardianDetailsResponse,
    };

_$_GuardianDetailsResponse _$$_GuardianDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GuardianDetailsResponse(
      confirmed: json['confirmed'] as bool?,
      Id: json['_id'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_GuardianDetailsResponseToJson(
        _$_GuardianDetailsResponse instance) =>
    <String, dynamic>{
      'confirmed': instance.confirmed,
      '_id': instance.Id,
      'email': instance.email,
      'username': instance.username,
      'avatar': instance.avatar,
    };

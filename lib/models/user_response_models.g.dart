// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$$_UserResponseFromJson(Map<String, dynamic> json) =>
    _$_UserResponse(
      localUser: json['user'] == null
          ? null
          : LocalUser.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'user': instance.localUser,
      'token': instance.token,
    };

_$_UserNameAvailableResponse _$$_UserNameAvailableResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserNameAvailableResponse(
      isAvailable: json['isAvailable'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserNameAvailableResponseToJson(
        _$_UserNameAvailableResponse instance) =>
    <String, dynamic>{
      'isAvailable': instance.isAvailable,
    };

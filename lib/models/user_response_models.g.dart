// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$_$_UserResponseFromJson(Map<String, dynamic> json) {
  return _$_UserResponse(
    localUser: json['localUser'] == null
        ? null
        : LocalUser.fromJson(json['localUser'] as Map<String, dynamic>),
    token: json['token'] as String?,
  );
}

Map<String, dynamic> _$_$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'localUser': instance.localUser,
      'token': instance.token,
    };

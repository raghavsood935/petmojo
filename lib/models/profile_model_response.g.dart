// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileResponse _$$_ProfileResponseFromJson(Map<String, dynamic> json) =>
    _$_ProfileResponse(
      Id: json['_id'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      fullname: json['fullName'] as String?,
      following: json['following'] as int?,
    );

Map<String, dynamic> _$$_ProfileResponseToJson(_$_ProfileResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'username': instance.username,
      'avatar': instance.avatar,
      'fullName': instance.fullname,
      'following': instance.following,
    };

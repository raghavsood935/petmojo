// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_login_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialLoginBody _$SocialLoginBodyFromJson(Map<String, dynamic> json) {
  return SocialLoginBody(
    json['code'] as String,
    json['state'] as String,
  );
}

Map<String, dynamic> _$SocialLoginBodyToJson(SocialLoginBody instance) =>
    <String, dynamic>{
      'code': instance.code,
      'state': instance.state,
    };

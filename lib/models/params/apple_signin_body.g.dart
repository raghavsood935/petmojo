// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apple_signin_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppleSigninBody _$AppleSigninBodyFromJson(Map<String, dynamic> json) =>
    AppleSigninBody(
      json['appleToken'] as String,
      json['fullName'] as String,
      json['email'] as String,
    );

Map<String, dynamic> _$AppleSigninBodyToJson(AppleSigninBody instance) =>
    <String, dynamic>{
      'appleToken': instance.appleToken,
      'fullName': instance.fullName,
      'email': instance.email,
    };

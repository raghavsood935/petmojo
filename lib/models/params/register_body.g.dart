// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterBody _$RegisterBodyFromJson(Map<String, dynamic> json) {
  return RegisterBody(
    json['username'] as String,
    json['fullName'] as String,
    json['email'] as String,
    json['password'] as String,
  );
}

Map<String, dynamic> _$RegisterBodyToJson(RegisterBody instance) =>
    <String, dynamic>{
      'username': instance.username,
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
    };

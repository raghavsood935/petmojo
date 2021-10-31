// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordBody _$ResetPasswordBodyFromJson(Map<String, dynamic> json) {
  return ResetPasswordBody(
    json['email'] as String,
  );
}

Map<String, dynamic> _$ResetPasswordBodyToJson(ResetPasswordBody instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

ConfirmOTPBody _$ConfirmOTPBodyFromJson(Map<String, dynamic> json) {
  return ConfirmOTPBody(
    json['otp'] as String,
  );
}

Map<String, dynamic> _$ConfirmOTPBodyToJson(ConfirmOTPBody instance) =>
    <String, dynamic>{
      'otp': instance.otp,
    };

UpdatePasswordBody _$UpdatePasswordBodyFromJson(Map<String, dynamic> json) {
  return UpdatePasswordBody(
    json['newPassword'] as String,
  );
}

Map<String, dynamic> _$UpdatePasswordBodyToJson(UpdatePasswordBody instance) =>
    <String, dynamic>{
      'newPassword': instance.newPassword,
    };

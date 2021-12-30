// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_mobile_otp_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyMobileOTPBody _$VerifyMobileOTPBodyFromJson(Map<String, dynamic> json) =>
    VerifyMobileOTPBody(
      json['phoneNumber'] as String,
      json['otp'] as String,
    );

Map<String, dynamic> _$VerifyMobileOTPBodyToJson(
        VerifyMobileOTPBody instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'otp': instance.otp,
    };

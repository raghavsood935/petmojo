// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_mobile_otp_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendMobileOTPBody _$ResendMobileOTPBodyFromJson(Map<String, dynamic> json) =>
    ResendMobileOTPBody(
      json['phoneNumber'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$ResendMobileOTPBodyToJson(
        ResendMobileOTPBody instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'type': instance.type,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_mobile_otp_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMobileOTPBody _$SendMobileOTPBodyFromJson(Map<String, dynamic> json) =>
    SendMobileOTPBody(
      json['phoneNumber'] as String,
      json['countryCode'] as String,
    );

Map<String, dynamic> _$SendMobileOTPBodyToJson(SendMobileOTPBody instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'countryCode': instance.countryCode,
    };

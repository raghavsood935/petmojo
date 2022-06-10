// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gps_tracking_wait_list_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GpsTrackingWaitListBody _$GpsTrackingWaitListBodyFromJson(
        Map<String, dynamic> json) =>
    GpsTrackingWaitListBody(
      json['fullName'] as String,
      json['email'] as String,
      json['phone'] as String,
      json['noOfTrackers'] as int,
    );

Map<String, dynamic> _$GpsTrackingWaitListBodyToJson(
        GpsTrackingWaitListBody instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'noOfTrackers': instance.noOfTrackers,
    };

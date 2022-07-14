// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_running_time_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRunningTimeBody _$GetRunningTimeBodyFromJson(Map<String, dynamic> json) =>
    GetRunningTimeBody(
      json['appointmentId'] as String,
      json['run1'] as bool,
      json['time'] as int,
      json['run2'] as bool,
    );

Map<String, dynamic> _$GetRunningTimeBodyToJson(GetRunningTimeBody instance) =>
    <String, dynamic>{
      'appointmentId': instance.appointmentId,
      'run1': instance.run1,
      'run2': instance.run2,
      'time': instance.time,
    };

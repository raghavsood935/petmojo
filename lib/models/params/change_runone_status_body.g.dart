// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_runone_status_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeRunOneStatusBody _$ChangeRunOneStatusBodyFromJson(
        Map<String, dynamic> json) =>
    ChangeRunOneStatusBody(
      json['type'] as String,
      json['appointmentId'] as String,
      json['date'] as int,
      json['run1Status'] as int,
    );

Map<String, dynamic> _$ChangeRunOneStatusBodyToJson(
        ChangeRunOneStatusBody instance) =>
    <String, dynamic>{
      'type': instance.type,
      'appointmentId': instance.appointmentId,
      'date': instance.date,
      'run1Status': instance.run1Status,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_runtwo_status_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeRunTwoStatusBody _$ChangeRunTwoStatusBodyFromJson(
        Map<String, dynamic> json) =>
    ChangeRunTwoStatusBody(
      json['type'] as String,
      json['appointmentId'] as String,
      json['date'] as int,
      json['run2Status'] as int,
    );

Map<String, dynamic> _$ChangeRunTwoStatusBodyToJson(
        ChangeRunTwoStatusBody instance) =>
    <String, dynamic>{
      'type': instance.type,
      'appointmentId': instance.appointmentId,
      'date': instance.date,
      'run2Status': instance.run2Status,
    };

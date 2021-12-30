// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_appointment_status_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeAppointmentStatusBody _$ChangeAppointmentStatusBodyFromJson(
        Map<String, dynamic> json) =>
    ChangeAppointmentStatusBody(
      json['bookingDetailsId'] as String,
      json['bookingStatus'] as int,
    );

Map<String, dynamic> _$ChangeAppointmentStatusBodyToJson(
        ChangeAppointmentStatusBody instance) =>
    <String, dynamic>{
      'bookingDetailsId': instance.bookingDetailsId,
      'bookingStatus': instance.bookingStatus,
    };

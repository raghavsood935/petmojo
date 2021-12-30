// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_runone_report_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetReportOneBody _$GetReportOneBodyFromJson(Map<String, dynamic> json) =>
    GetReportOneBody(
      json['bookingDetailsId'] as String,
      json['date'] as int,
      json['runReport1'] as bool,
    );

Map<String, dynamic> _$GetReportOneBodyToJson(GetReportOneBody instance) =>
    <String, dynamic>{
      'bookingDetailsId': instance.bookingDetailsId,
      'date': instance.date,
      'runReport1': instance.runReport1,
    };

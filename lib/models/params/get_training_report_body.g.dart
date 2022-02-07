// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_training_report_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTrainingReportBody _$GetTrainingReportBodyFromJson(
        Map<String, dynamic> json) =>
    GetTrainingReportBody(
      json['bookingDetailsId'] as String,
      json['sessionNo'] as int,
    );

Map<String, dynamic> _$GetTrainingReportBodyToJson(
        GetTrainingReportBody instance) =>
    <String, dynamic>{
      'bookingDetailsId': instance.bookingDetailsId,
      'sessionNo': instance.sessionNo,
    };

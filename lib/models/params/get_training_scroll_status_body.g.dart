// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_training_scroll_status_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTrainingScrollStatusBody _$GetTrainingScrollStatusBodyFromJson(
        Map<String, dynamic> json) =>
    GetTrainingScrollStatusBody(
      json['bookingDetailsId'] as String,
      json['sessionNo'] as int,
    );

Map<String, dynamic> _$GetTrainingScrollStatusBodyToJson(
        GetTrainingScrollStatusBody instance) =>
    <String, dynamic>{
      'bookingDetailsId': instance.bookingDetailsId,
      'sessionNo': instance.sessionNo,
    };

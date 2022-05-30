// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_runone_rating_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetRunOneRatingBody _$SetRunOneRatingBodyFromJson(Map<String, dynamic> json) =>
    SetRunOneRatingBody(
      json['bookingDetailsId'] as String,
      json['date'] as int,
      json['rating'] as int,
      json['runReport1'] as bool,
    );

Map<String, dynamic> _$SetRunOneRatingBodyToJson(
        SetRunOneRatingBody instance) =>
    <String, dynamic>{
      'bookingDetailsId': instance.bookingDetailsId,
      'date': instance.date,
      'rating': instance.rating,
      'runReport1': instance.runReport1,
    };

SetTrainingRatingBody _$SetTrainingRatingBodyFromJson(
        Map<String, dynamic> json) =>
    SetTrainingRatingBody(
      json['bookingDetailsId'] as String,
      json['rating'] as int,
      json['sessionNo'] as int,
    );

Map<String, dynamic> _$SetTrainingRatingBodyToJson(
        SetTrainingRatingBody instance) =>
    <String, dynamic>{
      'bookingDetailsId': instance.bookingDetailsId,
      'rating': instance.rating,
      'sessionNo': instance.sessionNo,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_runtwo_rating_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetRunTwoRatingBody _$SetRunTwoRatingBodyFromJson(Map<String, dynamic> json) =>
    SetRunTwoRatingBody(
      json['bookingDetailsId'] as String,
      json['date'] as int,
      json['rating'] as int,
      json['runReport2'] as bool,
    );

Map<String, dynamic> _$SetRunTwoRatingBodyToJson(
        SetRunTwoRatingBody instance) =>
    <String, dynamic>{
      'bookingDetailsId': instance.bookingDetailsId,
      'date': instance.date,
      'rating': instance.rating,
      'runReport2': instance.runReport2,
    };

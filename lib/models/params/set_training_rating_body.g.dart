// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_training_rating_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

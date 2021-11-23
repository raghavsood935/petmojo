// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_testimony_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetTestimonyBody _$SetTestimonyBodyFromJson(Map<String, dynamic> json) =>
    SetTestimonyBody(
      json['bookingDetailsId'] as String,
      json['review'] as String,
      json['rating'] as int,
    );

Map<String, dynamic> _$SetTestimonyBodyToJson(SetTestimonyBody instance) =>
    <String, dynamic>{
      'bookingDetailsId': instance.bookingDetailsId,
      'review': instance.review,
      'rating': instance.rating,
    };

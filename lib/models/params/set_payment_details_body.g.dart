// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_payment_details_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetPaymentDetailsBody _$SetPaymentDetailsBodyFromJson(
        Map<String, dynamic> json) =>
    SetPaymentDetailsBody(
      json['bookingId'] as String,
      json['transactionId'] as String,
    );

Map<String, dynamic> _$SetPaymentDetailsBodyToJson(
        SetPaymentDetailsBody instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'transactionId': instance.transactionId,
    };

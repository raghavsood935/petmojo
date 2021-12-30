// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_payment_details_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPaymentDetailsBody _$GetPaymentDetailsBodyFromJson(
        Map<String, dynamic> json) =>
    GetPaymentDetailsBody(
      json['amount'] as String,
      json['bookingId'] as String,
    );

Map<String, dynamic> _$GetPaymentDetailsBodyToJson(
        GetPaymentDetailsBody instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'bookingId': instance.bookingId,
    };

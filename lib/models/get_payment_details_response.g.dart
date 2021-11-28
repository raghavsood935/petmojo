// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_payment_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPaymentDetailsResponse _$$_GetPaymentDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetPaymentDetailsResponse(
      orderId: json['id'] as String?,
      entity: json['entity'] as String?,
      amount: json['amount'] as int?,
      amountPaid: json['amount_paid'] as int?,
      amountDue: json['amount_due'] as int?,
      currency: json['currency'] as String?,
      receiptId: json['receipt'] as String?,
      offerId: json['offer_id'] as String?,
      status: json['status'] as String?,
      attempts: json['attempts'] as int?,
      bookingDetails: json['created_at'] as int?,
    );

Map<String, dynamic> _$$_GetPaymentDetailsResponseToJson(
        _$_GetPaymentDetailsResponse instance) =>
    <String, dynamic>{
      'id': instance.orderId,
      'entity': instance.entity,
      'amount': instance.amount,
      'amount_paid': instance.amountPaid,
      'amount_due': instance.amountDue,
      'currency': instance.currency,
      'receipt': instance.receiptId,
      'offer_id': instance.offerId,
      'status': instance.status,
      'attempts': instance.attempts,
      'created_at': instance.bookingDetails,
    };

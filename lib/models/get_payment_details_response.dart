import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_payment_details_response.freezed.dart';
part 'get_payment_details_response.g.dart';

@freezed
class GetPaymentDetailsResponse with _$GetPaymentDetailsResponse {
  GetPaymentDetailsResponse._();

  factory GetPaymentDetailsResponse({
    @JsonKey(name: "id") String? orderId,
    @JsonKey(name: "entity") String? entity,
    @JsonKey(name: "amount") int? amount,
    @JsonKey(name: "amount_paid") int? amountPaid,
    @JsonKey(name: "amount_due") int? amountDue,
    @JsonKey(name: "currency") String? currency,
    @JsonKey(name: "receipt") String? receiptId,
    @JsonKey(name: "offer_id") String? offerId,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "attempts") int? attempts,
    @JsonKey(name: "created_at") int? bookingDetails,
  }) = _GetPaymentDetailsResponse;

  factory GetPaymentDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentDetailsResponseFromJson(json);
}

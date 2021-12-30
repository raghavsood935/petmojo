import 'package:json_annotation/json_annotation.dart';

part 'get_payment_details_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetPaymentDetailsBody {
  final String amount;
  final String bookingId;

  GetPaymentDetailsBody(this.amount, this.bookingId);

  factory GetPaymentDetailsBody.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetPaymentDetailsBodyToJson(this);
}

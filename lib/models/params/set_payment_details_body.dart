import 'package:json_annotation/json_annotation.dart';

part 'set_payment_details_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SetPaymentDetailsBody {
  final String bookingId;
  final String transactionId;
  final int amount;

  SetPaymentDetailsBody(this.bookingId, this.transactionId, this.amount);

  factory SetPaymentDetailsBody.fromJson(Map<String, dynamic> json) =>
      _$SetPaymentDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SetPaymentDetailsBodyToJson(this);
}

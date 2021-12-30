import 'package:json_annotation/json_annotation.dart';

part 'verify_mobile_otp_body.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyMobileOTPBody {
  final String phoneNumber;
  final String otp;

  VerifyMobileOTPBody(this.phoneNumber, this.otp);

  factory VerifyMobileOTPBody.fromJson(Map<String, dynamic> json) =>
      _$VerifyMobileOTPBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyMobileOTPBodyToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'resend_mobile_otp_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ResendMobileOTPBody {
  final String phoneNumber;
  final String type;

  ResendMobileOTPBody(this.phoneNumber, this.type);

  factory ResendMobileOTPBody.fromJson(Map<String, dynamic> json) =>
      _$ResendMobileOTPBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ResendMobileOTPBodyToJson(this);
}

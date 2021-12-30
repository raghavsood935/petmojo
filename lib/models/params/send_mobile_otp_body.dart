import 'package:json_annotation/json_annotation.dart';

part 'send_mobile_otp_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SendMobileOTPBody {
  final String phoneNumber;
  final String countryCode;

  SendMobileOTPBody(this.phoneNumber, this.countryCode);

  factory SendMobileOTPBody.fromJson(Map<String, dynamic> json) =>
      _$SendMobileOTPBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SendMobileOTPBodyToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'reset_password_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ResetPasswordBody {
  final String email;

  ResetPasswordBody(this.email);

  factory ResetPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConfirmOTPBody {
  final String otp;

  ConfirmOTPBody(this.otp);

  factory ConfirmOTPBody.fromJson(Map<String, dynamic> json) =>
      _$ConfirmOTPBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmOTPBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdatePasswordBody {
  final String newPassword;

  UpdatePasswordBody(this.newPassword);

  factory UpdatePasswordBody.fromJson(Map<String, dynamic> json) =>
      _$UpdatePasswordBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePasswordBodyToJson(this);
}

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

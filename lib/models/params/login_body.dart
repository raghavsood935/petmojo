import 'package:json_annotation/json_annotation.dart';

part 'login_body.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginBody {
  final String usernameOrEmail;
  final String password;

  LoginBody(this.usernameOrEmail, this.password);

  factory LoginBody.fromJson(Map<String, dynamic> json) =>
      _$LoginBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LoginBodyToJson(this);
}

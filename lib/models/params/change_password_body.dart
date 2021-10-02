import 'package:json_annotation/json_annotation.dart';

part 'change_password_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ChangePasswordBody {
  final String oldPassword;
  final String newPassword;

  ChangePasswordBody(this.oldPassword, this.newPassword);

  factory ChangePasswordBody.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordBodyToJson(this);
}

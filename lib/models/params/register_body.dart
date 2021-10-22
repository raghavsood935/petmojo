import 'package:json_annotation/json_annotation.dart';

part 'register_body.g.dart';

@JsonSerializable(explicitToJson: true)
class RegisterBody {
  final String username;
  final String fullName;
  final String email;
  final String password;

  RegisterBody(this.username, this.fullName, this.email, this.password);

  factory RegisterBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterBodyToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'register_body.g.dart';

@JsonSerializable(explicitToJson: true)
class RegisterBody {
  final String email;
  final String password;

  RegisterBody(this.email, this.password);

  factory RegisterBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterBodyToJson(this);
}

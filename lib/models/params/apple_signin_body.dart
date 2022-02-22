import 'package:json_annotation/json_annotation.dart';

part 'apple_signin_body.g.dart';

@JsonSerializable(explicitToJson: true)
class AppleSigninBody {
  final String appleToken;
  final String fullName;
  final String email;

  AppleSigninBody(this.appleToken, this.fullName, this.email);

  factory AppleSigninBody.fromJson(Map<String, dynamic> json) =>
      _$AppleSigninBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AppleSigninBodyToJson(this);
}

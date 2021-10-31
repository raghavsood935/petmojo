import 'package:json_annotation/json_annotation.dart';

part 'social_login_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SocialLoginBody {
  final String code;
  final String state;

  SocialLoginBody(this.code, this.state);

  factory SocialLoginBody.fromJson(Map<String, dynamic> json) =>
      _$SocialLoginBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SocialLoginBodyToJson(this);
}

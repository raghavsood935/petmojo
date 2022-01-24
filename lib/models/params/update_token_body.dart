import 'package:json_annotation/json_annotation.dart';

part 'update_token_body.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateTokenBody {
  final String token;

  UpdateTokenBody(this.token);

  factory UpdateTokenBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateTokenBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateTokenBodyToJson(this);
}

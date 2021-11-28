import 'package:json_annotation/json_annotation.dart';

part 'from_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class FromRequestBody {
  final String fromId;
  final String fromType;

  FromRequestBody(this.fromId, this.fromType);

  factory FromRequestBody.fromJson(Map<String, dynamic> json) =>
      _$FromRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$FromRequestBodyToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'to_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ToRequestBody {
  final String toId;
  final String toType;

  ToRequestBody(this.toId, this.toType);

  factory ToRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ToRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ToRequestBodyToJson(this);
}

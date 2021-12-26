import 'package:json_annotation/json_annotation.dart';

part 'reject_relation_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class RejectRelationRequestBody {
  final String id;
  final String animalId;

  RejectRelationRequestBody(this.id, this.animalId);

  factory RejectRelationRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RejectRelationRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RejectRelationRequestBodyToJson(this);
}

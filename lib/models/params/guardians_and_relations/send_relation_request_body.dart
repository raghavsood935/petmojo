import 'package:json_annotation/json_annotation.dart';

part 'send_relation_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SendRelationRequestBody {
  final String idRelatedAnimal;
  final String animalId;
  final String relation;

  SendRelationRequestBody(this.idRelatedAnimal, this.animalId, this.relation);

  factory SendRelationRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SendRelationRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SendRelationRequestBodyToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'confirm_relation_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ConfirmRelationRequestBody {
  final String idRelatedAnimal;
  final String animalId;

  ConfirmRelationRequestBody(this.idRelatedAnimal, this.animalId);

  factory ConfirmRelationRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ConfirmRelationRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmRelationRequestBodyToJson(this);
}

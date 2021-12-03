import 'package:json_annotation/json_annotation.dart';

part 'confirm_relation_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ConfirmRelationBody {
  final String animalId;
  final String idRelatedAnimal;

  ConfirmRelationBody(this.animalId, this.idRelatedAnimal);

  factory ConfirmRelationBody.fromJson(Map<String, dynamic> json) =>
      _$ConfirmRelationBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmRelationBodyToJson(this);
}

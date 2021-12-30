import 'package:json_annotation/json_annotation.dart';

part 'get_animal_relations_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetAnimalRelationsBody {
  final String animalId;

  GetAnimalRelationsBody(this.animalId);

  factory GetAnimalRelationsBody.fromJson(Map<String, dynamic> json) =>
      _$GetAnimalRelationsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetAnimalRelationsBodyToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:tamely/models/params/location_body.dart';

part 'edit_animal_type_body.g.dart';

@JsonSerializable(explicitToJson: true)
class EditAnimalTypeBody {
  final String animalId;
  final String animalType;

  EditAnimalTypeBody(this.animalId, this.animalType);

  factory EditAnimalTypeBody.fromJson(Map<String, dynamic> json) =>
      _$EditAnimalTypeBodyFromJson(json);

  Map<String, dynamic> toJson() => _$EditAnimalTypeBodyToJson(this);
}

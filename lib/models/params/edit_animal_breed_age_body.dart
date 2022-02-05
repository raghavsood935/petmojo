import 'package:json_annotation/json_annotation.dart';
import 'package:tamely/models/params/location_body.dart';

part 'edit_animal_breed_age_body.g.dart';

@JsonSerializable(explicitToJson: true)
class EditAnimalBreedAgeBody {
  final String animalId;
  final String age;
  final String breed;

  EditAnimalBreedAgeBody(this.animalId, this.age, this.breed);

  factory EditAnimalBreedAgeBody.fromJson(Map<String, dynamic> json) =>
      _$EditAnimalBreedAgeBodyFromJson(json);

  Map<String, dynamic> toJson() => _$EditAnimalBreedAgeBodyToJson(this);
}

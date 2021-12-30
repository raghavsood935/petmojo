import 'package:json_annotation/json_annotation.dart';

part 'edit_animal_profile_details_body.g.dart';

@JsonSerializable(explicitToJson: true)
class EditAnimalProfileDetailsBody {
  final String petId;
  final int friendlinessWithHumans;
  final int friendlinessWithAnimals;
  final String favouriteThings;
  final String thingsDislikes;
  final String uniqueHabits;
  final String eatingHabits;

  EditAnimalProfileDetailsBody(
      this.petId,
      this.friendlinessWithHumans,
      this.friendlinessWithAnimals,
      this.favouriteThings,
      this.thingsDislikes,
      this.uniqueHabits,
      this.eatingHabits);

  factory EditAnimalProfileDetailsBody.fromJson(Map<String, dynamic> json) =>
      _$EditAnimalProfileDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$EditAnimalProfileDetailsBodyToJson(this);
}

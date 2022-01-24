import 'package:json_annotation/json_annotation.dart';
import 'package:tamely/models/params/location_body.dart';

part 'create_animal_profile_body.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateAnimalProfileBody {
  final String name;
  final String username;
  final String avatar;
  final String category;
  final String bio;
  final String animalType;
  final String gender;
  final String breed;
  final String age;
  final bool mating;
  final bool adoption;
  final bool playBuddies;
  final bool registeredWithKennelClub;
  final String playFrom;
  final String playTo;
  final LocationBody location;

  CreateAnimalProfileBody(
      this.name,
      this.username,
      this.avatar,
      this.category,
      this.bio,
      this.animalType,
      this.gender,
      this.breed,
      this.age,
      this.mating,
      this.adoption,
      this.playBuddies,
      this.registeredWithKennelClub,
      this.playFrom,
      this.playTo,
      this.location);

  factory CreateAnimalProfileBody.fromJson(Map<String, dynamic> json) =>
      _$CreateAnimalProfileBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAnimalProfileBodyToJson(this);
}

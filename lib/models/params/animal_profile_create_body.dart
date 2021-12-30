import 'package:json_annotation/json_annotation.dart';

part 'animal_profile_create_body.g.dart';

@JsonSerializable(explicitToJson: true)
class AnimalProfileCreateBody {
  String name;
  String username;
  String avatar;
  String category;
  String bio;
  String animalType;
  String gender;
  String breed;
  String age;
  bool mating;
  bool adoption;
  bool playBuddies;
  bool registeredWithKennelClub;
  String playFrom;
  String playTo;
  String location;

  AnimalProfileCreateBody(
      {required this.name,
      required this.username,
      required this.avatar,
      required this.category,
      required this.bio,
      required this.animalType,
      required this.gender,
      required this.breed,
      required this.age,
      required this.mating,
      required this.adoption,
      required this.registeredWithKennelClub,
      required this.playBuddies,
      required this.playFrom,
      required this.playTo,
      required this.location});

  factory AnimalProfileCreateBody.fromJson(Map<String, dynamic> json) =>
      _$AnimalProfileCreateBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AnimalProfileCreateBodyToJson(this);
}

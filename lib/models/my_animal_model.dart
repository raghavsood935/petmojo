import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/guardians_model.dart';

part 'my_animal_model.freezed.dart';
part 'my_animal_model.g.dart';

@freezed
class MyAnimalModelResponse with _$MyAnimalModelResponse {
  MyAnimalModelResponse._();

  factory MyAnimalModelResponse({
    @JsonKey(name: "mating") bool? mating,
    @JsonKey(name: "adoption") bool? adoption,
    @JsonKey(name: "playBuddies") bool? playBuddies,
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "bio") String? bio,
    @JsonKey(name: "animalType") String? animalType,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "breed") String? breed,
    @JsonKey(name: "age") String? age,
    @JsonKey(name: "playFrom") String? playFrom,
    @JsonKey(name: "playTo") String? playTo,
    @JsonKey(name: "servicePet") bool? servicePet,
    @JsonKey(name: "spayed") bool? spayed,
    @JsonKey(name: "registeredWithKennelClub") bool? registeredWithKennelClub,
    @JsonKey(name: "friendlinessWithHumans") int? friendlinessWithHumans,
    @JsonKey(name: "friendlinessWithAnimals") int? friendlinessWithAnimals,
    @JsonKey(name: "favouriteThings") String? favouriteThings,
    @JsonKey(name: "thingsDislikes") String? thingsDislikes,
    @JsonKey(name: "uniqueHabits") String? uniqueHabits,
    @JsonKey(name: "eatingHabits") String? eatingHabits,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "guardians") List<GuardiansModelResponse>? guardians,
    @JsonKey(name: "__v") int? v,
  }) = _MyAnimalModelResponse;

  factory MyAnimalModelResponse.fromJson(Map<String, dynamic> json) =>
      _$MyAnimalModelResponseFromJson(json);
}

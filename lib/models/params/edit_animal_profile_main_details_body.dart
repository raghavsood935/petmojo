import 'package:json_annotation/json_annotation.dart';

part 'edit_animal_profile_main_details_body.g.dart';

@JsonSerializable(explicitToJson: true)
class EditAnimalProfileMainDetailsBody {
  final String petId;
  final String username;
  final String name;
  final String bio;
  final String avatar;

  EditAnimalProfileMainDetailsBody(
      this.petId, this.username, this.name, this.bio, this.avatar);

  factory EditAnimalProfileMainDetailsBody.fromJson(
          Map<String, dynamic> json) =>
      _$EditAnimalProfileMainDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$EditAnimalProfileMainDetailsBodyToJson(this);
}

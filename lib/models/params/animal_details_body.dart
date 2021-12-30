import 'package:json_annotation/json_annotation.dart';

part 'animal_details_body.g.dart';

@JsonSerializable(explicitToJson: true)
class AnimalProfileDetailsBody {
  final String petId;

  AnimalProfileDetailsBody(this.petId);

  factory AnimalProfileDetailsBody.fromJson(Map<String, dynamic> json) =>
      _$AnimalProfileDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AnimalProfileDetailsBodyToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:tamely/models/params/location_body.dart';

part 'create_animal_profile_new_body.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateAnimalProfileNewBody {
  final String name;
  final String username;

  CreateAnimalProfileNewBody(this.name, this.username);

  factory CreateAnimalProfileNewBody.fromJson(Map<String, dynamic> json) =>
      _$CreateAnimalProfileNewBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAnimalProfileNewBodyToJson(this);
}

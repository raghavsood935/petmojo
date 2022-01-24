import 'package:json_annotation/json_annotation.dart';

part 'get_animal_by_location_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetAnimalByLocationBody {
  final double lat;
  final double long;
  final int counter;
  final String type;
  final String name;

  GetAnimalByLocationBody(
      this.lat, this.long, this.counter, this.type, this.name);

  factory GetAnimalByLocationBody.fromJson(Map<String, dynamic> json) =>
      _$GetAnimalByLocationBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetAnimalByLocationBodyToJson(this);
}

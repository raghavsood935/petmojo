import 'package:json_annotation/json_annotation.dart';

part 'location_body.g.dart';

@JsonSerializable(explicitToJson: true)
class LocationBody {
  final String type;
  final List<double> coordinates;

  LocationBody(this.type, this.coordinates);

  factory LocationBody.fromJson(Map<String, dynamic> json) =>
      _$LocationBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LocationBodyToJson(this);
}

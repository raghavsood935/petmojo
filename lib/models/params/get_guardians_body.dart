import 'package:json_annotation/json_annotation.dart';

part 'get_guardians_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetGuardianBody {
  final String animalId;

  GetGuardianBody(this.animalId);

  factory GetGuardianBody.fromJson(Map<String, dynamic> json) =>
      _$GetGuardianBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetGuardianBodyToJson(this);
}

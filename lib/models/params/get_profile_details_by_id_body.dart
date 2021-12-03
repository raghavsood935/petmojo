import 'package:json_annotation/json_annotation.dart';
part 'get_profile_details_by_id_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetProfileDetailsByIdBody {
  final String type;
  final String id;

  GetProfileDetailsByIdBody(this.type, this.id);

  factory GetProfileDetailsByIdBody.fromJson(Map<String, dynamic> json) =>
      _$GetProfileDetailsByIdBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetProfileDetailsByIdBodyToJson(this);
}

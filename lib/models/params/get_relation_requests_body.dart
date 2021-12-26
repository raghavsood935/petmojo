import 'package:json_annotation/json_annotation.dart';

part 'get_relation_requests_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetRelationRequestsBody {
  final String animalId;
  final String type;

  GetRelationRequestsBody(this.animalId, this.type);

  factory GetRelationRequestsBody.fromJson(Map<String, dynamic> json) =>
      _$GetRelationRequestsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetRelationRequestsBodyToJson(this);
}

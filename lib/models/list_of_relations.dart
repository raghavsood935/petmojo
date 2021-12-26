import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/animal_profile_response.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/models/profile_model_response.dart';

part 'list_of_relations.freezed.dart';
part 'list_of_relations.g.dart';

@freezed
class ListOfRelationsResponse with _$ListOfRelationsResponse {
  ListOfRelationsResponse._();

  factory ListOfRelationsResponse({
    @JsonKey(name: "relatives") List<RelationsResponse>? listOfRelations,
  }) = _ListOfRelationsResponse;

  factory ListOfRelationsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfRelationsResponseFromJson(json);
}

@freezed
class RelationsResponse with _$RelationsResponse {
  RelationsResponse._();

  factory RelationsResponse(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "relation") String? relation,
      @JsonKey(name: "animal") AnimalProfileResponse? animal,
      @JsonKey(name: "status") int? status}) = _RelationsResponse;

  factory RelationsResponse.fromJson(Map<String, dynamic> json) =>
      _$RelationsResponseFromJson(json);
}

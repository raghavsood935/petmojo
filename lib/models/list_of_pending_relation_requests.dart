import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/animal_profile_response.dart';

part 'list_of_pending_relation_requests.freezed.dart';
part 'list_of_pending_relation_requests.g.dart';

@freezed
class ListOfRelationsRequestResponse with _$ListOfRelationsRequestResponse {
  ListOfRelationsRequestResponse._();

  factory ListOfRelationsRequestResponse({
    @JsonKey(name: "pendingIncomingRequests")
        List<RelationRequestResponse>? listOfRelationRequests,
  }) = _ListOfRelationsRequestResponse;

  factory ListOfRelationsRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfRelationsRequestResponseFromJson(json);
}

@freezed
class RelationRequestResponse with _$RelationRequestResponse {
  RelationRequestResponse._();

  factory RelationRequestResponse({
    @JsonKey(name: "confirmed") bool? confirmed,
    @JsonKey(name: "relation") String? relation,
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "animal") AnimalProfileResponse? animalProfile,
    @JsonKey(name: "status") int? status,
  }) = _RelationRequestResponse;

  factory RelationRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$RelationRequestResponseFromJson(json);
}

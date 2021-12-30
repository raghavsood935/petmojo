import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/models/profile_model_response.dart';

import 'animal_profile_response.dart';

part 'list_of_pending_requests.freezed.dart';
part 'list_of_pending_requests.g.dart';

@freezed
class ListOfPendingRequestsResponse with _$ListOfPendingRequestsResponse {
  ListOfPendingRequestsResponse._();

  factory ListOfPendingRequestsResponse({
    @JsonKey(name: "pendingRequests")
        List<AnimalProfileResponse>? listOfPendingRequests,
  }) = _ListOfPendingRequestsResponse;

  factory ListOfPendingRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfPendingRequestsResponseFromJson(json);
}

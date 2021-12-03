// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:tamely/models/my_animal_model.dart';
//
// part 'get_pending_guardian_requests.freezed.dart';
// part 'get_pending_guardian_requests.g.dart';
//
// @freezed
// class GetPendingGuardianRequest with _$GetPendingGuardianRequest {
//   GetPendingGuardianRequest._();
//
//   factory GetPendingGuardianRequest({
//     @JsonKey(name: "pendingRequests")
//         List<GetPendingGuardianRequest>? listOfRequest,
//   }) = _GetPendingGuardianRequest;
//
//   factory GetPendingGuardianRequest.fromJson(Map<String, dynamic> json) =>
//       _$GetPendingGuardianRequestFromJson(json);
// }
//
// @freezed
// class RequestProfileResponse with _$RequestProfileResponse {
//   RequestProfileResponse._();
//
//   factory RequestProfileResponse({
//     @JsonKey(name: "_id") String? Id,
//     @JsonKey(name: "name") String? name,
//     @JsonKey(name: "username") String? username,
//     @JsonKey(name: "avatar") String? avatar,
//   }) = _RequestProfileResponse;
//
//   factory RequestProfileResponse.fromJson(Map<String, dynamic> json) =>
//       _$RequestProfileResponseFromJson(json);
// }

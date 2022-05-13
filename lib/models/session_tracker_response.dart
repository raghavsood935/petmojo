import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_tracker_response.freezed.dart';
part 'session_tracker_response.g.dart';

@freezed
class SessionTrackerResponse with _$SessionTrackerResponse {
  SessionTrackerResponse._();

  factory SessionTrackerResponse({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "ongoing") int? ongoing,
    @JsonKey(name: "appointmentId") String? appointmentId,
  }) = _SessionTrackerResponse;

  factory SessionTrackerResponse.fromJson(Map<String, dynamic> json) =>
      _$SessionTrackerResponseFromJson(json);
}

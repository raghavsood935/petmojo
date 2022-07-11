import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_running_time_response.freezed.dart';
part 'get_running_time_response.g.dart';

@freezed
class GetRunningTimeResponse with _$GetRunningTimeResponse {
  GetRunningTimeResponse._();

  factory GetRunningTimeResponse({
    @JsonKey(name: "timeElapsed") int? timeElapsed,
  }) = _GetRunningTimeResponse;

  factory GetRunningTimeResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRunningTimeResponseFromJson(json);
}

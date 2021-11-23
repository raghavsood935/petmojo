import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_scroll_status_response.freezed.dart';
part 'get_scroll_status_response.g.dart';

@freezed
class GetScrollStatusResponse with _$GetScrollStatusResponse {
  GetScrollStatusResponse._();

  factory GetScrollStatusResponse({
    @JsonKey(name: "resp") List<WalkStatusResponse>? scroll,
  }) = _GetServiceResponse;

  factory GetScrollStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$GetScrollStatusResponseFromJson(json);
}

@freezed
class WalkStatusResponse with _$WalkStatusResponse {
  WalkStatusResponse._();

  factory WalkStatusResponse({
    @JsonKey(name: "walkStatus") int? walkStatus,
  }) = _WalkStatusResponse;

  factory WalkStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$WalkStatusResponseFromJson(json);
}

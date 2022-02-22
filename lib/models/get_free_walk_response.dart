import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_free_walk_response.freezed.dart';
part 'get_free_walk_response.g.dart';

@freezed
class GetFreeWalkResponse with _$GetFreeWalkResponse {
  GetFreeWalkResponse._();

  factory GetFreeWalkResponse({
    @JsonKey(name: "isFreeWalkAvailable") bool? isFreeWalkAvailable,
  }) = _GetFreeWalkResponse;

  factory GetFreeWalkResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFreeWalkResponseFromJson(json);
}

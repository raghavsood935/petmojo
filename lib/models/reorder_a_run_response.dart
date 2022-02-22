import 'package:freezed_annotation/freezed_annotation.dart';

part 'reorder_a_run_response.freezed.dart';
part 'reorder_a_run_response.g.dart';

@freezed
class ReorderARunResponse with _$ReorderARunResponse {
  ReorderARunResponse._();

  factory ReorderARunResponse({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "bookingId") String? newBookingId,
    @JsonKey(name: "amount") String? newAmount,
  }) = _ReorderARunResponse;

  factory ReorderARunResponse.fromJson(Map<String, dynamic> json) =>
      _$ReorderARunResponseFromJson(json);
}

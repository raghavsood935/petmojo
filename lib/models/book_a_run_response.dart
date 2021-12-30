import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_a_run_response.freezed.dart';
part 'book_a_run_response.g.dart';

@freezed
class BookARunResponse with _$BookARunResponse {
  BookARunResponse._();

  factory BookARunResponse({
    @JsonKey(name: "bookingId") String? bookingId,
  }) = _BookARunResponse;

  factory BookARunResponse.fromJson(Map<String, dynamic> json) =>
      _$BookARunResponseFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_response.freezed.dart';
part 'bookmark_response.g.dart';

@freezed
class BookmarkResponse with _$BookmarkResponse {
  BookmarkResponse._();

  factory BookmarkResponse({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "operation") String? operation,
  }) = _BookmarkResponse;

  factory BookmarkResponse.fromJson(Map<String, dynamic> json) =>
      _$BookmarkResponseFromJson(json);
}

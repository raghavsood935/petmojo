import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_bookmarks_model.freezed.dart';
part 'get_bookmarks_model.g.dart';

@freezed
class getBookmarks with _$getBookmarks {
  getBookmarks._();

  factory getBookmarks({
    @JsonKey(name: "bookmarks") List<BookmarkDetailResponse>? listOfBookmarks,
  }) = _getBookmarks;

  factory getBookmarks.fromJson(Map<String, dynamic> json) =>
      _$getBookmarksFromJson(json);
}

@freezed
class BookmarkDetailResponse with _$BookmarkDetailResponse {
  BookmarkDetailResponse._();

  factory BookmarkDetailResponse({
    @JsonKey(name: "_id") String? sId,
    @JsonKey(name: "thumbnail") String? thumbnail,
  }) = _BookmarkDetailResponse;

  factory BookmarkDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BookmarkDetailResponseFromJson(json);
}

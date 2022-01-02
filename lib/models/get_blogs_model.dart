import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_blogs_model.freezed.dart';
part 'get_blogs_model.g.dart';

@freezed
class getBlogs with _$getBlogs {
  getBlogs._();

  factory getBlogs({
    @JsonKey(name: "blogs") List<blogDetails>? blogs,
  }) = _getBlogs;

  factory getBlogs.fromJson(Map<String, dynamic> json) =>
      _$getBlogsFromJson(json);
}

@freezed
class blogDetails with _$blogDetails {
  blogDetails._();

  factory blogDetails({
    @JsonKey(name: "_id") String? sId,
    @JsonKey(name: "images") List? images,
    @JsonKey(name: "thumbnail") String? thumbnail,
    @JsonKey(name: "likes") int? likes,
    @JsonKey(name: "text") String? text,
    @JsonKey(name: "author") String? author,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "peopleLiked") List? peopleLiked,
    @JsonKey(name: "date") String? date,
  }) = _blogDetails;

  factory blogDetails.fromJson(Map<String, dynamic> json) =>
      _$blogDetailsFromJson(json);
}

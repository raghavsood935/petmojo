import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/get_blogs_model.dart';

part 'get_blogs_details_model.freezed.dart';
part 'get_blogs_details_model.g.dart';

@freezed
class GetBlogDetailsResponse with _$GetBlogDetailsResponse {
  GetBlogDetailsResponse._();

  factory GetBlogDetailsResponse({
    @JsonKey(name: "blog") blogDetails? blog,
  }) = _GetBlogDetailsResponse;

  factory GetBlogDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBlogDetailsResponseFromJson(json);
}

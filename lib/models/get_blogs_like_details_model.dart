import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/profile_model_response.dart';

part 'get_blogs_like_details_model.freezed.dart';
part 'get_blogs_like_details_model.g.dart';

@freezed
class GetBlogLikeDetailsResponse with _$GetBlogLikeDetailsResponse {
  GetBlogLikeDetailsResponse._();

  factory GetBlogLikeDetailsResponse({
    @JsonKey(name: "like") List<BlogLikeDetails>? like,
    @JsonKey(name: "success") bool? success,
  }) = _GetBlogLikeDetailsResponse;

  factory GetBlogLikeDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBlogLikeDetailsResponseFromJson(json);
}

@freezed
class BlogLikeDetails with _$BlogLikeDetails {
  BlogLikeDetails._();

  factory BlogLikeDetails({
    @JsonKey(name: "_id") String? sId,
    @JsonKey(name: "person") ProfileResponse? person,
    @JsonKey(name: "personType") String? personType,
  }) = _BlogLikeDetails;

  factory BlogLikeDetails.fromJson(Map<String, dynamic> json) =>
      _$BlogLikeDetailsFromJson(json);
}

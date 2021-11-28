import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/post_owner_details.dart';

part 'post_response.freezed.dart';
part 'post_response.g.dart';

@freezed
class PostResponse with _$PostResponse {
  PostResponse._();

  factory PostResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "hashtags") List<String>? hashtags,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "thumbnail") String? thumbnail,
    @JsonKey(name: "filter") String? filter,
    @JsonKey(name: "caption") String? caption,
    @JsonKey(name: "author") String? author,
    @JsonKey(name: "postOwnerDetails")
        PostOwnerDetailsResponse? postOwnerDetailsResponse,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "totalVotes") int? totalVotes,
    @JsonKey(name: "totalComments") int? totalComments,
  }) = _PostResponse;

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
}

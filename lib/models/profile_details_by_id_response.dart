import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/user_details_model.dart';

part 'profile_details_by_id_response.freezed.dart';
part 'profile_details_by_id_response.g.dart';

@freezed
class ProfileDetailsByIdResponse with _$ProfileDetailsByIdResponse {
  ProfileDetailsByIdResponse._();

  factory ProfileDetailsByIdResponse({
    @JsonKey(name: "user") UserDetailsModelResponse? user,
    @JsonKey(name: "totalFollowers") int? totalFollowers,
    @JsonKey(name: "totalFollowings") int? totalFollowings,
    @JsonKey(name: "totalLikes") int? totalLikes,
    @JsonKey(name: "totalPosts") int? totalPosts,
  }) = _ProfileDetailsByIdResponse;

  factory ProfileDetailsByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileDetailsByIdResponseFromJson(json);
}

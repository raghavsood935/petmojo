import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/my_animal_model.dart';
import 'package:tamely/models/pet_basic_details_response.dart';
import 'package:tamely/models/user_details_model.dart';

part 'user_profile_details_response.freezed.dart';
part 'user_profile_details_response.g.dart';

@freezed
class UserProfileDetailsResponse with _$UserProfileDetailsResponse {
  UserProfileDetailsResponse._();

  factory UserProfileDetailsResponse({
    @JsonKey(name: "user_details") UserDetailsModelResponse? userDetailsModel,
    @JsonKey(name: "totalFollowers") int? totalFollowers,
    @JsonKey(name: "totalFollowings") int? totalFollowings,
    @JsonKey(name: "totalLikes") int? totalLikes,
    @JsonKey(name: "totalPosts") int? totalPosts,
  }) = _UserProfileDetailsResponse;

  factory UserProfileDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDetailsResponseFromJson(json);
}

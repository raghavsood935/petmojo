import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'list_of_followers_resopnse.freezed.dart';
part 'list_of_followers_resopnse.g.dart';

@freezed
class ListOfFollowersResponse with _$ListOfFollowersResponse {
  ListOfFollowersResponse._();

  factory ListOfFollowersResponse({
    @JsonKey(name: "followers") List<FollowersResponse>? listOfFollowers,
  }) = _ListOfFollowersResponse;

  factory ListOfFollowersResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfFollowersResponseFromJson(json);
}

@freezed
class FollowersResponse with _$FollowersResponse {
  FollowersResponse._();

  factory FollowersResponse({
    @JsonKey(name: "followerDetails")
        FollowersDetailsResponse? followersDetailsResponse,
    @JsonKey(name: "isFollowing") int? isFollowing,
  }) = _FollowersResponse;

  factory FollowersResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowersResponseFromJson(json);
}

@freezed
class FollowersDetailsResponse with _$FollowersDetailsResponse {
  FollowersDetailsResponse._();

  factory FollowersDetailsResponse({
    @JsonKey(name: "followerId")
        FollowersInnerDetailsResponse? followersInnerDetailsResponse,
  }) = _FollowersDetailsResponse;

  factory FollowersDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowersDetailsResponseFromJson(json);
}

@freezed
class FollowersInnerDetailsResponse with _$FollowersInnerDetailsResponse {
  FollowersInnerDetailsResponse._();

  factory FollowersInnerDetailsResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "fullName") String? fullName,
    @JsonKey(name: "name") String? name,
  }) = _FollowersInnerDetailsResponse;

  factory FollowersInnerDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowersInnerDetailsResponseFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'list_of_followings_resopnse.freezed.dart';
part 'list_of_followings_resopnse.g.dart';

@freezed
class ListOfFollowingsResponse with _$ListOfFollowingsResponse {
  ListOfFollowingsResponse._();

  factory ListOfFollowingsResponse({
    @JsonKey(name: "following") List<FollowingResponse>? listOfFollowings,
  }) = _ListOfFollowingsResponse;

  factory ListOfFollowingsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfFollowingsResponseFromJson(json);
}

@freezed
class FollowingResponse with _$FollowingResponse {
  FollowingResponse._();

  factory FollowingResponse({
    @JsonKey(name: "followingDetails")
        FollowingDetailsResponse? followingDetailsResponse,
    @JsonKey(name: "followingType") String? followingType,
  }) = _FollowingResponse;

  factory FollowingResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowingResponseFromJson(json);
}

@freezed
class FollowingDetailsResponse with _$FollowingDetailsResponse {
  FollowingDetailsResponse._();

  factory FollowingDetailsResponse(
          {@JsonKey(name: "followingId")
              FollowingInnerDetailsResponse? followingInnerDetailsResponse}) =
      _FollowingDetailsResponse;

  factory FollowingDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowingDetailsResponseFromJson(json);
}

@freezed
class FollowingInnerDetailsResponse with _$FollowingInnerDetailsResponse {
  FollowingInnerDetailsResponse._();

  factory FollowingInnerDetailsResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "fullName") String? fullName,
  }) = _FollowingInnerDetailsResponse;

  factory FollowingInnerDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowingInnerDetailsResponseFromJson(json);
}

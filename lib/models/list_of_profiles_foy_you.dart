import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/post_response.dart';

part 'list_of_profiles_foy_you.freezed.dart';
part 'list_of_profiles_foy_you.g.dart';

@freezed
class ListOfProfilesForYouResponse with _$ListOfProfilesForYouResponse {
  ListOfProfilesForYouResponse._();

  factory ListOfProfilesForYouResponse({
    @JsonKey(name: "profiles") List<ProfileForYouResponse>? listOfProfiles,
  }) = _ListOfProfilesForYouResponse;

  factory ListOfProfilesForYouResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfProfilesForYouResponseFromJson(json);
}

@freezed
class ProfileForYouResponse with _$ProfileForYouResponse {
  ProfileForYouResponse._();

  factory ProfileForYouResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "fullName") String? fullName,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "type") String? type,
  }) = _ProfileForYouResponse;

  factory ProfileForYouResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileForYouResponseFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/models/profile_model_response.dart';

part 'list_of_profile_response.freezed.dart';
part 'list_of_profile_response.g.dart';

@freezed
class ListOfProfilesResponse with _$ListOfProfilesResponse {
  ListOfProfilesResponse._();

  factory ListOfProfilesResponse({
    @JsonKey(name: "profiles") List<ProfileResponse>? listOfProfiles,
  }) = _ListOfProfilesResponse;

  factory ListOfProfilesResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfProfilesResponseFromJson(json);
}

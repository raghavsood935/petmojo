import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/application_models.dart';

part 'profile_model_response.freezed.dart';
part 'profile_model_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  ProfileResponse._();

  factory ProfileResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "fullName") String? fullname,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "following") int? following,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

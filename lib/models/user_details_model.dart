import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_model.freezed.dart';
part 'user_details_model.g.dart';

@freezed
class UserDetailsModelResponse with _$UserDetailsModelResponse {
  UserDetailsModelResponse._();

  factory UserDetailsModelResponse({
    @JsonKey(name: "private") bool? private,
    @JsonKey(name: "confirmed") bool? confirmed,
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "__v") int? v,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "bio") String? bio,
    @JsonKey(name: "fullName") String? fullName,
  }) = _UserDetailsModelResponse;

  factory UserDetailsModelResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsModelResponseFromJson(json);
}

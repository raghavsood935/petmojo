import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/pet_basic_details_response.dart';

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
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "bio") String? bio,
    @JsonKey(name: "fullName") String? fullName,
    @JsonKey(name: "pets") List<PetBasicDetailsResponse>? listOfPets,
  }) = _UserDetailsModelResponse;

  factory UserDetailsModelResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsModelResponseFromJson(json);
}

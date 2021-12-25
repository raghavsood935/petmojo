import 'package:freezed_annotation/freezed_annotation.dart';

part 'animal_profile_response.freezed.dart';
part 'animal_profile_response.g.dart';

@freezed
class AnimalProfileResponse with _$AnimalProfileResponse {
  AnimalProfileResponse._();

  factory AnimalProfileResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "avatar") String? avatar,
  }) = _AnimalProfileResponse;

  factory AnimalProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimalProfileResponseFromJson(json);
}

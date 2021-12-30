import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_pet_details_response.freezed.dart';
part 'get_pet_details_response.g.dart';

@freezed
class GetPetDetailsResponse with _$GetPetDetailsResponse {
  GetPetDetailsResponse._();

  factory GetPetDetailsResponse({
    @JsonKey(name: "pets") List<PetDetailsResponse>? pets,
  }) = _GetPetDetailsResponse;

  factory GetPetDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPetDetailsResponseFromJson(json);
}

@freezed
class PetDetailsResponse with _$PetDetailsResponse {
  PetDetailsResponse._();

  factory PetDetailsResponse({
    @JsonKey(name: "pet") PetInfoResponse? pet,
  }) = _PetDetailsResponse;

  factory PetDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PetDetailsResponseFromJson(json);
}

@freezed
class PetInfoResponse with _$PetInfoResponse {
  PetInfoResponse._();

  factory PetInfoResponse({
    @JsonKey(name: "_id") String? petId,
    @JsonKey(name: "name") String? petName,
    @JsonKey(name: "username") String? petUserName,
  }) = _PetInfoResponse;

  factory PetInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$PetInfoResponseFromJson(json);
}

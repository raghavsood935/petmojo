import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_basic_details_response.freezed.dart';
part 'pet_basic_details_response.g.dart';

@freezed
class PetBasicDetailsResponse with _$PetBasicDetailsResponse {
  PetBasicDetailsResponse._();

  factory PetBasicDetailsResponse({
    @JsonKey(name: "confirmed") bool? confirmed,
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "pet") PetBasicInnerDetailsResponse? detailsResponse,
  }) = _PetBasicDetailsResponse;

  factory PetBasicDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PetBasicDetailsResponseFromJson(json);
}

@freezed
class PetBasicInnerDetailsResponse with _$PetBasicInnerDetailsResponse {
  PetBasicInnerDetailsResponse._();

  factory PetBasicInnerDetailsResponse({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "avatar") String? avatar,
  }) = _PetBasicInnerDetailsResponse;

  factory PetBasicInnerDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PetBasicInnerDetailsResponseFromJson(json);
}

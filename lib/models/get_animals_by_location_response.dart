import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/get_appointment_details_response.dart';
import 'package:tamely/models/list_of_guardians.dart';
import 'package:tamely/models/location_resopnse.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'get_animals_by_location_response.freezed.dart';
part 'get_animals_by_location_response.g.dart';

@freezed
class GetAnimalsByLocationResponse with _$GetAnimalsByLocationResponse {
  GetAnimalsByLocationResponse._();

  factory GetAnimalsByLocationResponse({
    @JsonKey(name: "animals")
        List<GetAnimalsByLocationDetailsResponse>? animals,
  }) = _GetAnimalsByLocationResponse;

  factory GetAnimalsByLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAnimalsByLocationResponseFromJson(json);
}

@freezed
class GetAnimalsByLocationDetailsResponse
    with _$GetAnimalsByLocationDetailsResponse {
  GetAnimalsByLocationDetailsResponse._();

  factory GetAnimalsByLocationDetailsResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "location") LatLongResponse? location,
    @JsonKey(name: "guardians") List<GuardianResponse>? guardians,
    @JsonKey(name: "distance") int? distance,
  }) = _GetAnimalsByLocationDetailsResponse;

  factory GetAnimalsByLocationDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetAnimalsByLocationDetailsResponseFromJson(json);
}

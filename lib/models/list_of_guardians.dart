import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/models/profile_model_response.dart';

part 'list_of_guardians.freezed.dart';
part 'list_of_guardians.g.dart';

@freezed
class ListOfGuardiansResponse with _$ListOfGuardiansResponse {
  ListOfGuardiansResponse._();

  factory ListOfGuardiansResponse({
    @JsonKey(name: "guardians") List<GuardianResponse>? listOfGuardians,
  }) = _ListOfGuardiansResponse;

  factory ListOfGuardiansResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfGuardiansResponseFromJson(json);
}

@freezed
class GuardianResponse with _$GuardianResponse {
  GuardianResponse._();

  factory GuardianResponse({
    @JsonKey(name: "confirmed") bool? confirmed,
    @JsonKey(name: "user") GuardianDetailsResponse? guardianDetailsResponse,
  }) = _GuardianResponse;

  factory GuardianResponse.fromJson(Map<String, dynamic> json) =>
      _$GuardianResponseFromJson(json);
}

@freezed
class GuardianDetailsResponse with _$GuardianDetailsResponse {
  GuardianDetailsResponse._();

  factory GuardianDetailsResponse({
    @JsonKey(name: "confirmed") bool? confirmed,
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "avatar") String? avatar,
  }) = _GuardianDetailsResponse;

  factory GuardianDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GuardianDetailsResponseFromJson(json);
}

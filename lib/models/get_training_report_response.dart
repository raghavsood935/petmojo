import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_training_report_response.freezed.dart';
part 'get_training_report_response.g.dart';

@freezed
class GetTrainingReportResponse with _$GetTrainingReportResponse {
  GetTrainingReportResponse._();

  factory GetTrainingReportResponse({
    @JsonKey(name: "resp") GetTrainingReportDetailsResponse? details,
    @JsonKey(name: "petNames") List<GetPetNamesResponse>? pet,
  }) = _GetTrainingReportResponse;

  factory GetTrainingReportResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTrainingReportResponseFromJson(json);
}

@freezed
class GetTrainingReportDetailsResponse with _$GetTrainingReportDetailsResponse {
  GetTrainingReportDetailsResponse._();

  factory GetTrainingReportDetailsResponse({
    @JsonKey(name: "sessionNo") int? sessionNo,
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "time") int? duration,
    @JsonKey(name: "picture") String? picture,
    @JsonKey(name: "video") String? video,
    @JsonKey(name: "createdAt") int? time,
    @JsonKey(name: "startTime") int? startTime,
    @JsonKey(name: "endTime") int? endTime,
  }) = _GetTrainingReportDetailsResponse;

  factory GetTrainingReportDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetTrainingReportDetailsResponseFromJson(json);
}

@freezed
class GetPetNamesResponse with _$GetPetNamesResponse {
  GetPetNamesResponse._();

  factory GetPetNamesResponse({
    @JsonKey(name: "name") String? name,
  }) = _GetPetNamesResponse;

  factory GetPetNamesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPetNamesResponseFromJson(json);
}

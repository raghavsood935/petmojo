import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_report_response.freezed.dart';
part 'get_report_response.g.dart';

@freezed
class GetReportResponse with _$GetReportResponse {
  GetReportResponse._();

  factory GetReportResponse({
    @JsonKey(name: "distance") double? distance,
    @JsonKey(name: "time") int? time,
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "reperate") List<GetPeeAndPooResponse>? repeat,
    @JsonKey(name: "picture") String? dogPicture,
    @JsonKey(name: "map") String? mapPicture,
  }) = _GetReportResponse;

  factory GetReportResponse.fromJson(Map<String, dynamic> json) =>
      _$GetReportResponseFromJson(json);
}

@freezed
class GetPeeAndPooResponse with _$GetPeeAndPooResponse {
  GetPeeAndPooResponse._();

  factory GetPeeAndPooResponse({
    @JsonKey(name: "pee") bool? isPeed,
    @JsonKey(name: "poo") bool? isPooed,
  }) = _GetPeeAndPooResponse;

  factory GetPeeAndPooResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPeeAndPooResponseFromJson(json);
}

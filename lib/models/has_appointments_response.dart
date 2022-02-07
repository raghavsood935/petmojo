import 'package:freezed_annotation/freezed_annotation.dart';

part 'has_appointments_response.freezed.dart';
part 'has_appointments_response.g.dart';

@freezed
class HasAppointmentsResponse with _$HasAppointmentsResponse {
  HasAppointmentsResponse._();

  factory HasAppointmentsResponse({
    @JsonKey(name: "hasAppointments") bool? hasAppointments,
  }) = _HasAppointmentsResponse;

  factory HasAppointmentsResponse.fromJson(Map<String, dynamic> json) =>
      _$HasAppointmentsResponseFromJson(json);
}

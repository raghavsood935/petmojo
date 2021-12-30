import 'package:json_annotation/json_annotation.dart';

part 'get_appointment_details_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetAppointmentDetailsBody {
  final String bookingDetailsId;

  GetAppointmentDetailsBody(this.bookingDetailsId);

  factory GetAppointmentDetailsBody.fromJson(Map<String, dynamic> json) =>
      _$GetAppointmentDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetAppointmentDetailsBodyToJson(this);
}

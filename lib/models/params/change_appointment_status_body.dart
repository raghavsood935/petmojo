import 'package:json_annotation/json_annotation.dart';

part 'change_appointment_status_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ChangeAppointmentStatusBody {
  final String bookingDetailsId;
  final int bookingStatus;

  ChangeAppointmentStatusBody(this.bookingDetailsId, this.bookingStatus);

  factory ChangeAppointmentStatusBody.fromJson(Map<String, dynamic> json) =>
      _$ChangeAppointmentStatusBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeAppointmentStatusBodyToJson(this);
}

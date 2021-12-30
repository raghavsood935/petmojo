import 'package:json_annotation/json_annotation.dart';

part 'change_runone_status_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ChangeRunOneStatusBody {
  final String type;
  final String appointmentId;
  final int date;
  final int run1Status;

  ChangeRunOneStatusBody(
      this.type, this.appointmentId, this.date, this.run1Status);

  factory ChangeRunOneStatusBody.fromJson(Map<String, dynamic> json) =>
      _$ChangeRunOneStatusBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeRunOneStatusBodyToJson(this);
}

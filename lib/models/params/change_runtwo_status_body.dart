import 'package:json_annotation/json_annotation.dart';

part 'change_runtwo_status_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ChangeRunTwoStatusBody {
  final String type;
  final String appointmentId;
  final int date;
  final int run2Status;

  ChangeRunTwoStatusBody(
      this.type, this.appointmentId, this.date, this.run2Status);

  factory ChangeRunTwoStatusBody.fromJson(Map<String, dynamic> json) =>
      _$ChangeRunTwoStatusBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeRunTwoStatusBodyToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'get_running_time_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetRunningTimeBody {
  final String appointmentId;
  final bool run1;
  final bool run2;
  final int time;

  GetRunningTimeBody(this.appointmentId, this.run1, this.time,this.run2);

  factory GetRunningTimeBody.fromJson(Map<String, dynamic> json) =>
      _$GetRunningTimeBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetRunningTimeBodyToJson(this);
}

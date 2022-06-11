import 'package:json_annotation/json_annotation.dart';

part 'gps_tracking_wait_list_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GpsTrackingWaitListBody {
  final String fullName;
  final String email;
  final String phone;
  final int noOfTrackers;

  GpsTrackingWaitListBody(
    this.fullName,
    this.email,
    this.phone,
    this.noOfTrackers,
  );

  factory GpsTrackingWaitListBody.fromJson(Map<String, dynamic> json) =>
      _$GpsTrackingWaitListBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GpsTrackingWaitListBodyToJson(this);
}

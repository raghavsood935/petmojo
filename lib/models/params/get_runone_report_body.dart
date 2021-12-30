import 'package:json_annotation/json_annotation.dart';

part 'get_runone_report_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetReportOneBody {
  final String bookingDetailsId;
  final int date;
  final bool runReport1;

  GetReportOneBody(this.bookingDetailsId, this.date, this.runReport1);

  factory GetReportOneBody.fromJson(Map<String, dynamic> json) =>
      _$GetReportOneBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetReportOneBodyToJson(this);
}

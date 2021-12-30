import 'package:json_annotation/json_annotation.dart';

part 'get_runtwo_report_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetReportTwoBody {
  final String bookingDetailsId;
  final int date;
  final bool runReport2;

  GetReportTwoBody(this.bookingDetailsId, this.date, this.runReport2);

  factory GetReportTwoBody.fromJson(Map<String, dynamic> json) =>
      _$GetReportTwoBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetReportTwoBodyToJson(this);
}

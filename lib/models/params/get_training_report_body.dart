import 'package:json_annotation/json_annotation.dart';

part 'get_training_report_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetTrainingReportBody {
  final String bookingDetailsId;
  final int sessionNo;

  GetTrainingReportBody(this.bookingDetailsId, this.sessionNo);

  factory GetTrainingReportBody.fromJson(Map<String, dynamic> json) =>
      _$GetTrainingReportBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetTrainingReportBodyToJson(this);
}

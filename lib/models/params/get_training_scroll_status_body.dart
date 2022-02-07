import 'package:json_annotation/json_annotation.dart';

part 'get_training_scroll_status_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GetTrainingScrollStatusBody {
  final String bookingDetailsId;
  final int sessionNo;

  GetTrainingScrollStatusBody(this.bookingDetailsId, this.sessionNo);

  factory GetTrainingScrollStatusBody.fromJson(Map<String, dynamic> json) =>
      _$GetTrainingScrollStatusBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetTrainingScrollStatusBodyToJson(this);
}

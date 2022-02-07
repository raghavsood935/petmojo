import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_training_scroll_status_response.freezed.dart';
part 'get_training_scroll_status_response.g.dart';

@freezed
class GetTrainingScrollStatusResponse with _$GetTrainingScrollStatusResponse {
  GetTrainingScrollStatusResponse._();

  factory GetTrainingScrollStatusResponse({
    @JsonKey(name: "TrainingSessionStatus") int? trainingStatus,
  }) = _GetTrainingScrollStatusResponse;

  factory GetTrainingScrollStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTrainingScrollStatusResponseFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_free_training_response.freezed.dart';
part 'get_free_training_response.g.dart';

@freezed
class GetFreeTrainingResponse with _$GetFreeTrainingResponse {
  GetFreeTrainingResponse._();

  factory GetFreeTrainingResponse({
    @JsonKey(name: "isFreeTrainingAvailable ") bool? isFreeTrainingAvailable,
  }) = _GetFreeTrainingResponse;

  factory GetFreeTrainingResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFreeTrainingResponseFromJson(json);
}

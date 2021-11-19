import 'package:freezed_annotation/freezed_annotation.dart';

part 'guardians_model.freezed.dart';
part 'guardians_model.g.dart';

@freezed
class GuardiansModelResponse with _$GuardiansModelResponse {
  GuardiansModelResponse._();

  factory GuardiansModelResponse({
    @JsonKey(name: "confirmed") bool? confirmed,
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "user") String? user,
  }) = _GuardiansModelResponse;

  factory GuardiansModelResponse.fromJson(Map<String, dynamic> json) =>
      _$GuardiansModelResponseFromJson(json);
}

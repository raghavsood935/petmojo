import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_response.freezed.dart';
part 'edit_response.g.dart';

@freezed
class EditResponse with _$EditResponse {
  EditResponse._();

  factory EditResponse({
    @JsonKey(name: "success") bool? success,
  }) = _EditResponse;

  factory EditResponse.fromJson(Map<String, dynamic> json) =>
      _$EditResponseFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_data_response.freezed.dart';
part 'send_data_response.g.dart';

@freezed
class SendDataResponse with _$SendDataResponse {
  SendDataResponse._();

  factory SendDataResponse({
    @JsonKey(name: "success") bool? success,
  }) = _SendDataResponse;

  factory SendDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SendDataResponseFromJson(json);
}

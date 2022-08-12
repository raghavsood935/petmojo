import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_account_response.freezed.dart';
part 'delete_user_account_response.g.dart';

@freezed
class DeleteAccountResponse with _$DeleteAccountResponse {
  DeleteAccountResponse._();

  factory DeleteAccountResponse({
    @JsonKey(name: "success") bool? success,
  }) = _DeleteAccountResponse;

  factory DeleteAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountResponseFromJson(json);
}

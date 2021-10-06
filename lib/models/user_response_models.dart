import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kubelite/models/application_models.dart';

part 'user_response_models.freezed.dart';
part 'user_response_models.g.dart';

@freezed
class UserResponse with _$UserResponse {
  UserResponse._();

  factory UserResponse({
    @JsonKey(name: "user") LocalUser? localUser,
    @JsonKey(name: "token") String? token,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

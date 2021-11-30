import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_models.freezed.dart';
part 'application_models.g.dart';

@freezed
class LocalUser with _$LocalUser {
  LocalUser._();

  factory LocalUser({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "username") String? username,
    String? fullName,
    String? bio,
    String? website,
    @Default(false) @JsonKey(name: "confirmed") bool confirmed,
  }) = _User;

  factory LocalUser.fromJson(Map<String, dynamic> json) =>
      _$LocalUserFromJson(json);
}

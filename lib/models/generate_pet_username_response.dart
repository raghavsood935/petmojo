import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_pet_username_response.freezed.dart';
part 'generate_pet_username_response.g.dart';

@freezed
class GeneratePetUsernameResponse with _$GeneratePetUsernameResponse {
  GeneratePetUsernameResponse._();

  factory GeneratePetUsernameResponse({String? username}) =
      _GeneratePetUsernameResponse;

  factory GeneratePetUsernameResponse.fromJson(Map<String, dynamic> json) =>
      _$GeneratePetUsernameResponseFromJson(json);
}

import 'package:json_annotation/json_annotation.dart';

part 'send_guardians_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SendGuardianRequestBody {
  final String idUser;
  final String idAnimal;

  SendGuardianRequestBody(this.idUser, this.idAnimal);

  factory SendGuardianRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SendGuardianRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SendGuardianRequestBodyToJson(this);
}

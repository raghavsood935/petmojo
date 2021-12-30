// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_guardians_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendGuardianRequestBody _$SendGuardianRequestBodyFromJson(
        Map<String, dynamic> json) =>
    SendGuardianRequestBody(
      json['idUser'] as String,
      json['idAnimal'] as String,
    );

Map<String, dynamic> _$SendGuardianRequestBodyToJson(
        SendGuardianRequestBody instance) =>
    <String, dynamic>{
      'idUser': instance.idUser,
      'idAnimal': instance.idAnimal,
    };

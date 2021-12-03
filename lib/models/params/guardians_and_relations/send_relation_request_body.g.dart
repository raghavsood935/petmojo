// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_relation_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendRelationRequestBody _$SendRelationRequestBodyFromJson(
        Map<String, dynamic> json) =>
    SendRelationRequestBody(
      json['idRelatedAnimal'] as String,
      json['animalId'] as String,
      json['realtion'] as String,
    );

Map<String, dynamic> _$SendRelationRequestBodyToJson(
        SendRelationRequestBody instance) =>
    <String, dynamic>{
      'idRelatedAnimal': instance.idRelatedAnimal,
      'animalId': instance.animalId,
      'realtion': instance.realtion,
    };

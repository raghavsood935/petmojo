// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_relation_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmRelationRequestBody _$ConfirmRelationRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ConfirmRelationRequestBody(
      json['idRelatedAnimal'] as String,
      json['animalId'] as String,
    );

Map<String, dynamic> _$ConfirmRelationRequestBodyToJson(
        ConfirmRelationRequestBody instance) =>
    <String, dynamic>{
      'idRelatedAnimal': instance.idRelatedAnimal,
      'animalId': instance.animalId,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_relation_requests_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRelationRequestsBody _$GetRelationRequestsBodyFromJson(
        Map<String, dynamic> json) =>
    GetRelationRequestsBody(
      json['animalId'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$GetRelationRequestsBodyToJson(
        GetRelationRequestsBody instance) =>
    <String, dynamic>{
      'animalId': instance.animalId,
      'type': instance.type,
    };

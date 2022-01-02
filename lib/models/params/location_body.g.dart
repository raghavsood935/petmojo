// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationBody _$LocationBodyFromJson(Map<String, dynamic> json) => LocationBody(
      json['type'] as String,
      (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$LocationBodyToJson(LocationBody instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

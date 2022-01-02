// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_animal_by_location_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAnimalByLocationBody _$GetAnimalByLocationBodyFromJson(
        Map<String, dynamic> json) =>
    GetAnimalByLocationBody(
      (json['lat'] as num).toDouble(),
      (json['long'] as num).toDouble(),
      json['counter'] as int,
    );

Map<String, dynamic> _$GetAnimalByLocationBodyToJson(
        GetAnimalByLocationBody instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
      'counter': instance.counter,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_resopnse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LatLongResponse _$$_LatLongResponseFromJson(Map<String, dynamic> json) =>
    _$_LatLongResponse(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_LatLongResponseToJson(_$_LatLongResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetReportResponse _$$_GetReportResponseFromJson(Map<String, dynamic> json) =>
    _$_GetReportResponse(
      distance: (json['distance'] as num?)?.toDouble(),
      time: json['time'] as int?,
      rating: json['rating'] as int?,
      repeat: (json['reperate'] as List<dynamic>?)
          ?.map((e) => GetPeeAndPooResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      dogPicture: json['picture'] as String?,
      mapPicture: json['map'] as String?,
    );

Map<String, dynamic> _$$_GetReportResponseToJson(
        _$_GetReportResponse instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'time': instance.time,
      'rating': instance.rating,
      'reperate': instance.repeat,
      'picture': instance.dogPicture,
      'map': instance.mapPicture,
    };

_$_GetPeeAndPooResponse _$$_GetPeeAndPooResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetPeeAndPooResponse(
      isPeed: json['pee'] as bool?,
      isPooed: json['poo'] as bool?,
    );

Map<String, dynamic> _$$_GetPeeAndPooResponseToJson(
        _$_GetPeeAndPooResponse instance) =>
    <String, dynamic>{
      'pee': instance.isPeed,
      'poo': instance.isPooed,
    };

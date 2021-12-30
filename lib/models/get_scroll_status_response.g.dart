// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_scroll_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetServiceResponse _$$_GetServiceResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetServiceResponse(
      scroll: (json['resp'] as List<dynamic>?)
          ?.map((e) => WalkStatusResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetServiceResponseToJson(
        _$_GetServiceResponse instance) =>
    <String, dynamic>{
      'resp': instance.scroll,
    };

_$_WalkStatusResponse _$$_WalkStatusResponseFromJson(
        Map<String, dynamic> json) =>
    _$_WalkStatusResponse(
      walkStatus: json['walkStatus'] as int?,
    );

Map<String, dynamic> _$$_WalkStatusResponseToJson(
        _$_WalkStatusResponse instance) =>
    <String, dynamic>{
      'walkStatus': instance.walkStatus,
    };

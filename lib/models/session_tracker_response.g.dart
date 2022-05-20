// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_tracker_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionTrackerResponse _$$_SessionTrackerResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SessionTrackerResponse(
      success: json['success'] as bool?,
      ongoing: json['ongoing'] as int?,
      appointmentId: json['appointmentId'] as String?,
    );

Map<String, dynamic> _$$_SessionTrackerResponseToJson(
        _$_SessionTrackerResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'ongoing': instance.ongoing,
      'appointmentId': instance.appointmentId,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_training_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetTrainingReportResponse _$$_GetTrainingReportResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetTrainingReportResponse(
      details: json['resp'] == null
          ? null
          : GetTrainingReportDetailsResponse.fromJson(
              json['resp'] as Map<String, dynamic>),
      pet: (json['petNames'] as List<dynamic>?)
          ?.map((e) => GetPetNamesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetTrainingReportResponseToJson(
        _$_GetTrainingReportResponse instance) =>
    <String, dynamic>{
      'resp': instance.details,
      'petNames': instance.pet,
    };

_$_GetTrainingReportDetailsResponse
    _$$_GetTrainingReportDetailsResponseFromJson(Map<String, dynamic> json) =>
        _$_GetTrainingReportDetailsResponse(
          sessionNo: json['sessionNo'] as int?,
          rating: json['rating'] as int?,
          duration: json['time'] as int?,
          picture: json['picture'] as String?,
          video: json['video'] as String?,
          time: json['createdAt'] as int?,
          startTime: json['startTime'] as int?,
          endTime: json['endTime'] as int?,
          trainerName: json['trainerName'] as String?,
          agenda: json['agenda'] as String?,
        );

Map<String, dynamic> _$$_GetTrainingReportDetailsResponseToJson(
        _$_GetTrainingReportDetailsResponse instance) =>
    <String, dynamic>{
      'sessionNo': instance.sessionNo,
      'rating': instance.rating,
      'time': instance.duration,
      'picture': instance.picture,
      'video': instance.video,
      'createdAt': instance.time,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'trainerName': instance.trainerName,
      'agenda': instance.agenda,
    };

_$_GetPetNamesResponse _$$_GetPetNamesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetPetNamesResponse(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_GetPetNamesResponseToJson(
        _$_GetPetNamesResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

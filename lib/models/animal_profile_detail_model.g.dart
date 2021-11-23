// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_profile_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimalProfileDetailModelResponse
    _$$_AnimalProfileDetailModelResponseFromJson(Map<String, dynamic> json) =>
        _$_AnimalProfileDetailModelResponse(
          animalprofileModel: json['pet'] == null
              ? null
              : MyAnimalModelResponse.fromJson(
                  json['pet'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_AnimalProfileDetailModelResponseToJson(
        _$_AnimalProfileDetailModelResponse instance) =>
    <String, dynamic>{
      'pet': instance.animalprofileModel,
    };

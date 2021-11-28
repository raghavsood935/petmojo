// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_basic_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetBasicDetailsResponse _$$_PetBasicDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PetBasicDetailsResponse(
      confirmed: json['confirmed'] as bool?,
      Id: json['_id'] as String?,
      detailsResponse: json['pet'] == null
          ? null
          : PetBasicInnerDetailsResponse.fromJson(
              json['pet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PetBasicDetailsResponseToJson(
        _$_PetBasicDetailsResponse instance) =>
    <String, dynamic>{
      'confirmed': instance.confirmed,
      '_id': instance.Id,
      'pet': instance.detailsResponse,
    };

_$_PetBasicInnerDetailsResponse _$$_PetBasicInnerDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PetBasicInnerDetailsResponse(
      name: json['name'] as String?,
      Id: json['_id'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_PetBasicInnerDetailsResponseToJson(
        _$_PetBasicInnerDetailsResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      '_id': instance.Id,
      'avatar': instance.avatar,
    };

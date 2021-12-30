// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pet_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPetDetailsResponse _$$_GetPetDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetPetDetailsResponse(
      pets: (json['pets'] as List<dynamic>?)
          ?.map((e) => PetDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetPetDetailsResponseToJson(
        _$_GetPetDetailsResponse instance) =>
    <String, dynamic>{
      'pets': instance.pets,
    };

_$_PetDetailsResponse _$$_PetDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PetDetailsResponse(
      pet: json['pet'] == null
          ? null
          : PetInfoResponse.fromJson(json['pet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PetDetailsResponseToJson(
        _$_PetDetailsResponse instance) =>
    <String, dynamic>{
      'pet': instance.pet,
    };

_$_PetInfoResponse _$$_PetInfoResponseFromJson(Map<String, dynamic> json) =>
    _$_PetInfoResponse(
      petId: json['_id'] as String?,
      petName: json['name'] as String?,
      petUserName: json['username'] as String?,
    );

Map<String, dynamic> _$$_PetInfoResponseToJson(_$_PetInfoResponse instance) =>
    <String, dynamic>{
      '_id': instance.petId,
      'name': instance.petName,
      'username': instance.petUserName,
    };

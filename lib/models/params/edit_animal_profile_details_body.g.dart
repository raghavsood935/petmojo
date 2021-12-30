// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_animal_profile_details_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditAnimalProfileDetailsBody _$EditAnimalProfileDetailsBodyFromJson(
        Map<String, dynamic> json) =>
    EditAnimalProfileDetailsBody(
      json['petId'] as String,
      json['friendlinessWithHumans'] as int,
      json['friendlinessWithAnimals'] as int,
      json['favouriteThings'] as String,
      json['thingsDislikes'] as String,
      json['uniqueHabits'] as String,
      json['eatingHabits'] as String,
    );

Map<String, dynamic> _$EditAnimalProfileDetailsBodyToJson(
        EditAnimalProfileDetailsBody instance) =>
    <String, dynamic>{
      'petId': instance.petId,
      'friendlinessWithHumans': instance.friendlinessWithHumans,
      'friendlinessWithAnimals': instance.friendlinessWithAnimals,
      'favouriteThings': instance.favouriteThings,
      'thingsDislikes': instance.thingsDislikes,
      'uniqueHabits': instance.uniqueHabits,
      'eatingHabits': instance.eatingHabits,
    };

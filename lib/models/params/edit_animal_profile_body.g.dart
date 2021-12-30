// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_animal_profile_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditAnimalProfileBody _$EditAnimalProfileBodyFromJson(
        Map<String, dynamic> json) =>
    EditAnimalProfileBody(
      json['name'] as String,
      json['username'] as String,
      json['avatar'] as String,
      json['category'] as String,
      json['bio'] as String,
      json['animalType'] as String,
      json['breed'] as String,
      json['gender'] as String,
      json['age'] as String,
      json['mating'] as bool,
      json['adoption'] as bool,
      json['playBuddies'] as bool,
      json['playFrom'] as String,
      json['playTo'] as String,
      json['servicePet'] as bool,
      json['spayed'] as bool,
      json['animalId'] as String,
    );

Map<String, dynamic> _$EditAnimalProfileBodyToJson(
        EditAnimalProfileBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'avatar': instance.avatar,
      'category': instance.category,
      'bio': instance.bio,
      'animalType': instance.animalType,
      'gender': instance.gender,
      'breed': instance.breed,
      'age': instance.age,
      'mating': instance.mating,
      'adoption': instance.adoption,
      'playBuddies': instance.playBuddies,
      'playFrom': instance.playFrom,
      'playTo': instance.playTo,
      'servicePet': instance.servicePet,
      'spayed': instance.spayed,
      'animalId': instance.animalId,
    };

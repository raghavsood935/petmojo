// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_profile_create_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalProfileCreateBody _$AnimalProfileCreateBodyFromJson(
        Map<String, dynamic> json) =>
    AnimalProfileCreateBody(
      name: json['name'] as String,
      username: json['username'] as String,
      avatar: json['avatar'] as String,
      category: json['category'] as String,
      bio: json['bio'] as String,
      animalType: json['animalType'] as String,
      gender: json['gender'] as String,
      breed: json['breed'] as String,
      age: json['age'] as String,
      mating: json['mating'] as bool,
      adoption: json['adoption'] as bool,
      registeredWithKennelClub: json['registeredWithKennelClub'] as bool,
      playBuddies: json['playBuddies'] as bool,
      playFrom: json['playFrom'] as String,
      playTo: json['playTo'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$AnimalProfileCreateBodyToJson(
        AnimalProfileCreateBody instance) =>
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
      'registeredWithKennelClub': instance.registeredWithKennelClub,
      'playFrom': instance.playFrom,
      'playTo': instance.playTo,
      'location': instance.location,
    };

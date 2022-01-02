// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_animal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyAnimalModelResponse _$$_MyAnimalModelResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MyAnimalModelResponse(
      mating: json['mating'] as bool?,
      adoption: json['adoption'] as bool?,
      playBuddies: json['playBuddies'] as bool?,
      Id: json['_id'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      category: json['category'] as String?,
      bio: json['bio'] as String?,
      animalType: json['animalType'] as String?,
      gender: json['gender'] as String?,
      breed: json['breed'] as String?,
      age: json['age'] as String?,
      playFrom: json['playFrom'] as String?,
      playTo: json['playTo'] as String?,
      servicePet: json['servicePet'] as bool?,
      spayed: json['spayed'] as bool?,
      registeredWithKennelClub: json['registeredWithKennelClub'] as bool?,
      friendlinessWithHumans: json['friendlinessWithHumans'] as int?,
      friendlinessWithAnimals: json['friendlinessWithAnimals'] as int?,
      favouriteThings: json['favouriteThings'] as String?,
      thingsDislikes: json['thingsDislikes'] as String?,
      uniqueHabits: json['uniqueHabits'] as String?,
      eatingHabits: json['eatingHabits'] as String?,
      location: json['location'] == null
          ? null
          : LatLongResponse.fromJson(json['location'] as Map<String, dynamic>),
      guardians: (json['guardians'] as List<dynamic>?)
          ?.map(
              (e) => GuardiansModelResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$_MyAnimalModelResponseToJson(
        _$_MyAnimalModelResponse instance) =>
    <String, dynamic>{
      'mating': instance.mating,
      'adoption': instance.adoption,
      'playBuddies': instance.playBuddies,
      '_id': instance.Id,
      'name': instance.name,
      'username': instance.username,
      'avatar': instance.avatar,
      'category': instance.category,
      'bio': instance.bio,
      'animalType': instance.animalType,
      'gender': instance.gender,
      'breed': instance.breed,
      'age': instance.age,
      'playFrom': instance.playFrom,
      'playTo': instance.playTo,
      'servicePet': instance.servicePet,
      'spayed': instance.spayed,
      'registeredWithKennelClub': instance.registeredWithKennelClub,
      'friendlinessWithHumans': instance.friendlinessWithHumans,
      'friendlinessWithAnimals': instance.friendlinessWithAnimals,
      'favouriteThings': instance.favouriteThings,
      'thingsDislikes': instance.thingsDislikes,
      'uniqueHabits': instance.uniqueHabits,
      'eatingHabits': instance.eatingHabits,
      'location': instance.location,
      'guardians': instance.guardians,
      '__v': instance.v,
    };

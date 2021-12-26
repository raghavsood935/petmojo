// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_a_run_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookARunBody _$BookARunBodyFromJson(Map<String, dynamic> json) => BookARunBody(
      json['numberOfPets'] as int,
      (json['petDetails'] as List<dynamic>)
          .map((e) => PetDetailsBody.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['specialInstructions'] as String,
      PetBehaviourBody.fromJson(json['petBehaviour'] as Map<String, dynamic>),
      PetRunningLocationBody.fromJson(
          json['petRunningLocation'] as Map<String, dynamic>),
      json['phone'] as String,
      json['alternatePhone'] as String,
      json['alternateName'] as String,
      PackageBody.fromJson(json['package'] as Map<String, dynamic>),
      json['startDate'] as int,
      json['dayOff'] as int,
      (json['runDetails'] as List<dynamic>)
          .map((e) => RunDetailsBody.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BookARunBodyToJson(BookARunBody instance) =>
    <String, dynamic>{
      'numberOfPets': instance.numberOfPets,
      'petDetails': instance.petDetails.map((e) => e.toJson()).toList(),
      'specialInstructions': instance.specialInstructions,
      'petBehaviour': instance.petBehaviour.toJson(),
      'petRunningLocation': instance.petRunningLocation.toJson(),
      'phone': instance.phone,
      'alternatePhone': instance.alternatePhone,
      'alternateName': instance.alternateName,
      'package': instance.package.toJson(),
      'startDate': instance.startDate,
      'dayOff': instance.dayOff,
      'runDetails': instance.runDetails.map((e) => e.toJson()).toList(),
    };

PetDetailsBody _$PetDetailsBodyFromJson(Map<String, dynamic> json) =>
    PetDetailsBody(
      json['petId'] as String,
      json['size'] as String,
    );

Map<String, dynamic> _$PetDetailsBodyToJson(PetDetailsBody instance) =>
    <String, dynamic>{
      'petId': instance.petId,
      'size': instance.size,
    };

PetBehaviourBody _$PetBehaviourBodyFromJson(Map<String, dynamic> json) =>
    PetBehaviourBody(
      json['pullsOnTheLeash'] as bool,
      json['likeInteractingWithOtherDogsOrPeople'] as bool,
      json['jumpsUpOnPeopleAndThings'] as bool,
      json['chaseSmallerAnimals'] as bool,
      json['protectiveOfHome'] as bool,
    );

Map<String, dynamic> _$PetBehaviourBodyToJson(PetBehaviourBody instance) =>
    <String, dynamic>{
      'pullsOnTheLeash': instance.pullsOnTheLeash,
      'likeInteractingWithOtherDogsOrPeople':
          instance.likeInteractingWithOtherDogsOrPeople,
      'jumpsUpOnPeopleAndThings': instance.jumpsUpOnPeopleAndThings,
      'chaseSmallerAnimals': instance.chaseSmallerAnimals,
      'protectiveOfHome': instance.protectiveOfHome,
    };

PetRunningLocationBody _$PetRunningLocationBodyFromJson(
        Map<String, dynamic> json) =>
    PetRunningLocationBody(
      json['addressLine1'] as String,
      json['addressLine2'] as String,
      json['state'] as String,
      json['city'] as String,
      json['pinCode'] as String,
      (json['lat'] as num).toDouble(),
      (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$PetRunningLocationBodyToJson(
        PetRunningLocationBody instance) =>
    <String, dynamic>{
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'state': instance.state,
      'city': instance.city,
      'pinCode': instance.pinCode,
      'lat': instance.lat,
      'long': instance.long,
    };

PackageBody _$PackageBodyFromJson(Map<String, dynamic> json) => PackageBody(
      json['description'] as String,
      json['amount'] as String,
      json['frequency'] as int,
      json['dayfrequency'] as int,
    );

Map<String, dynamic> _$PackageBodyToJson(PackageBody instance) =>
    <String, dynamic>{
      'description': instance.description,
      'amount': instance.amount,
      'frequency': instance.frequency,
      'dayfrequency': instance.dayfrequency,
    };

RunDetailsBody _$RunDetailsBodyFromJson(Map<String, dynamic> json) =>
    RunDetailsBody(
      json['runTime'] as String,
    );

Map<String, dynamic> _$RunDetailsBodyToJson(RunDetailsBody instance) =>
    <String, dynamic>{
      'runTime': instance.runTime,
    };

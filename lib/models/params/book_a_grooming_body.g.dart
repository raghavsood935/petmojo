// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_a_grooming_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookAGroomingBody _$BookAGroomingBodyFromJson(Map<String, dynamic> json) =>
    BookAGroomingBody(
      json['numberOfPets'] as int,
      (json['petDetails'] as List<dynamic>)
          .map(
              (e) => PetDetailsGroomingBody.fromJson(e as Map<String, dynamic>))
          .toList(),
      PetRunningLocationGroomingBody.fromJson(
          json['petRunningLocation'] as Map<String, dynamic>),
      json['phone'] as String,
      json['startDate'] as int,
      PetGroomingTimeGroomingBody.fromJson(
          json['sessionDetails'] as Map<String, dynamic>),
      PackageGroomingBody.fromJson(json['package'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookAGroomingBodyToJson(BookAGroomingBody instance) =>
    <String, dynamic>{
      'numberOfPets': instance.numberOfPets,
      'petDetails': instance.petDetails.map((e) => e.toJson()).toList(),
      'petRunningLocation': instance.petRunningLocation.toJson(),
      'phone': instance.phone,
      'startDate': instance.startDate,
      'sessionDetails': instance.sessionDetails.toJson(),
      'package': instance.package.toJson(),
    };

PetDetailsGroomingBody _$PetDetailsGroomingBodyFromJson(
        Map<String, dynamic> json) =>
    PetDetailsGroomingBody(
      json['petId'] as String,
      json['size'] as String,
    );

Map<String, dynamic> _$PetDetailsGroomingBodyToJson(
        PetDetailsGroomingBody instance) =>
    <String, dynamic>{
      'petId': instance.petId,
      'size': instance.size,
    };

PetRunningLocationGroomingBody _$PetRunningLocationGroomingBodyFromJson(
        Map<String, dynamic> json) =>
    PetRunningLocationGroomingBody(
      json['addressLine1'] as String,
      json['addressLine2'] as String,
      json['state'] as String,
      json['city'] as String,
      json['pinCode'] as String,
      (json['lat'] as num).toDouble(),
      (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$PetRunningLocationGroomingBodyToJson(
        PetRunningLocationGroomingBody instance) =>
    <String, dynamic>{
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'state': instance.state,
      'city': instance.city,
      'pinCode': instance.pinCode,
      'lat': instance.lat,
      'long': instance.long,
    };

PetGroomingTimeGroomingBody _$PetGroomingTimeGroomingBodyFromJson(
        Map<String, dynamic> json) =>
    PetGroomingTimeGroomingBody(
      json['sessionTime'] as String,
    );

Map<String, dynamic> _$PetGroomingTimeGroomingBodyToJson(
        PetGroomingTimeGroomingBody instance) =>
    <String, dynamic>{
      'sessionTime': instance.sessionTime,
    };

PackageGroomingBody _$PackageGroomingBodyFromJson(Map<String, dynamic> json) =>
    PackageGroomingBody(
      json['description'] as String,
      json['amount'] as String,
    );

Map<String, dynamic> _$PackageGroomingBodyToJson(
        PackageGroomingBody instance) =>
    <String, dynamic>{
      'description': instance.description,
      'amount': instance.amount,
    };

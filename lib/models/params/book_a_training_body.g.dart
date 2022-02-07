// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_a_training_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookATrainingBody _$BookATrainingBodyFromJson(Map<String, dynamic> json) =>
    BookATrainingBody(
      json['numberOfPets'] as int,
      (json['petDetails'] as List<dynamic>)
          .map(
              (e) => PetDetailsTrainingBody.fromJson(e as Map<String, dynamic>))
          .toList(),
      PetRunningLocationTrainingBody.fromJson(
          json['petRunningLocation'] as Map<String, dynamic>),
      json['phone'] as String,
      json['startDate'] as int,
      json['time'] as String,
      PackageTrainingBody.fromJson(json['package'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookATrainingBodyToJson(BookATrainingBody instance) =>
    <String, dynamic>{
      'numberOfPets': instance.numberOfPets,
      'petDetails': instance.petDetails.map((e) => e.toJson()).toList(),
      'petRunningLocation': instance.petRunningLocation.toJson(),
      'phone': instance.phone,
      'startDate': instance.startDate,
      'time': instance.time,
      'package': instance.package.toJson(),
    };

PetDetailsTrainingBody _$PetDetailsTrainingBodyFromJson(
        Map<String, dynamic> json) =>
    PetDetailsTrainingBody(
      json['petId'] as String,
      json['size'] as String,
    );

Map<String, dynamic> _$PetDetailsTrainingBodyToJson(
        PetDetailsTrainingBody instance) =>
    <String, dynamic>{
      'petId': instance.petId,
      'size': instance.size,
    };

PetRunningLocationTrainingBody _$PetRunningLocationTrainingBodyFromJson(
        Map<String, dynamic> json) =>
    PetRunningLocationTrainingBody(
      json['addressLine1'] as String,
      json['addressLine2'] as String,
      json['state'] as String,
      json['city'] as String,
      json['pinCode'] as String,
      (json['lat'] as num).toDouble(),
      (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$PetRunningLocationTrainingBodyToJson(
        PetRunningLocationTrainingBody instance) =>
    <String, dynamic>{
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'state': instance.state,
      'city': instance.city,
      'pinCode': instance.pinCode,
      'lat': instance.lat,
      'long': instance.long,
    };

PackageTrainingBody _$PackageTrainingBodyFromJson(Map<String, dynamic> json) =>
    PackageTrainingBody(
      json['description'] as String,
      json['amount'] as String,
      json['frequency'] as int,
    );

Map<String, dynamic> _$PackageTrainingBodyToJson(
        PackageTrainingBody instance) =>
    <String, dynamic>{
      'description': instance.description,
      'amount': instance.amount,
      'frequency': instance.frequency,
    };

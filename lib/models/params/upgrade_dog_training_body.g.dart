// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upgrade_dog_training_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpgradeDogTrainingBody _$UpgradeDogTrainingBodyFromJson(
        Map<String, dynamic> json) =>
    UpgradeDogTrainingBody(
      json['bookingId'] as String,
      PackageTrainingBody.fromJson(json['package'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpgradeDogTrainingBodyToJson(
        UpgradeDogTrainingBody instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'package': instance.package.toJson(),
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

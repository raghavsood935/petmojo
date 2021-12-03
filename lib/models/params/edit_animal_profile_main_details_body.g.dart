// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_animal_profile_main_details_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditAnimalProfileMainDetailsBody _$EditAnimalProfileMainDetailsBodyFromJson(
        Map<String, dynamic> json) =>
    EditAnimalProfileMainDetailsBody(
      json['petId'] as String,
      json['username'] as String,
      json['fullName'] as String,
      json['bio'] as String,
      json['avatar'] as String,
    );

Map<String, dynamic> _$EditAnimalProfileMainDetailsBodyToJson(
        EditAnimalProfileMainDetailsBody instance) =>
    <String, dynamic>{
      'petId': instance.petId,
      'username': instance.username,
      'fullName': instance.fullName,
      'bio': instance.bio,
      'avatar': instance.avatar,
    };

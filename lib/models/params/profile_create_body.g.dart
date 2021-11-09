// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_create_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileCreateBody _$ProfileCreateBodyFromJson(Map<String, dynamic> json) =>
    ProfileCreateBody(
      json['fullName'] as String,
      json['username'] as String,
      json['bio'] as String,
      json['website'] as String,
      json['avatarUrl'] as String,
    );

Map<String, dynamic> _$ProfileCreateBodyToJson(ProfileCreateBody instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'username': instance.username,
      'bio': instance.bio,
      'website': instance.website,
      'avatarUrl': instance.avatarUrl,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_profile_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchProfilesBody _$SearchProfilesBodyFromJson(Map<String, dynamic> json) =>
    SearchProfilesBody(
      json['counter'] as int,
      json['username'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$SearchProfilesBodyToJson(SearchProfilesBody instance) =>
    <String, dynamic>{
      'counter': instance.counter,
      'username': instance.username,
      'type': instance.type,
    };

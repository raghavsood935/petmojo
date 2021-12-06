// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_list_of_following_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchListOfFollowingBody _$FetchListOfFollowingBodyFromJson(
        Map<String, dynamic> json) =>
    FetchListOfFollowingBody(
      json['userId'] as String,
      json['counter'] as int,
    );

Map<String, dynamic> _$FetchListOfFollowingBodyToJson(
        FetchListOfFollowingBody instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'counter': instance.counter,
    };

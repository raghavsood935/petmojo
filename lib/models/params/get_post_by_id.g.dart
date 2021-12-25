// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_post_by_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPostByIdBody _$GetPostByIdBodyFromJson(Map<String, dynamic> json) =>
    GetPostByIdBody(
      json['id'] as String,
      json['type'] as String,
      json['counter'] as int,
    );

Map<String, dynamic> _$GetPostByIdBodyToJson(GetPostByIdBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'counter': instance.counter,
    };

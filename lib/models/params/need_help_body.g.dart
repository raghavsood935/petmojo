// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'need_help_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NeedHelpBody _$NeedHelpBodyFromJson(Map<String, dynamic> json) => NeedHelpBody(
      json['phoneNumber'] as String,
      json['description'] as String,
      json['screenshot'] as String,
    );

Map<String, dynamic> _$NeedHelpBodyToJson(NeedHelpBody instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'description': instance.description,
      'screenshot': instance.screenshot,
    };

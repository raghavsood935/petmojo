// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_ticket_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitTicketBody _$SubmitTicketBodyFromJson(Map<String, dynamic> json) =>
    SubmitTicketBody(
      json['title'] as String,
      json['category'] as String,
      json['description'] as String,
      json['phoneNumber'] as String,
    );

Map<String, dynamic> _$SubmitTicketBodyToJson(SubmitTicketBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'category': instance.category,
      'description': instance.description,
      'phoneNumber': instance.phoneNumber,
    };

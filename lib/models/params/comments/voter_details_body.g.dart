// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voter_details_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentVoterDetailsBody _$CommentVoterDetailsBodyFromJson(
        Map<String, dynamic> json) =>
    CommentVoterDetailsBody(
      json['voterType'] as String,
      json['voterId'] as String,
    );

Map<String, dynamic> _$CommentVoterDetailsBodyToJson(
        CommentVoterDetailsBody instance) =>
    <String, dynamic>{
      'voterType': instance.voterType,
      'voterId': instance.voterId,
    };

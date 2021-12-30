// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_follow_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendFollowRequestBody _$SendFollowRequestBodyFromJson(
        Map<String, dynamic> json) =>
    SendFollowRequestBody(
      FromRequestBody.fromJson(json['from'] as Map<String, dynamic>),
      ToRequestBody.fromJson(json['to'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendFollowRequestBodyToJson(
        SendFollowRequestBody instance) =>
    <String, dynamic>{
      'from': instance.from.toJson(),
      'to': instance.to.toJson(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_dislike_post_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikeDislikePostBody _$LikeDislikePostBodyFromJson(Map<String, dynamic> json) =>
    LikeDislikePostBody(
      json['postId'] as String,
      json['vote'] as bool,
      VoterDetails.fromJson(json['voterDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LikeDislikePostBodyToJson(
        LikeDislikePostBody instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'vote': instance.vote,
      'voterDetails': instance.voterDetails.toJson(),
    };

VoterDetails _$VoterDetailsFromJson(Map<String, dynamic> json) => VoterDetails(
      json['voterType'] as String,
      json['voterId'] as String,
    );

Map<String, dynamic> _$VoterDetailsToJson(VoterDetails instance) =>
    <String, dynamic>{
      'voterType': instance.voterType,
      'voterId': instance.voterId,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote_sub_comment_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoteSubCommentBody _$VoteSubCommentBodyFromJson(Map<String, dynamic> json) =>
    VoteSubCommentBody(
      json['subCommentId'] as String,
      CommentVoterDetailsBody.fromJson(
          json['voterDetails'] as Map<String, dynamic>),
      json['flag'] as bool,
    );

Map<String, dynamic> _$VoteSubCommentBodyToJson(VoteSubCommentBody instance) =>
    <String, dynamic>{
      'subCommentId': instance.subCommentId,
      'voterDetails': instance.voterDetails.toJson(),
      'flag': instance.flag,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote_comment_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoteCommentBody _$VoteCommentBodyFromJson(Map<String, dynamic> json) =>
    VoteCommentBody(
      json['commentId'] as String,
      CommentVoterDetailsBody.fromJson(
          json['voterDetails'] as Map<String, dynamic>),
      json['flag'] as bool,
    );

Map<String, dynamic> _$VoteCommentBodyToJson(VoteCommentBody instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'voterDetails': instance.voterDetails.toJson(),
      'flag': instance.flag,
    };

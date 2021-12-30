import 'package:json_annotation/json_annotation.dart';

part 'like_dislike_post_body.g.dart';

@JsonSerializable(explicitToJson: true)
class LikeDislikePostBody {
  final String postId;
  final bool vote;
  final VoterDetails voterDetails;

  LikeDislikePostBody(this.postId, this.vote, this.voterDetails);

  factory LikeDislikePostBody.fromJson(Map<String, dynamic> json) =>
      _$LikeDislikePostBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LikeDislikePostBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VoterDetails {
  final String voterType;
  final String voterId;

  VoterDetails(this.voterType, this.voterId);

  factory VoterDetails.fromJson(Map<String, dynamic> json) =>
      _$VoterDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$VoterDetailsToJson(this);
}

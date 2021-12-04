import 'package:json_annotation/json_annotation.dart';

part 'voter_details_body.g.dart';

@JsonSerializable(explicitToJson: true)
class CommentVoterDetailsBody {
  final String voterType;
  final String voterId;

  CommentVoterDetailsBody(this.voterType, this.voterId);

  factory CommentVoterDetailsBody.fromJson(Map<String, dynamic> json) =>
      _$CommentVoterDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CommentVoterDetailsBodyToJson(this);
}

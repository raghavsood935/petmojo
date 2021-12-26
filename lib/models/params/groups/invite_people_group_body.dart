import 'package:json_annotation/json_annotation.dart';

part 'invite_people_group_body.g.dart';

@JsonSerializable(explicitToJson: true)
class InvitePeopleGroupBody {
  final String groupId;
  final String userId;
  final String type;

  InvitePeopleGroupBody(this.groupId, this.userId, this.type);

  factory InvitePeopleGroupBody.fromJson(Map<String, dynamic> json) =>
      _$InvitePeopleGroupBodyFromJson(json);

  Map<String, dynamic> toJson() => _$InvitePeopleGroupBodyToJson(this);
}

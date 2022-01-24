import 'package:json_annotation/json_annotation.dart';

part 'make_admin_group_body.g.dart';

@JsonSerializable(explicitToJson: true)
class MakeGroupAdminBody {
  final String groupId;
  final String userId;
  final String userType;

  MakeGroupAdminBody(this.groupId, this.userId,this.userType);

  factory MakeGroupAdminBody.fromJson(Map<String, dynamic> json) =>
      _$MakeGroupAdminBodyFromJson(json);

  Map<String, dynamic> toJson() => _$MakeGroupAdminBodyToJson(this);
}

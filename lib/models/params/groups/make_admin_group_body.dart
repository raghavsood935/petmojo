import 'package:json_annotation/json_annotation.dart';

part 'make_admin_group_body.g.dart';

@JsonSerializable(explicitToJson: true)
class MakeGroupAdminBody {
  final String groupId;
  final String userId;

  MakeGroupAdminBody(this.groupId, this.userId);

  factory MakeGroupAdminBody.fromJson(Map<String, dynamic> json) =>
      _$MakeGroupAdminBodyFromJson(json);

  Map<String, dynamic> toJson() => _$MakeGroupAdminBodyToJson(this);
}

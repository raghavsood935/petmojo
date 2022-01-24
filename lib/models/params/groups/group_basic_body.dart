import 'package:json_annotation/json_annotation.dart';

part 'group_basic_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GroupBasicBody {
  final String groupId;

  GroupBasicBody(this.groupId);

  factory GroupBasicBody.fromJson(Map<String, dynamic> json) =>
      _$GroupBasicBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GroupBasicBodyToJson(this);
}

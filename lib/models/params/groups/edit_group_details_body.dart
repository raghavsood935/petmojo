import 'package:json_annotation/json_annotation.dart';

part 'edit_group_details_body.g.dart';

@JsonSerializable(explicitToJson: true)
class EditGroupDetailsBody {
  final String groupId;
  final String name;
  final String avatar;
  final String description;
  final List<String> hashtags;

  EditGroupDetailsBody(
      this.groupId, this.name, this.avatar, this.description, this.hashtags);

  factory EditGroupDetailsBody.fromJson(Map<String, dynamic> json) =>
      _$EditGroupDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$EditGroupDetailsBodyToJson(this);
}
